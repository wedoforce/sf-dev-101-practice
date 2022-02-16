public class BasicTasks {
  public static Long sumIntegers(Integer a, Integer b) {
    Long sum = 0;

    sum = (Long) a + (Long) b;

    return sum;
  }

  public static Double basicMathCalculate(Double a, Double b, String operator) {
    Double result = 0;

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
  }

  public static Decimal mathPower(Integer a, Integer n) {
    Decimal result = 1;

    for (Integer i = 0; i < n; i++) {
      result *= a;
    }

    return result;
  }
}