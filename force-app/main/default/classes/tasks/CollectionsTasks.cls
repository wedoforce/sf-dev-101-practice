public class CollectionsTasks {
  // elements in listWithZerosAndUnits can be of 2 values only: 0 or 1
  // implement count number of zeros in the List with a loop
  // e.g. {0, 0, 0, 1} => 3; {1, 1, 0, 0, 1} => 2;
  // *can you implement it without checking the value/without if statement?
  public static Integer countZerosInBitList(
    List<Integer> listWithZerosAndUnits
  ) {
    Integer cnt = 0;
    for (Integer i : listWithZerosAndUnits) {
      /*
      if (i == 0) {
        cnt++;
      }
      */
      cnt = cnt + i;
    }
    cnt = listWithZerosAndUnits.size() - cnt;
    return cnt;
  }

  // check if it is possible to add any 2 elements from the listWithElementsToCheck to get the sum
  // use loops inside loop to iterate over list to get any 2 elements from the list
  // use if/continue to control loop execution
  // return immediately if 2 elements found which add up to the sum
  // e.g. (1, {1, 0, 3, -2}) => true: 1 = 1 + 0 or 1 = 3 + -2; (1000, {1, 3, -2}) => false - not possible to get 1000;
  public static Boolean sumCanBeReached(
    Integer sum,
    List<Integer> listWithElementsToCheck
  ) {
    Boolean result = false;
    for (Integer i = 0; i < listWithElementsToCheck.size(); i++) {
      for (Integer j = 0; j < listWithElementsToCheck.size(); j++) {
        if (
          i <> j &&
          listWithElementsToCheck[i] + listWithElementsToCheck[j] == sum
        ) {
          result = true;
          break;
        }
      }
    }
    return result;
  }

  // use single loop and an arbitrary collection to address same requirements as in sumCanBeReached
  public static Boolean sumCanBeReachedOptimal(
    Integer sum,
    List<Integer> listWithElementsToCheck
  ) {
    Boolean b;
    Boolean bfin;
    listWithElementsToCheck.sort();
    Integer minListMemb = listWithElementsToCheck[0];
    Integer listSize = listWithElementsToCheck.size();
    Integer maxListMemb = listWithElementsToCheck[listSize - 1];
    if (sum > listWithElementsToCheck.size()) {
      for (Integer i = listWithElementsToCheck.size() - 1; i > 0; i--) {
        Integer diff = 0;
        diff = sum - listWithElementsToCheck[i];
        if (maxListMemb + listWithElementsToCheck[i] < sum) {
          return false;
        }
        b = listWithElementsToCheck.contains(diff);
        if (b) {
          //      return b;
          break;
        }
      }
    } else {
      for (Integer i = 0; i < listWithElementsToCheck.size(); i++) {
        Integer diff = 0;
        diff = listWithElementsToCheck[i] - sum;
        if (diff - sum > 0) {
          return false;
        }
        System.debug('diff >= ' + diff);
        b = listWithElementsToCheck.contains(diff);
        if (b) {
          //         return b;
          break;
        }
      }
    }
    return b;
  }

  // over a trading day stock prices change many times. Stock prices are written into 2 list after every price change:
  // Code of the changed stock is added to the 1st list - codeTicks
  // Price of the changed stock is added to the 2nd list - priceTicks
  // e.g. 2 stocks are traded: APPL and CRM and the following events occured in the order:
  // 1) stock - CRM, price - 100
  // 2) CRM, 110
  // 3) APPL, 300
  // 4) CRM, 99
  // 5) CRM, 97
  // 6) CRM, 115
  // 7) APPL, 500
  // 8) APPL, 100
  // Then both lists will be of size 8 and contain the following values:
  // codeTicks: {'CRM', 'CRM', 'APPL', 'CRM', 'CRM', 'CRM', 'APPL', 'APPL' }
  // priceTicks: {100,    110,    300,    99,    97,   115,    500, 100 }
  // We need to get latest price for a stock
  // CRM -> 115
  // APPL -> 100
  public static Integer lastPrice(
    String stock,
    List<String> codeTicks,
    List<Integer> priceTicks
  ) {
    Integer resPriceTick;
    for (Integer i = codeTicks.size() - 1; i >= 0; i--) {
      if (codeTicks[i] == stock) {
        resPriceTick = priceTicks[i];
        //       return resPriceTick;
        break;
      }
    }
    return resPriceTick;
  }
}