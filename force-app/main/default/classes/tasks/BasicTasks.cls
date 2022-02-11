/**
 * Created by squar on 08.02.2022.
 */

public with sharing class BasicTasks {
  // Implement sum 2 Integers calculator, e.g. a = 3, b = 5; then result should be 8
  public static Long sumIntegers(Integer a, Integer b) {
    // ignore public static.. Focus on variables
    //write your code below this line
    Long a1 = a;
    Long b1 = b;
    Long sum = (a1 + b1);
    return sum;
    //write your code above this line
  }

  // Implement complex calculator, e.g. a = 3.5, b = 2, operator = '*'; then result should be 7
  // a, b: any double; possible operator values are: '+', '-', '*', '/'
  public static Double basicMathCalculate(Double a, Double b, String operator) {
    //write your code below this line
    Double result = 0;

    switch on operator {
      when '+' {
        result = a + b;
      }
      when '-' {
        result = a - b;
      }
      when '*' {
        result = a * b;
      }
      when '/' {
        if (b <> 0) {
          result = a / b;
        }
      }
      when else {
        System.debug('operator out of task');
      }
    }

    return result;
    //write your code above this line
  }

  // Implement power math operator using while loop, e.g. a = 5, n = 2; then result should be 25
  // a: any integer; n: n >= 0 (n can be greater or equal to 0)
  public static Decimal mathPower(Integer a, Integer n) {
    //write your code below this line
    Decimal result = 0;
    result = 1;
    while (n > 0) {
      result *= a;
      n--;
    }
    return result;
    //write your code above this line
  }
}
