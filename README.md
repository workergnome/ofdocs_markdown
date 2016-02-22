# ofdocs_markdown
This contains markdown files for each function to be used in the new openFrameworks documentation system.


Questions:

* How do we document the class itself?
  - classname.markdown

* how do we want to handle internal linking?
  - this is a problem for Jonas to answer
  - preference is magic, doxygen-style linking.

* How do we handle images?
  - there should be a giant directory of images. 
  - There should be a naming convention for the images
      `ofColor.getRed.example_image.png`
  - the markdown link should be
      `![Example Image for Get Red](../images/ofColor.getRed.example_image.png)`
* what do we use for codeblocks?
   
    ```cpp
        ofLog() << "this works!";
    ```

README.md files contain grouping-level descriptions?

Descriptions of classes are `ofColor.markdown`
Descriptions of methods are `ofColor.getRed.markdown`
Descriptions of constructors are `ofColor.ofColor.markdown`

We should never have a markdown for a #DEFINE.
We should never have a markdown for a individual enumerated value in an enum.

Templated stuff TBD


FYI, we now have a massive lookup list of c++ operators, which are used to handle naming for those pesky things that are not word characters.

```ruby
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
```