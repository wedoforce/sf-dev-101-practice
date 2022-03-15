public with sharing class DML101 {
  // Insert new Account with your last name as Account.Name using apex DML. Show it using System.debug()
  public static void task01() {
    Account myAccount  = new Account(Name='Zhugan');
    insert myAccount;

    System.debug('Name: ' + [SELECT Name FROM Account WHERE Name = 'Zhugan'].Name);
  }

  // Insert Contact for created in previous task Account with FirstName = 'Test' and LastName = 'Contact'
  public static void task02() {
    ID myAccountID = [SELECT Name FROM Account WHERE Name = 'Zhugan'].Id;

    Contact testContact = new Contact(
      FirstName = 'Test', 
      LastName = 'Contact',
      AccountId = myAccountID
    );

    insert testContact;

    System.debug('testContact: ' + [SELECT FirstName, LastName, AccountId FROM Contact WHERE FirstName = 'Test']);
    System.debug('testAccount: ' + [SELECT Name FROM Account WHERE Name = 'Zhugan']);
  }

  // Update Test Contact with email = 'ex@maple.com' and insert a new one with your first name and last name in one DML;
  public static void task03() {
    List<Contact> contacts = new List<Contact>();

    Contact testContact = [SELECT FirstName FROM Contact WHERE FirstName = 'Test'][0];
    testContact.Email = 'ex@maple.com';
    contacts.add(testContact);

    Contact newContact = new Contact(
      FirstName = 'Sergey',
      LastName = 'Zhugan'
    );
    contacts.add(newContact);

    upsert contacts;

    for (Contact contact : [SELECT FirstName, LastName, Email FROM Contact]) {
      System.debug(contact);
    }
  }

  // Delete Test Contact and Account in one DML
  public static void task04() {
    Account account = [SELECT Name FROM Account WHERE Name = 'Zhugan'][0];
    delete account;
  }
}
