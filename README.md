# Apex Basics
* **Topics:**
    * [Variables](variables)
    * [Statements](statements)
    * [Loops](loops)
* [Best Practices](bestpractices)
* [Cheat Sheet](cheatsheet)
* [Extra Readings](extrareadings)
* [Additional Resources](additionalresources)

***
## Variables
### **Why Variables at all?**
One could say:  
"Every program manipulates with input values taken from somewhere to provide new values as output.  
These output values can become further inputs for another program or finally be used by a human for decision making."  
  
In order to work with the values, programs written in any language are using *variables* to store those values. Every *variable* is given a name and you can check values in the *variable* by accessing it by its name.  
In other words, you won't be able to pass and information between different pieces of your programm without *variables*.  

### **Variables in Salesforce (Apex)**
#### **Must Read**
1. [Primitive Types](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_primitives.htm)
    1. [Boolean](https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_boolean.htm)
    1. [Integer](https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_integer.htm#apex_methods_system_integer)
    1. [Double](https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_double.htm)
    1. [String](https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm#apex_methods_system_string)
1. [Collections](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_collections.htm)
    1. [List](https://developer.salesforce.com/docs/atlas.en-us.236.0.apexref.meta/apexref/apex_methods_system_list.htm)
    1. [Set](https://developer.salesforce.com/docs/atlas.en-us.236.0.apexref.meta/apexref/apex_methods_system_set.htm)
    1. [Map](https://developer.salesforce.com/docs/atlas.en-us.236.0.apexref.meta/apexref/apex_methods_system_map.htm)
1. [Variable Definition](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_variables.htm)
1. **Operators**
    1. [Operations with variables](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_expressions_operators_understanding.htm)
    1. [Operations precedence](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_expressions_operators_precedence.htm)
1. [Numeric types conversion](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_rules_of_conversion.htm)

## Statements

### **Why Statements?**
Statements are there to help you control the flow of your programm.  
e.g.  
if a Stock Price is above some threshold - you would like to apply one algorithm  
if below the threshold - another.  
Decision for a statement is evaluated based on the *values* and *operations* you, as a developer, decide for your program.  
What is important, is that the evaluation must resolve to a *value* of Boolean Type.
#### **Must Read**
1. [if-else statement](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_if_else.htm)

## Loops

### **Why Loops?**
In real life, you will often work with collection of elements (List of Contact from an Account or a Set of currencies supported).  
In order to analyse data in those collections loops are used.  
Inside loop you can have access to an element from the collection. Do calculations on top of it and store results into another variable. Switch to the next element from the colleciton, etc.  
Using special words: *break* and *continue* you can either complete the loop immedieatly or switch to the next item immediately.

#### **Must Read**
1. [basic for-loop](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_loops_for.htm)
1. [while-loop](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_loops_while.htm)
1. [for-loop over collection](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_loops_for_lists.htm)

***

# Best Practices
1. Initialize variables, if possible, to avoid program failures due to **null**. 
1. Pick Up proper Data Types  
`Integer studentsCount, not Dobule studentsCount`
1. Give descriptive names  
`Integer studentsCount, not Integer count`
1. Use lowerCcamelCase for variable names  
`studentsCount, not StudentsCount/STUDENTScount`

## Cheat Sheet
1. Primitve Types: `Boolean, String, Integer, Double` - *keep simple values*
1. Collections: `List, Set, Map` - *keep collection of elements*
1. `[Type] [name] = [value] [;]` - to define a variable, e.g. `String name = 'engineer';`
1. Use math operators: `+,-,*,/` - *for numeric operations*
1. Use `+` - *sign to concatenate strings*
1. Use logical *or, and* `||, &&` - *for boolean algebra*
1. Use `if-else,if` to control flow of your program
1. Use `for` and `while` loops to iterate over collections or until condition
1. Use `break` and `continue` to control loops immedieatly

***

# Extra Readings
* [Enums](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_enums.htm)
* [Constants](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_constants.htm)
* [Switch statement](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_switch.htm)
* [Do-While loop](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_loops_do_while.htm)
* [Mastering Collections in Apex](https://developer.salesforce.com/blogs/2021/10/mastering-apex-collections)

# Additional Resources
* [Strongly Typed and Weakly Typed languages](https://stackoverflow.com/questions/2690544/what-is-the-difference-between-a-strongly-typed-language-and-a-statically-typed#:~:text=Strongly%20typed%20means%2C%20a%20variable,it%20into%20the%20int%20123%20.)


TODO: Introduce Heap Limit