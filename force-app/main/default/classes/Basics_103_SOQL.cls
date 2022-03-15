public with sharing class Basics_103_SOQL {
  // Write a SOQL query to get total number of Accounts and show it using System.debug()
  public static void Task01() {
    Integer totalOfAccounts = [
      SELECT COUNT()
      FROM Account
    ];

    System.debug('total number of Accounts: '  + totalOfAccounts);
  }

  // Write a SOQL query to get all Accounts ordered by the Name field by descending. Make output in loop using System.debug()
  public static void Task02() {
    List<Account> listOfAccounts = [
      SELECT Name 
      FROM Account
      ORDER BY Name DESC
    ];

    for (Account account : listOfAccounts) {
      System.debug('Name: ' + account.Name);
    }
  }

  // Write a SOQL query to get all Accounts with names contains 'elle'. Make output in loop using System.debug()
  public static void Task03() {
    List<Account> listOfAccounts = [
      SELECT Name 
      FROM Account
      WHERE Name LIKE '%elle%'
    ];

    for (Account account : listOfAccounts) {
      System.debug('Name: ' + account.Name);
    }
  }

  // Write a SOQL query to get all Accounts with names NumberOfEmployees > 3 and < 7. Make output in loop using System.debug()
  public static void Task04() {
    List<Account> listOfAccounts = [
      SELECT Name, NumberOfEmployees 
      FROM Account
      WHERE NumberOfEmployees > 3 AND NumberOfEmployees < 7
    ];

    for (Account account : listOfAccounts) {
      System.debug('Name: ' + account.Name + 'NumberOfEmployees: ' + account.NumberOfEmployees);
    }
  }

  // Write a SOQL query to get all related contacts lastnames to Rachel Green-Geller Ltd account
  public static void Task05() {
    Account account = [
      SELECT Account.Name, (SELECT Contact.LastName FROM Account.Contacts)
      FROM Account
      WHERE Account.Name LIKE 'Rachel Green-Geller Ltd%'
    ][0];

    for (Contact contact : account.Contacts) {
      System.debug('Last name: ' + contact.LastName);
    }
  }

  // Write a SOQL query to get all accounts and related contacts FirstName, LastName (use subselect)
  public static void Task06() {
    List<Account> accounts = [
      SELECT Account.Name, (SELECT Contact.FirstName, Contact.LastName FROM Account.Contacts)
      FROM Account
    ];

    for (Account account : accounts) {
      System.debug('\tAccount: ' + account.Name);

      for (Contact contact : account.Contacts) {
        System.debug('\t\t'  + contact.FirstName +  ' ' + contact.LastName);
      }

      System.debug('\t');
    }
  }

  // Write a SOQL query to get average number of employees of all accounts.
  public static void Task07() {
    AggregateResult aggregateResult = [
      SELECT AVG(NumberOfEmployees)averageNumberOfEmployees
      FROM Account
    ][0];

    System.debug('Average number of employees of all accounts: ' + aggregateResult.get('averageNumberOfEmployees'));
  }

  // Write a SOQL query to get the only one account random record without WHERE keyword.
  public static void Task08() {
    Integer randomValue = math.min([SELECT COUNT() FROM Account]-1, (Integer)(math.random() * 10));

    Account account = [
      SELECT Name 
      FROM Account 
    ][randomValue];

    System.debug('account name ' + account.Name);
  }

  // Write a SOQL query to get total number of employees of all accounts.
  public static void Task09() {
    AggregateResult aggregateResult = [
      SELECT SUM(NumberOfEmployees)totalNumberOfEmployees
      FROM Account
    ][0];

    System.debug('Total number of employees of all accounts: ' + aggregateResult.get('totalNumberOfEmployees'));
  }

  // Write a SOQL query to get all contacts grouped by LastName.
  public static void Task10() {
    List<AggregateResult> aggregateResult = [
      SELECT LastName 
      FROM Contact
      GROUP BY LastName
    ];

    for (AggregateResult result : aggregateResult) {
      System.debug('Last Name: ' + result.get('LastName'));
    }
  }

  // Write a SOQL query to get all contact names and query it 150 times in the loop.
  public static void Task11() {
    for (Integer i = 0; i < 150; i++){
      List<Contact> contacts = [SELECT FirstName, LastName FROM Contact];
      System.debug('count:' + contacts.size());
    }       
  }
}
