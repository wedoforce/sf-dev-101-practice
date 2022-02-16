@isTest
private class CollectionsTasksTest {
  @isTest
  static void testCountZeros() {
    final List<Integer> listWithZerosAndUnits = new List<Integer>{
      0,
      0,
      1,
      1,
      0
    };

    System.assertEquals(
      3,
      CollectionsTasks.countZerosInBitList(listWithZerosAndUnits)
    );
  }

  @isTest
  static void testAnyTwoElementsCanAddUpToSum() {
    final List<Integer> listWithElementsToCheck = new List<Integer>{
      12,
      -3,
      10,
      1,
      0
    };

    System.assert(
      CollectionsTasks.sumCanBeReached(9, listWithElementsToCheck),
      '12 + -3 = 9; ' + listWithElementsToCheck
    );
    System.assert(
      !CollectionsTasks.sumCanBeReached(0, listWithElementsToCheck),
      'no 2 elements can add up to 0: ' + listWithElementsToCheck
    );
    System.assert(
      CollectionsTasks.sumCanBeReached(-3, listWithElementsToCheck),
      '-3 + 0 = -3; ' + listWithElementsToCheck
    );
  }

  @isTest
  static void testAnyTwoElementsCanAddUpToSumWithoutHittingCPULimit() {
    final Integer listSize = 100000;
    final List<Integer> elements = new List<Integer>();
    for (Integer i = 0; i < listSize; i++) {
      elements.add(i);
    }

    System.assert(
      CollectionsTasks.sumCanBeReachedOptimal(2 * listSize - 3, elements)
    );
    System.assert(CollectionsTasks.sumCanBeReachedOptimal(31, elements));

    final Integer aIndex = (Math.random() * listSize).intValue();
    final Integer bIndex = (Math.random() * listSize).intValue();
    final Integer sum = elements[aIndex] + elements[bIndex];
    System.assert(
      CollectionsTasks.sumCanBeReachedOptimal(sum, elements),
      sum +
      ' = ' +
      elements[aIndex] +
      ' + ' +
      elements[bIndex]
    );
    System.assert(
      !CollectionsTasks.sumCanBeReachedOptimal(2 * listSize - 1, elements)
    );

    final List<Integer> listWithElementsToCheck = new List<Integer>{
      12,
      -3,
      10,
      1,
      0
    };

    System.assert(
      CollectionsTasks.sumCanBeReachedOptimal(9, listWithElementsToCheck),
      '12 + -3 = 9; ' + listWithElementsToCheck
    );
    System.assert(
      !CollectionsTasks.sumCanBeReachedOptimal(0, listWithElementsToCheck),
      'no 2 elements can add up to 0: ' + listWithElementsToCheck
    );
    System.assert(
      CollectionsTasks.sumCanBeReachedOptimal(-3, listWithElementsToCheck),
      '-3 + 0 = -3; ' + listWithElementsToCheck
    );
    System.assert(
      !CollectionsTasks.sumCanBeReachedOptimal(0, new List<Integer>{ 0, 1 }),
      'no 2 elements can add up to 0: ' + listWithElementsToCheck
    );
    System.assert(
      !CollectionsTasks.sumCanBeReachedOptimal(1, new List<Integer>{ 1 }),
      'no 2 elements can add up to 1: ' + listWithElementsToCheck
    );
  }

  @isTest
  static void testLatestStocksPrices() {
    final List<String> codeTicks = new List<String>{
      'APPL',
      'APPL',
      'MSFT',
      'MSFT',
      'GOOGL',
      'APPL'
    };
    final List<Integer> priceTicks = new List<Integer>{
      100,
      101,
      50,
      49,
      10,
      100
    };

    System.assertEquals(
      100,
      CollectionsTasks.lastPrice('APPL', codeTicks, priceTicks)
    );
    System.assertEquals(
      49,
      CollectionsTasks.lastPrice('MSFT', codeTicks, priceTicks)
    );
    System.assertEquals(
      10,
      CollectionsTasks.lastPrice('GOOGL', codeTicks, priceTicks)
    );
  }

  @isTest
  static void testLatestStocksPricesBigCollection() {
    final List<String> uniqueCodeTicks = new List<String>{
      'APPL',
      'MSFT',
      'CRM'
    };
    final Integer numberOfEntries = 10000;
    final List<String> stockCodes = new List<String>();
    final List<Integer> priceTicks = new List<Integer>();
    Integer appleLastPrice = 0;
    Integer microsoftLastPrice = 0;
    Integer salesforceLastPrice = 0;
    for (Integer i = 0; i < numberOfEntries; i++) {
      Integer stockIndex = (Math.random() * uniqueCodeTicks.size()).intValue();
      Integer price = (Math.random() * numberOfEntries).intValue();
      String stock = uniqueCodeTicks.get(stockIndex);
      stockCodes.add(stock);
      priceTicks.add(price);
      switch on stock {
        when 'APPL' {
          appleLastPrice = price;
        }
        when 'MSFT' {
          microsoftLastPrice = price;
        }
        when 'CRM' {
          salesforceLastPrice = price;
        }
      }
    }

    System.assertEquals(
      appleLastPrice,
      CollectionsTasks.lastPrice('APPL', stockCodes, priceTicks)
    );
    System.assertEquals(
      microsoftLastPrice,
      CollectionsTasks.lastPrice('MSFT', stockCodes, priceTicks)
    );
    System.assertEquals(
      salesforceLastPrice,
      CollectionsTasks.lastPrice('CRM', stockCodes, priceTicks)
    );
  }
}
