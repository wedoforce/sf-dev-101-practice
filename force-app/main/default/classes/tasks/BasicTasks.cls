public class BasicTasks {
  // Implement sum 2 Integers calculator, e.g. a = 3, b = 5; then result should be 8
  public static Long sumIntegers(Integer a, Integer b) {
    // ignore public static.. Focus on variables
    //write your code below this line
    Long sum = a + b;

    return sum;
    //write your code above this line
  }

  // Implement complex calculator, e.g. a = 3.5, b = 2, operator = '*'; then result should be 7
  // a, b: any double; possible operator values are: '+', '-', '*', '/'
  public static Double basicMathCalculate(Double a, Double b, String operator) {
    //write your code below this line
    Double result = 0;
    if ((operator == '+')) {
      result = a + b;
    } else if ((operator == '-')) {
      result = a - b;
    } else if ((operator == '*')) {
      result = a * b;
    } else if ((operator == '/') && (b != 0)) {
      result = a / b;
    }

    return result;
    //write your code above this line
  }

  // Implement power math operator using while loop, e.g. a = 5, n = 2; then result should be 25
  // a: any integer; n: n >= 0 (n can be greater or equal to 0)
  public static Decimal mathPower(Integer a, Integer n) {
    //write your code below this line
    Decimal result = 0;
    Decimal c = 0;
    Decimal d = 1;
    if (n == 0) {
      c = 1;
    } else {
      Integer count = 1;
      while (count <= n) {
        count++;
        c = d * a;
        d = c;
      }
    }
    result = c;
    return result;
    //write your code above this line
  }
}
