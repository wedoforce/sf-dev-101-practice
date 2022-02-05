# Apex Basics

- **Topics:**
  - [Variables](#variables)
  - [Conditional Statements](#conditional-statements)
  - [Loops](#loops)
- [Best Practices](#best-practices)
- [Cheat Sheet](#cheat-sheet)
- [Practice](#practice)
- [Extra Readings](#extra-readings)
- [Additional Resources](#additional-resources)

---

## Variables

### **Why Variables at all?**

One could say:  
"Every program manipulates with input values taken from somewhere to provide new values as output.  
These output values can become further inputs for another program or finally be used by a human for decision making."

In order to work with the values, programs written in any language are using _variables_ to store those values. Every _variable_ is given a name and you can check values in the _variable_ by accessing it by its name.  
In other words, you won't be able to pass information between different pieces of your programm without _variables_.

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
1. [Additional math calculations](https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_math.htm)
1. [Numeric types conversion](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_rules_of_conversion.htm)

## Conditional Statements

### **Why Conditional Statements?**

Conditional Statements are there to help you control the flow of your programm.
e.g.
if a Stock Price is above some threshold - you would like to apply one algorithm
if below the threshold - another.
Decision for a statement is evaluated based on the _values_ and _operations_ you, as a developer, decide for your program.
What is important, is that the evaluation must resolve to a _value_ of Boolean Type.

#### **Must Read**

1. [if-else statement](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_if_else.htm)

## Loops

### **Why Loops?**

In real life, you will often work with collection of elements (List of Contact from an Account or a Set of currencies supported).  
In order to analyse data in those collections loops are used.  
Inside loop you can have access to an element from the collection. Do calculations on top of it and store results into another variable. Switch to the next element from the colleciton, etc.  
Using special words: _break_ and _continue_ you can either complete the loop immedieatly or switch to the next item immediately.

#### **Must Read**

1. [basic for-loop](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_loops_for.htm)
1. [while-loop](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_loops_while.htm)
1. [for-loop over collection](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_loops_for_lists.htm)

---

## Best Practices

1. Initialize variables, if possible, to avoid program failures due to **null**.
1. Pick Up proper Data Types  
   `Integer studentsCount, not Double studentsCount`
1. Give descriptive names  
   `Integer studentsCount, not Integer count`
1. Use lowerCamelCase for variable names  
   `studentsCount, not StudentsCount/STUDENTScount`

---

## Cheat Sheet

1. Primitve Types: `Boolean, String, Integer, Double` - _keep simple values_
1. Collections: `List, Set, Map` - _keep collection of elements_
1. `[Type] [name] = [value] [;]` - to define a variable, e.g. `String name = 'engineer';`
1. Use math operators: `+,-,*,/` - _for numeric operations_
1. Use `+` - _sign to concatenate strings_
1. Use logical _or, and_ `||, &&` - _for boolean algebra_
1. Use `if-else,if` to control flow of your program
1. Use `for` and `while` loops to iterate over collections or until condition
1. Use `break` and `continue` to control loops immedieatly
1. Use `sfdx force:source:push` to deploy your code to your scratch org
1. Use `sfdx force:apex:test:run -n CollectionsTasksTest -r human` to run tests in your scratch org

---

## Practice

### Pre-requisite

- Knowledge: :heavy_check_mark: No special knowledge required
- Technical: :heavy_exclamation_mark: environment has to be setup
  - Open terminal (Ctrl/Cmd + Shift + P -> Terminal:Create New Termnial)
  - Run [prerequisite.sh](./scripts/prerequisite.sh) script in the terminal to be technically ready
  ```bash
  ./scripts/prerequisite.sh
  ```

### Overview

Begin with the warm-up scripts to play with the concepts(open file, then Ctrl/Cmd + Shift + P > Apex: Execute Anonymous)

1. [variables.apex](./scripts/warmup/1.variables.apex)
1. [math.apex](./scripts/warmup/2.math.apex)
1. [collections.apex](./scripts/warmup/3.collections.apex)
1. [loops.apex](./scripts/warmup/4.loops.apex)

Check program output and try to match what you see in the code vs. output. There are additional questions to think of.

Once you are comfortable with the concept, jump into real tasks located under _force-app/main/default/classes/tasks_ folder

1. :notebook: Create a branch for the lesson and switch to it: lessons/githubusername/apex-basics-101  
   You will be working in your personal branch during the practice.
1. Each \*.cls file contains comments of what is expected during the practice (write code)
1. Do not be afraid - git controls everything, you can always reset your branch to initial state (recall git-101)
1. :notebook: `How to know if I've done the task`
   1. push source to your default scratch org using SFDX CLI once implementation is ready for a single challenge. From Terminal:
      ```bash
      sfdx force:source:push
      ```
   1. run the Task tests against your default scratch org using SFDX CLI. From Terminal(e.g. for BasicTasksTest checks):
      ```bash
      sfdx force:apex:test:run -n BasicTasksTest -r human
      ```
      It is ok a lot of tests will fail in the beginning - your goal is to write the code to make the tests pass.
1. :notebook: `How to troubleshoot`
   1. on source push, salesforce will check compiliation and highlight exact lines to address, e.g.
      ```bash
      === Deploy Errors
      PROJECT PATH                                         ERRORS
      ───────────────────────────────────────────────────  ────────────────────────────────────────
      force-app/main/default/classes/tasks/BasicTasks.cls  Variable does not exist: myResult (26:5)
      ```
      means there is an issue in file BasicTasks.cls on line 26, column 5
   1. on test failure, salesforce will highlight exact issue: expected vs. actual - use test details to check you logic, e.g.
      ```bash
      BasicTasksTest.testSumIntegers         Fail     System.AssertException: Assertion Failed: 3 + 15: Expected: 18, Actual: 0
                                                Class.BasicTasksTest.testSumIntegers: line 11, column
      ```
1. :notebook: Once you are done - raise a PR into the lesson branch: lessons/apex-basics-101.  
   Final validation will be automatically done and you'll see a green check in github if everything is ok.

---

## Extra Readings

- [Enums](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_enums.htm)
- [Constants](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_constants.htm)
- [Switch statement](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_switch.htm)
- [Do-While loop](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_loops_do_while.htm)
- [Mastering Collections in Apex](https://developer.salesforce.com/blogs/2021/10/mastering-apex-collections)
- [Bits, Bytes in machines](https://www.cs.cmu.edu/~ab/15-123S09/lectures/Lecture%2003%20-%20Bits%20Bytes%20and%20Data%20Types.pdf)
  Ignore "C" language specifics and ignore everything after _Writing a Program in C_
- [Byte Units](https://en.wikipedia.org/wiki/Kilobyte)

---

## Additional Resources

- [Strongly Typed and Weakly Typed languages](https://stackoverflow.com/questions/2690544/what-is-the-difference-between-a-strongly-typed-language-and-a-statically-typed#:~:text=Strongly%20typed%20means%2C%20a%20variable,it%20into%20the%20int%20123%20.)
- [Simple about heap(in Russian)](https://qna.habr.com/q/843499)
- [Why Heap?](https://help.salesforce.com/s/articleView?id=000321537&type=1)
