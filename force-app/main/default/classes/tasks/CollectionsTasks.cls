public class CollectionsTasks {
  public static Integer countZerosInBitList(
    List<Integer> listWithZerosAndUnits
  ) {
    Integer countOnes = 0;

    for (Integer i : listWithZerosAndUnits) {
      countOnes += i;
    }

    return listWithZerosAndUnits.size() - countOnes;
  }

  public static Boolean sumCanBeReached(
    Integer sum,
    List<Integer> listWithElementsToCheck
  ) {
    for (Integer i = 0; i < listWithElementsToCheck.size() - 1; i++) {
      for (Integer j = i; j < listWithElementsToCheck.size(); j++) {
        if (listWithElementsToCheck[i] + listWithElementsToCheck[j] == sum) {
          return true;
        }
      }
    }
    return false;
  }

  public static Boolean sumCanBeReachedOptimal(
    Integer sum,
    List<Integer> listWithElementsToCheck
  ) {
    Set<Integer> setWithElementsToCheck = new Set<Integer>(
      listWithElementsToCheck
    );
    for (Integer i : setWithElementsToCheck) {
      setWithElementsToCheck.remove(i);

      if (setWithElementsToCheck.contains(sum -