OF_DOC_DIRECTORY = '/Users/david/Documents/opensource/docsprint/ofSite/documentation'
OF_MARKDOWN_FILE = 'types/ofColor_.markdown'
TARGET_DIRECTORY = './ofColor'
FILE_PREFIX = 'ofColor'
FILE_EXTENSION = '.md'

REGEX = /\s*?_syntax:\s+(\w+)\(/

in_description_block = false
content_detected = false

@current_file = nil
@content = []

def write_line(line)
  text = line
  text.gsub!('~~~~{.cpp}', '```cpp')
  text.gsub!("~~~~","```")

  if text.include? "!["
    puts "Image found in #{@current_file}.\n...please fix #{text}\n"
  end

  @content << text
end

def write_file(file_name)
  unless File.exists? file_name
    
    # clean up front
    found_content = false
    while !found_content && !@content.empty? do
      val = @content.shift
      unless val.strip.empty?
        @content.unshift(val)
        found_content = true
      end
    end

    # clean up back
    found_content = false
    while !found_content && !@content.empty? do
      val = @content.pop
      unless val.strip.empty?
        @content.push(val)
        found_content = true
      end
    end

    return if @content.empty?

    # puts "Creating #{file_name}"
    File.open(file_name, "w") {|f| f.puts @content.join("")}
  end
  @content = []
end


looking_for_class_description = true
completed_class_description = false

File.foreach("#{OF_DOC_DIRECTORY}/#{OF_MARKDOWN_FILE}") do |line|

  # Look for the class descriptiong
  if looking_for_class_description || !completed_class_description
    if line.include? "##Description" 
      looking_for_class_description = false
      @current_file = "Main Class"
    elsif line.include? "##Methods"
      completed_class_description = true
      file_name = "#{TARGET_DIRECTORY}/#{FILE_PREFIX}#{FILE_EXTENSION}"
      write_file(file_name)
      @current_file = nil
    elsif looking_for_class_description == false && completed_class_description == false
      write_line(line)
    else
      next
    end
  end

  # Keep going until a the beginning of a block is found
  next unless results = REGEX.match(line) || @current_file

  if (not @current_file)
    function_name = results[1].to_s 
    function_name = function_name[0...-1] if function_name[-1] == "_"

    file_name = "#{TARGET_DIRECTORY}/#{FILE_PREFIX}.#{function_name}#{FILE_EXTENSION}"
    @current_file = file_name
    in_description_block = false
    next

  elsif (not in_description_block)
    in_description_block = /\s*?^_description/.match(line)
    content_detected = false
    next

  elsif (line.include? "<!----------------------------------------------------------------------------->")
    write_file(@current_file)
    @current_file = nil

    content_detected = false
    in_description_block = false
  elsif (in_description_block && !content_detected)
    next if line.strip.empty?
    content_detected = true
  end  

  if (in_description_block)
    write_line(line)
  end
end