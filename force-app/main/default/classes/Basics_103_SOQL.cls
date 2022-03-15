public with sharing class Basics_103_SOQL {
  // Write a SOQL query to get total number of Accounts and show it using System.debug()
  public static void Task01() {
    Integer accCount = [SELECT count() FROM Account];
    System.debug(accCount);
  }

  // Write a SOQL query to get all Accounts ordered by the Name field by descending. Make output in loop using System.debug()
  public static void Task02() {
    for (Account acc : [SELECT Id FROM Account ORDER BY Name DESC]) {
      System.debug(acc);
    }
  }

  // Write a SOQL query to get all Accounts with names contains 'elle'. Make output in loop using System.debug()
  public static void Task03() {
    for (Account acc : [SELECT Id FROM Account WHERE Name LIKE '%elle%']) {
      System.debug(acc);
    }
  }

  // Write a SOQL query to get all Accounts with names NumberOfEmployees > 3 and < 7. Make output in loop using System.debug()
  public static void Task04() {
    for (Account acc : [SELECT Id FROM Account WHERE NumberOfEmployees > 3 AND NumberOfEmployees < 7]) {
      System.debug(acc);
    }
  }

  // Write a SOQL query to get all related contacts lastnames to Rachel Green-Geller Ltd account
  public static void Task05() {
    List<Contact> cntList = [SELECT FirstName FROM Contact WHERE Account.Name = 'Rachel Green-Geller Ltd'];
  }

  // Write a SOQL query to get all accounts and related contacts FirstName, LastName (use subselect)
  public static void Task06() {
    List<Contact> cntList = new List<Contact>();

    for (Account acc : [SELECT Id, (SELECT LastName FROM Contacts) FROM Account]) {
      for (Contact cnt : acc.Contacts) {
        cntList.add(cnt);
      }
    }
    System.debug(cntList);
  }

  // Write a SOQL query to get average number of employees of all accounts.
  public static void Task07() {
    List<AggregateResult> res = [SELECT AVG(NumberOfEmployees)avg FROM Account];
    System.debug(res[0].get('avg'));
  }

  // Write a SOQL query to get the only one account random record without WHERE keyword.
  public static void Task08() {
    Account acc = [SELECT Id FROM Account LIMIT 1];
    System.debug(acc);
  }

  // Write a SOQL query to get total number of employees of all accounts.
  public static void Task09() {
    List<AggregateResult> res = [SELECT SUM(NumberOfEmployees)sum FROM Account];
    System.debug(res[0].get('sum'));
  }

  // Write a SOQL query to get all contacts grouped by LastName.
  public static void Task10() {
    List<AggregateResult> cntcList = [SELECT LastName FROM Contact GROUP BY LastName];
    System.debug(cntcList);
  }

  // Write a SOQL query to get all contact names and query it 150 times in the loop.
  public static void Task11() {
    for (Integer i = 1; i < 150; i++) {
      List<Contact> cntcList = [SELECT Name FROM Contact];
    }
  }
}
