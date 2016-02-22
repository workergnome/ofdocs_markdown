require 'fileutils'

# Constants that drive what is processed
OF_DOC_DIRECTORY = '/Users/david/Documents/opensource/docsprint/ofSite/documentation'
OF_MARKDOWN_FILE = 'video/ofVideoSavedEventArgs.markdown'
TARGET_DIRECTORY = './video'
CLASS_NAME = 'ofVideoSavedEventArgs'

LOOKUP_TABLE = [
  ["<<",  "cpp_left_shift"],
  [">>",  "cpp_right_shift"],
  ["&&",  "cpp_logical_and"],
  ["||",  "cpp_logical_or"],
  ["[]",  "cpp_subscript"],
  ["()",  "cpp_functional_form"],
  ["++",  "cpp_postfix_increment"],
  ["--",  "cpp_postfix_decrement"],
  ["->",  "cpp_member_access"],
  ["&",   "cpp_bitwise_and"], 
  ["^",   "cpp_bitwise_xor"],
  ["|",   "cpp_bitwise_or"], 
  ["=",   "cpp_assignment"],
  ["*=",  "cpp_multiplicative_assignment"],
  ["/=",  "cpp_division_assignment"],
  ["+=",  "cpp_additive_assignment"],
  ["-=",  "cpp_subtractive_assignment"],
  [">>=", "cpp_right_shift_assignment"],
  ["<<=", "cpp_left_shift_assignment"],
  ["&=",  "cpp_bitwise_and_assignment"],
  ["^=",  "cpp_bitwise_xor_assignment"],
  ["|=",  "cpp_bitwise_or_assignment"],
  ["?:",  "cpp_conditional_assignment"],
  ["==",  "cpp_equality"],
  ["!=",  "cpp_not_equality"],
  ["*",   "cpp_multiplication"],
  ["+",   "cpp_addition"],
  ["-",   "cpp_subtraction"],
  ["/",   "cpp_division"],
  ["~",   "cpp_bitwise_not"],
  ["!",   "cpp_logical_not"],
  [".",   "cpp_member_access"],
  ["%",   "cpp_modulo"],
  [">",   "cpp_greater_than"],
  ["<",   "cpp_less_than"],
  ["<=",  "cpp_less_or_equal_than"],
  ["<=",  "cpp_greater_or_equal_than"],
  [",",   "cpp_sequencing"]
]


# Magic Words
CONTENT_NAME_REGEX = /\s*?_name:\s+(?:operator)?(.+)_/
DESCRIPTION_REGEX = /\s*?^_description/
COMMENT_LINE = "<!----------------------------------------------------------------------------->"
DESCRIPTION =  "##Description"
METHODS = "##Methods"
FILE_EXTENSION = '.md'


# Generate the directory structure
FileUtils.mkdir_p TARGET_DIRECTORY


# function to add a line to the buffer to be written.
def write_line(line)
  text = line
  text.gsub!('~~~~{.cpp}', '```cpp')
  text.gsub!("~~~~","```")

  if text.include? "!["
    puts "Image found in #{@current_content_block}.\n...please fix #{text}\n"
  end

  @content << text
end

# function to write a file to disk
def write_file(file_name)
  path = "#{TARGET_DIRECTORY}/#{file_name}#{FILE_EXTENSION}"
  unless File.exists? path
    
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

    puts "Creating #{file_name}"
    File.open(path, "w") {|f| f.puts @content.join("")}
  end
  @content = []
end



# Set up variables
@current_content_block = nil
@content = []
in_description_block = false
looking_for_class_description = true
completed_class_description = false


# Iterate through each line
File.foreach("#{OF_DOC_DIRECTORY}/#{OF_MARKDOWN_FILE}") do |line|

  # Look for the class description
  if looking_for_class_description || (not completed_class_description)
    
    # if you find the description block, stop looking
    if line.include? DESCRIPTION
      looking_for_class_description = false
      @current_content_block = "Main Class"  # only set for debugging and image output
      next

    #  If you find the end of the description block, move on
    elsif line.include?(METHODS) || line.include?(COMMENT_LINE)
      completed_class_description = true
      write_file(CLASS_NAME)
      @current_content_block = nil
      next
    # if you're in the middle of the description block, save the line.
    elsif not looking_for_class_description and not completed_class_description
      write_line(line)
      next
    # Otherwise, keep going.
    else
      next
    end
  end

  # ---- Getting this far means you've found the description block. ----

  # Keep going until a the beginning of a block is found,
  # or you're actively saving a 
  next unless (results = CONTENT_NAME_REGEX.match(line)) || @current_content_block

  # Congrats, you've found a new content block
  if @current_content_block.nil?

    # process the content name.
    content_name = results[1].to_s 
    content_name = content_name[0...-1] if content_name[-1] == "_"
    LOOKUP_TABLE.each do |operator|
      content_name = operator[1] if content_name == operator[0]
    end

    #puts content_name
    if CLASS_NAME.empty?
      file_name = content_name
    else
      file_name = "#{CLASS_NAME}.#{content_name}"
    end
    @current_content_block = file_name
    in_description_block = false
    next

  # search for the description block
  elsif (not in_description_block)
    in_description_block = DESCRIPTION_REGEX.match(line)
    next

  # If you've found the end of the description block,
  # save it to disk.
  elsif (line.include? COMMENT_LINE)
    write_file(@current_content_block)
    @current_content_block = nil
    in_description_block = false

  # if you're in the content block, save the line
  elsif (in_description_block)
    write_line(line)
  end
end