public with sharing class Basics_103_SOQL {
  // Write a SOQL query to get total number of Accounts and show it using System.debug()

  public static void Task01() {
    //put your code here
    Integer quantityAccount = [SELECT COUNT(Id) FROM Account];
    System.debug('Account quantitiy is ' + quantityAccount);
  }

  // Write a SOQL query to get all Accounts ordered by the Name field by descending. Make output in loop using System.debug()
  public static void Task02() {
    List<Account> listAcc = [SELECT id FROM Account ORDER BY Name DESC];
    for (Account acc : listAcc) {
      System.debug('Account Name: ' + acc.Name);
    }

    //put your code here
  }

  // Write a SOQL query to get all Accounts with names contains 'elle'. Make output in loop using System.debug()
  public static void Task03() {
    List<Account> listAcc = [SELECT id FROM Account WHERE Name LIKE '%elle%'];
    for (Account acc : listAcc) {
      System.debug('Account Name: ' + acc.Name);
    }
    //put your code here
  }

  // Write a SOQL query to get all Accounts with names NumberOfEmployees > 3 and < 7. Make output in loop using System.debug()
  public static void Task04() {
    //put your code here
    List<Account> listAcc = [
      SELECT id
      FROM Account
      WHERE NumberofEmployees > 3 AND NumberofEmployees < 7
    ];
    for (Account acc : listAcc) {
      System.debug('Account Name: ' + acc.Name);
      System.debug('Number of Employees: ' + acc.NumberOfEmployees);
    }
  }

  // Write a SOQL query to get all related contacts lastnames to Rachel Green-Geller Ltd account
  public static void Task05() {
    //put your code here
    String idGeller = [
      SELECT id
      FROM Account
      WHERE Name = 'Rachel Green-Geller Ltd'
      LIMIT 1
    ];
    List<String> lastNamesGeller = [
      SELECT LastName
      FROM Contact
      WHERE Accountid = :idGeller
    ];
  }

  // Write a SOQL query to get all accounts and related contacts FirstName, LastName (use subselect)
  public static void Task06() {
    //put your code here
  }
  List<String> accwithcontacts = [
    SELECT Name, (SELECT FirstName, LastName FROM Contact)
    FROM Account
  ];
  // Write a SOQL query to get average number of employees of all accounts.
  public static void Task07() {
    //put your code here
    Decimal avgEmployees = [SELECT AVG(NumberofEmployees) FROM Account];
  }

  // Write a SOQL query to get the only one account random record without WHERE keyword.
  public static void Task08() {
    //put your code here
    Account acc = [SELECT id FROM Account LIMIT 1];
  }

  // Write a SOQL query to get total number of employees of all accounts.
  public static void Task09() {
    //put your code here
    Integer totalEmployees = [SELECT SUM(NumberofEmployees) FROM Account];
  }

  // Write a SOQL query to get all contacts grouped by LastName.
  public static void Task10() {
    List<Contact> listContactbyLastName = [
      SELECT id
      FROM Contact
      GROUP BY LastName
    ];
    //put your code here
  }

  // Write a SOQL query to get all contact names and query it 150 times in the loop.
  public static void Task11() {
    //put your code here
    for (Integer i = 1; i < 151; i++) {
      List<String> lastNames = [SELECT LastName FROM Contact];
    }
  }
}
