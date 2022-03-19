public with sharing class DML101 {
  // Insert new Account with your last name as Account.Name using apex DML. Show it using System.debug()
  public static void task01() {
    //put your code here
    Account acc = new Account (Name ='Kolobova') ;
    insert acc;
    System.debug('Account created ID is' + acc.Id);
  }

  // Insert Contact for created in previous task Account with FirstName = 'Test' and LastName = 'Contact'
  public static void task02() {
    //put your code here
    Account task1 =[SELECT  id from Account WHERE Name='Kolobova' LIMIT 1];
    Contact task2 = new Contact (FirstName= 'Test', LastName = 'Contact', AccountId=task1.Id);
    insert task2;
  }

  // Update Test Contact with email = 'ex@maple.com' and insert a new one with your first name and last name in one DML;
  public static void task03() {
    //put your code here
    Contact task2= [Select id from Contact WHERE FirstName='Test' AND LastName = 'Contact' LIMIT 1];
    task2.Email = 'ex@maple.com';
    List<Contact> newContacts = new List<Contact> {
      new Conact(FirstName = 'Veronika', LastName = 'Kolobova')
    };
    newContacts.add(task2);
    delete newContacts;
  }

  // Delete Test Contact and Account in one DML
  public static void task04() {
   Account task1Account =[SELECT Id from Account WHERE Name='Kolobova' Limit 1];
   delete task1Account;
    //put your code here
  }
}
