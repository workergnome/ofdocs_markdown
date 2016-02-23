# ofdocs_markdown
This contains markdown files for each function to be used in the new openFrameworks documentation system.

This is an experimental work in progress, and is not currently the Approved OpenFrameworks way to do things.

## Thoughts

- We're looking for ways to decrease coupling between the three projects:
  * Openframeworks Core code
  * ofSite
  * docs.openframeworks.cc

They're obviously connected and dependent, but they don't have to be completely related.
What is the minimum api between them, and how do we make that rigorous?  
We should have a single source of truth; things should only be defined in one place


## Frequently Asked Questions:

* How do we document the class itself?
    - `ofColor.md`

* How do we document functions and variables?
    - `ofColor.getRed.md`

* How do we document constructors?
    - `ofColor.ofColor.md`

* How do we document destructors?
    - DO NOT DOCUMENT DESTRUCTORS IN MARKDOWN.

* How do we handle #DEFINES?
    - We should never have a markdown for a #DEFINE.

* How do we handle enums?
    - **TBD.**
    - We should never have a markdown for a individual enumerated value in an enum.

* How do we handle nested classes?  (`ofPath::Command`) and the like?
    - These are internal only, and if they should be exposed we have a design problem and should talk about it.

* How do we handle templates?
    - **TBD**, Chris Baker is looking into the doxygen solution.

* How do we handle operator overloading?
    - See the lookup list below.

* How do we want to handle magic internal linking?
    - **TBD**. This is a problem for Jonas to answer
    - preference is magic, doxygen-style linking.

* How do we handle images?
    - How do we handle high-level descriptions for sections
    - Linter will check for consistency
    - Images are not linked to multiple pages—if you'd like to reuse an image, make a copy of it.

* How do we name images?
    - `ofColor.getRed.example_image.png`
    - the markdown link should be `![Example Image for Get Red](ofColor.getRed.example_image.png)`
    - The last part of that is user-defined, but we've been using `something.something.example.png` as a convention.

* What do we use for codeblocks?
    - Github flavored markdown
    - <pre>
        ```cpp
            ofLog() << "this works!";
        ```
      </pre>

* How do we handle high-level descriptions for sections
    - There will be a magic folder (`_section_headings/`)
    - Inside these folders there will be a markdown file for each top-level section.
    - Think of this as a separate API than the rest of the directory structure.

* Can we actually get away with folder-independence?
    - The website ignores the entire heiarchy of this site and treats it as a flat structure.
    - The folders are a convenience, and the linter will check for best practices

* Can we build in internationalization support for the documentation with this?
    - markdown files with suffixes will be parsed.
        - `ofColor.red.md` is English
        - `ofColor.red.jp.md` is Japanese
    - The internationalized versions cascade (or falls back) to English.
        - If a .jp version does not exist, the .jp site shows the English version
    - There is no Doxygen internationalization

* How do we prevent duplicated content?
    - Linter for duplicated content/missing content
    
## Outstanding Problems


## Lookup List for operators

FYI, we now have a massive lookup list of c++ operators, which are used to handle naming for those pesky things that are not word characters.


|Operator| Function Name in Filename    |
|-------:|:------------------------------|
|  `<<`  | cpp_left_shift                |
|  `>>`  | cpp_right_shift               |
|  `&&`  | cpp_logical_and               |
|  `||`  | cpp_logical_or                |
|  `[]`  | cpp_subscript                 |
|  `()`  | cpp_functional_form           |
|  `++`  | cpp_postfix_increment         |
|  `--`  | cpp_postfix_decrement         |
|  `->`  | cpp_member_access             |
|  `&`   | cpp_bitwise_and               | 
|  `^`   | cpp_bitwise_xor               |
|  `|`   | cpp_bitwise_or                | 
|  `=`   | cpp_assignment                |
|  `*=`  | cpp_multiplicative_assignment |
|  `/=`  | cpp_division_assignment       |
|  `+=`  | cpp_additive_assignment       |
|  `-=`  | cpp_subtractive_assignment    |
|  `%=`  | cpp_modulo_assignment         |
|  `>>=` | cpp_right_shift_assignment    |
|  `<<=` | cpp_left_shift_assignment     |
|  `&=`  | cpp_bitwise_and_assignment    |
|  `^=`  | cpp_bitwise_xor_assignment    |
|  `|=`  | cpp_bitwise_or_assignment     |
|  `?:`  | cpp_conditional_assignment    |
|  `==`  | cpp_equality                  |
|  `!=`  | cpp_not_equality              |
|  `*`   | cpp_multiplication            |
|  `+`   | cpp_addition                  |
|  `-`   | cpp_subtraction               |
|  `/`   | cpp_division                  |
|  `~`   | cpp_bitwise_not               |
|  `!`   | cpp_logical_not               |
|  `.`   | cpp_member_access             |
|  `%`   | cpp_modulo                    |
|  `>`   | cpp_greater_than              |
|  `<`   | cpp_less_than                 |
|  `<=`  | cpp_less_or_equal_than        |
|  `>=`  | cpp_greater_or_equal_than     |
|  `,`   | cpp_sequencing                |
