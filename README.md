# ofdocs_markdown
This contains markdown files for each function to be used in the new openFrameworks documentation system.

This is an experimental work in progress, and is not currently the Approved OpenFrameworks way to do things.

## Questions:

* How do we document the class itself?
    - `ofColor.md`
* How do we document functions and variables?
    - `ofColor.getRed.md`
* How do we document constructors?
    - `ofColor.ofColor.md`
* How do we document destructors?
    - **TBD**. Currently, we're doing `ofColor.~ofColor.md`, but that's not a good idea.
* How do we handle #DEFINES?
    - We should never have a markdown for a #DEFINE.
* How do we handle enums?
    - **TBD.**
    - We should never have a markdown for a individual enumerated value in an enum.
* How do we handle nested classes?  (`ofPath::Command`) and the like?
    - **TBD.**
* How do we handle templates?
    - **TBD**, Chris Baker is looking into the doxygen solution.
* How do we handle operator overloading?
    - See the lookup list below.
* How do we want to handle internal linking?
    - **TBD**. This is a problem for Jonas to answer
    - preference is magic, doxygen-style linking.
* How do we handle images?
    - There is a single directory of images, called, logically enough, `images`. 
* How do we name images?
    - `ofColor.getRed.example_image.png`
    - the markdown link should be `![Example Image for Get Red](../images/ofColor.getRed.example_image.png)`
    - The last part of that is user-defined, but we've been using `something.something.example.png` as a convention.
* What do we use for codeblocks?
   
    ```cpp
        ofLog() << "this works!";
    ```
* What is the role of the "README.md" files?
    - **TBD**.  How do they related to the doxygen sections?
    - do README.md files contain grouping-level descriptions?
    - should we have a meta-category for groupings?
* Can we actually get away with folder-independence?
    - **TBD**. 
* Can we build in internationalization support for the documentation with this?

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
