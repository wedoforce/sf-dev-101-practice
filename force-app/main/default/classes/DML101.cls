public with sharing class DML101 {
  // Insert new Account with your last name as Account.Name using apex DML. Show it using System.debug()
  public static void task01() {
    
    Account acc = new Account(Name='Mastriukov');
    insert acc;
    System.debug(acc);
  }


  // Insert Contact for created in previous task Account with FirstName = 'Test' and LastName = 'Contact'
  public static void task02() {
    
    List<Account> accList = [SELECT Id FROM Account WHERE Name='Mastriukov' LIMIT 1];
    Contact cnt = new Contact();
    
    if (accList.size() == 1) {
      cnt = new Contact(FirstName='Test', LastName='Contact', AccountId=accList[0].Id);
      insert cnt;
      System.debug(cnt);
    }
  }


  // Update Test Contact with email = 'ex@maple.com' and insert a new one with your first name and last name in one DML;
  public static void task03() {
    List<Contact> cntList = [SELECT Id,Email FROM Contact WHERE FirstName='Test' AND LastName='Contact' LIMIT 1];
    List<Contact> cntListToUpsert = new List<Contact>();

    Contact cnt1 = cntList[0];
    cnt1.Email = 'ex@maple.com';
    cntListToUpsert.add(cnt1);

    Contact cnt2 = new Contact(FirstName='Oleg', LastName='Mastriukov');
    cntListToUpsert.add(cnt2);

    upsert cntListToUpsert;
  }


  // Delete Test Contact and Account in one DML
  public static void task04() {
    List<Account> accList = [SELECT Id FROM Account WHERE Name='Mastriukov' LIMIT 1];
    List<Contact> cntList = [SELECT Id,Email FROM Contact WHERE FirstName='Test' AND LastName='Contact' LIMIT 1];
    List<sObject> sObjListToDelete = new List<sObject>();

    sObjListToDelete.add(accList[0]);
    sObjListToDelete.add(cntList[0]);

    delete sObjListToDelete;
  }
}