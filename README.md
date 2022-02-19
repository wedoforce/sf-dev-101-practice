# Apex Basics. Static methods

- **Topics:**
    - [Topic 1](#topic-1)
    - [Topic 2](#topic-2)
    - [..](...)
- [Best Practices](#best-practices)
- [Cheat Sheet](#cheat-sheet)
- [Practice](#practice)
- [Extra Readings](#extra-readings)
- [Additional Resources](#additional-resources)

---

## Static variables, methods and blocks

### **Why Static at all?**

:notebook: `Usually learning programming starts from procedure programming. Static is one of basic things that you need to learn before OOP. By "static" we mean type of variables and methods. Static will help you to structure your code logic without OOP knowledge on current stage`

### **[Static Methods] in Salesforce**

:notebook: `What is the program in wide meaning? It is a list of "commands" that will be executed one by one in some logic. This is a procedure approach in programming. The static keyword means that variable or method marked as a static will be accessible on class load. This topic will be overviewed in the next OOP lesson. For now all we need to know that we have a class and it is like a container for our code. We can separate logic inside a class by using methods. Methods are the basic Big building blocks of programs. Methods are often called sub-Programs or procedures.`

`Why do we need to separate logic? By separating logic to methods we can increase reusability of logic and code more clean and readable. Also if you need to make changes in logic that uses in a several places you need to change it ones.`

`Let's take as example one of the tasks from the previous lessons. `

https://github.com/wedoforce/sf-dev-101/blob/lessons/apex-basics-101/force-app/main/default/classes/tasks/BasicTasks.cls

`Here we need to implement basic calculator that works with Integer type. This could be implemented by using if/else statement or switch case. For example`

    if (operator == '+') {
      result = a + b;
    }

    if (operator == '/') {
      result = a / b;
    }

    if (operator == '*') {
      result = a * b;
    }

    if (operator == '-') {
      result = a - b;
    }

    return result;

`But we already implemented method sumIntegers()`

    public static Long sumIntegers(Integer a, Integer b) {
        Long sum = 0;

        sum = (Long) a + (Long) b;

        return sum;
    }

`So we can reuse this method to avoid writing duplicate code`

    if (operator == '+') {
      result = sumIntegers(a, b);
    }

    if (operator == '/') {
      result = a / b;
    }

    if (operator == '*') {
      result = a * b;
    }

    if (operator == '-') {
      result = a - b;
    }

    return result;

`All we need to do is move this logic to a method, make it returnable and mark as a static. To do use "static" keyword in method declaration, write type of return value and declare arguments:`

public static Integer sumIntegers(Integer a, Integer b)

`Where "static" means that you can access this method without creating an instance of current class(will be explained in OOP lesson). "Long" - type of return value. "Integer a, Integer b" type of data that you can pass to proceed.`

`Method could be "void" type that means that this method doesn't return a value. In some cases we don't need any return value. All you already now "System.debug()" that displays information in debug log. debug is a void method of class System. For example you want to separate output of your code by long "---------" string and to avoid typing each time System.debug('---------') you can write your own void method:`

    public static void displayLine()
    {
        System.debug('---------');
    }

`And call it whenever you need. To call a method inside a class you just need to write:`
      
    displayLine();

`If method should return some value and you want to us it you need to declare variable with suitable Type.`

    Integer resultOfSum = sumIntegers(5, 8);

`You can build a chain of method calls so one method could call another one and so on. Also  you can return value without saving an intermediate result in separate variable. Instead of: `

    public static Long sumIntegers(Integer a, Integer b) {
        Long sum = 0;

        sum = (Long) a + (Long) b;

        return sum;
    }

`You can write:`

    public static Long sumIntegers(Integer a, Integer b) {
        return (Long) a + (Long) b;
    }

## **[Static Variables] in Salesforce**
`As methods variables also could be a Static. You will need this in case you need to have access to on variables in a few methods or out from a class. To declase variable as a Static you need to declare it out of method in the beginning of the class:`

    public class BasicTasks {
        public static String clientEmail = 'ex@mple.com';

        public static void sendEmailNotificationToClient(String email, String emailBody){
            ....
        }
    }

`You can work with this variable as usual variable inside any method in the class. Usually static variables uses in cases when you need to save some constants or you need to have access to some variable in all methods and to avoid passing variable as param you can access and modify this variable from anywhere in the class. To access static variable from another class it should marked as public (same for methods from another classes) and it could be called by usin class name dot variable name`

    ClassName.variableName;


...
#### **[Static Methods, Variables] Must Read**

:notebook: `to get enough theoretical knowledge`

1. [Static and Instance Methods, Variables, and Initialization Code](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_static.htm)


# Best Practices

1. [Salesforce Naming Convention](https://quip.com/MW5cAPVwat8k#JCIACA8Q963)

## Cheat Sheet

:notebook: `I want to have a cheat sheet/data sheet at the end to get back to it anytime`

1. `method declaration: public static [void/return value type] methodName(arguments): `

        public static Id getCurrentUserId() {
          return UserInfo.getUserId();
        }

    `for void type:`

        public static void incrementValues(List<Integer> integersToIncrement) {
            for(Integer element : integersToIncrement) {
                element++;
            }
        }

---

## Practice

### Pre-requisite

:notebook: `I need to understand pre-requisites if it makes sense to jump into practice`

- Knowledge
  ...
- Technical
  - Open terminal (Ctrl/Cmd + Shift + P -> Terminal:Create New Termnial)
  - Run [prerequisite.sh](./scripts/prerequisite.sh) script in the terminal to be technically ready
  ```bash
  ./scripts/prerequisite.sh
  ```

### Overview

1. :notebook: `Where are practice tasks`
1. :notebook: `How to know if I've done the task`
1. :notebook: `How to troubleshoot`

---

# Extra Readings

:notebook: `Sometimes, I did understand everything, but I want to learn more about it - I need extra materials`

- [Extra Reading 1](extrareading1)
- [...](...)

# Additional Resources

:notebook: `To broaden my knowledge`

- [Additional Resource 1](addittionalresource1)
- [...](...)
