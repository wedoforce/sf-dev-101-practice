@isTest
private class BasicTasksTest {
  private final static Integer checkRounds = 100;

  @isTest
  static void testSumIntegers() {
    for (Integer i = 0; i < checkRounds; i++) {
      final Integer x = (checkRounds * Math.random()).intValue() + 1;
      final Integer y = (checkRounds * Math.random()).intValue() + 1;
      final Long result = BasicTasks.sumIntegers(x - y, 2 * y - x);
      System.assertEquals(y, result, (x - y) + ' + ' + (2 * y - x));
    }
    Integer sameInteger = 2147483647;
    System.assertEquals(
      2L * sameInteger,
      BasicTasks.sumIntegers(sameInteger, sameInteger),
      sameInteger +
      ' + ' +
      sameInteger
    );
  }

  @isTest
  static void testBasicMathCalculate() {
    for (Integer i = 0; i < checkRounds; i++) {
      final Double x = checkRounds * Math.random() + 1;
      final Double y = checkRounds * Math.random() + 1;
      System.assertEquals(
        x * y,
        BasicTasks.basicMathCalculate(x, y, '*'),
        x +
        ' * ' +
        y
      );
      System.assertEquals(
        x / y,
        BasicTasks.basicMathCalculate(x, y, '/'),
        x +
        ' / ' +
        y
      );
      System.assertEquals(
        x + y,
        BasicTasks.basicMathCalculate(x, y, '+'),
        x +
        ' + ' +
        y
      );
      System.assertEquals(
        x - y,
        BasicTasks.basicMathCalculate(x, y, '-'),
        x +
        ' - ' +
        y
      );
    }
  }

  @isTest
  static void testMathPow() {
    for (Integer i = 0; i < checkRounds; i++) {
      final Integer x = (checkRounds * Math.random()).intValue() + 1;
      final Integer y = (checkRounds * Math.random()).intValue() + 1;
      System.assertEquals(
        Math.pow(x, y),
        BasicTasks.mathPower(x, y),
        x +
        ' ^ ' +
        y
      );
      System.assertEquals(
        Math.pow(x, 0),
        BasicTasks.mathPower(x, 0),
        x + ' ^ 0'
      );
    }
  }
}
