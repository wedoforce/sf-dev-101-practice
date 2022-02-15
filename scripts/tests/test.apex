/** Recall warm-up activities?
 * You can execute your implementation in a similar way.
 * Try your implementation with various parameters to see if it is working fine.
 */

// // sumIntegers task
// Integer a = 3, b = 7, sum = 10;
// System.debug('My Solution Sum: = ' + BasicTasks.sumIntegers(a, b));

// // math calculator task
// Double aD = 3, bD = 7, product = 21;
// System.debug('My product: = ' + BasicTasks.basicMathCalculate(aD, bD, '*'));

// // math power task
// Integer aP = 3, nP = 2, power = 9;
// System.debug('My power: = ' + BasicTasks.mathPower(aP, nP));


// List<Integer> listWithZerosAndUnits = new List<Integer>{1, 1, 0, 0, 0};

// System.debug('Count of 0: = ' + CollectionsTasks.countZerosInBitList(listWithZerosAndUnits));

// List<Integer> elements = new List<Integer>{1, 11, 111, 1111};
// System.debug('Sum can be reached? = ' + CollectionsTasks.sumCanBeReached(112, elements));

// List<Integer> elementsOptimal = new List<Integer>{1, 11, 111, 1111};
// System.debug('Sum can be reached? = ' + CollectionsTasks.sumCanBeReachedOptimal(112, elementsOptimal));

// List<String> codeTicks = new List<String>{'CRM', 'X', 'X', 'X', 'X'};
// List<Integer> priceTicks = new List<Integer>{100, 2,   2,   3,   3};

// System.debug('CRM last price is: = ' + CollectionsTasks.lastPrice('CRM', codeTicks, priceTicks));

Boolean result = CollectionsTasks.sumCanBeReachedOptimal(0, new List<Integer>{12, -3, 10, 1, 0});
System.debug('Should be false. Actual: ' + result);