OF_DOC_DIRECTORY = '/Users/david/Documents/opensource/docsprint/ofSite/documentation'
OF_MARKDOWN_FILE = 'types/ofColor_.markdown'
TARGET_DIRECTORY = './ofColor'
FILE_PREFIX = 'ofColor'

REGEX = /\s*?_syntax:\s+(\w+)\(/

current_file = nil
in_description_block = false

File.foreach("#{OF_DOC_DIRECTORY}/#{OF_MARKDOWN_FILE}") do |line|
  next unless results = REGEX.match(line) || current_file
  
  if (not current_file)
    function_name = results[1].to_s 
    function_name = function_name[0...-1] if function_name[-1] == "_"

    file_name = "#{TARGET_DIRECTORY}/#{FILE_PREFIX}.#{function_name}.markdown"
    next if File.exists? file_name

    puts "Creating #{file_name}"
    current_file = File.new(file_name, "w")
    in_description_block = false
    next
  elsif (not in_description_block)
    in_description_block = /\s*?^_description/.match(line)
  elsif (line.include? "<!----------------------------------------------------------------------------->")
    current_file.close
    current_file = nil
    in_description_block = false
  elsif (in_description_block)
    text = line
    text.gsub!('~~~~{.cpp}', '```cpp')
    text.gsub!("~~~~","```")
    current_file.puts line #unless line.strip == ""
  end
end