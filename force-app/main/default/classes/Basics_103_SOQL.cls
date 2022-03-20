public with sharing class Basics_103_SOQL {
  // Write a SOQL query to get total number of Accounts and show it using System.debug()
  public static void Task01() {
    //put your code here
    integer task01acc = [SELECT COUNT() FROM Account];
    system.debug('total number of Accounts ' + task01acc);
  }

  // Write a SOQL query to get all Accounts ordered by the Name field by descending. Make output in loop using System.debug()
  public static void Task02() {
    //put your code here
    account[] task02acc = [SELECT Id, Name FROM Account ORDER BY Name DESC];
    for (account a : task02acc) {
      system.debug('Name desc ' + a.Name);
    }
  }

  // Write a SOQL query to get all Accounts with names contains 'elle'. Make output in loop using System.debug()
  public static void Task03() {
    //put your code here
    account[] task03acc = [
      SELECT Id, Name
      FROM Account
      WHERE Name LIKE '%elle%'
    ];
    for (account a : task03acc) {
      system.debug('Name elle ' + a.Name);
    }
  }

  // Write a SOQL query to get all Accounts with names NumberOfEmployees > 3 and < 7. Make output in loop using System.debug()
  public static void Task04() {
    //put your code here
    account[] task04acc = [
      SELECT Id, Name, NumberOfEmployees
      FROM Account
      WHERE
        NumberOfEmployees > 3
        AND NumberOfEmployees < 7
        AND NumberOfEmployees != NULL
    ];
    for (account a : task04acc) {
      system.debug('NumberOfEmployees 3 to 7 ' + a);
    }
  }

  // Write a SOQL query to get all related contacts lastnames to Rachel Green-Geller Ltd account
  public static void Task05() {
    Contact[] relatedContacts = [
      SELECT ID, LastName
      FROM Contact
      WHERE Account.Name = 'Rachel Green-Geller Ltd'
    ];
    system.debug('relatedContacs ' + relatedContacts);
  }

  // Write a SOQL query to get all accounts and related contacts FirstName, LastName (use subselect)
  public static void Task06() {
    Account[] accountsCon = [
      SELECT Id, Name, (SELECT FirstName, LastName FROM contacts)
      FROM Account
    ];
    system.debug('accountsCon ' + accountsCon.size());
  }

  // Write a SOQL query to get average number of employees of all accounts.
  public static void Task07() {
    List<AggregateResult> averageNumEmployees = [
      SELECT AVG(NumberOfEmployees)
      FROM Account
    ];
    system.debug('averageNumEmployees ' + averageNumEmployees);
    //put your code here
  }

  // Write a SOQL query to get the only one account random record without WHERE keyword.
  public static void Task08() {
    Integer count = [SELECT COUNT() FROM Account];
    Integer rand = Math.floor(Math.random() * count).intValue();
    Account a = [SELECT Name FROM Account LIMIT 1 OFFSET :rand];
    System.debug(a.name);
  }

  // Write a SOQL query to get total number of employees of all accounts.
  public static void Task09() {
    AggregateResult totalEmployees = [
      SELECT SUM(NumberOfEmployees) totalEmployees
      FROM Account
    ];
    system.debug('totalEmployees' + totalEmployees);
    //put your code here
  }

  // Write a SOQL query to get all contacts grouped by LastName.
  public static void Task10() {
    AggregateResult[] allContacsByLastName = [
      SELECT LastName
      FROM Contact
      GROUP BY LastName
    ];
    system.debug('allContactsByLastName ' + allContacsByLastName);
    //put your code here
  }

  // Write a SOQL query to get all contact names and query it 150 times in the loop.
  public static void Task11() {
    for (Contact c : [SELECT FirstName, LAstName FROM Contact LIMIT 150]) {
      System.debug('contactNames:' + c.LastName);
    }
  }
}
