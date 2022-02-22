public with sharing class StaticTask {
  /*This method recieves a string payload with contact data that loks like  

  'FirstName: firstname, LastName: lastname, Email: ex@mple.com;
   FirstName: firstname, LastName: lastname, Email: ex@mple.com;
   ...
  '

  . Then it parses data and return Map collection where key is meail and value is Contact
  Feel free to refactorthis class. Don't forget about single responsibility approach when you create a new method.
  */
  public static List<String> splitString(String str1, String exp1) {
    return str1.split(exp1);
  } // split enter data and (return List)
  public static String splitStringAndReplace(String str2, String exp2) {
    return str2.split(exp2)[1].replaceAll(' ', ''); //split enter data and replace element List
  }

  public static List<Contact> contactListParsed(String payload) {
    // entered string split on the LastName,FirstName, Email and return in List<Contact>
    List<Contact> contactList = new List<Contact>();
    List<String> contacts = splitString(payload, ';');
    for (String contactAsString : contacts) {
      Contact parsedContact = new Contact();
      List<String> contactSeparatedByComaString = splitString(
        contactAsString,
        ','
      );
      for (String element : contactSeparatedByComaString) {
        if (element.contains('FirstName')) {
          parsedContact.FirstName = splitStringAndReplace(element, ':');
        }
        if (element.contains('LastName')) {
          parsedContact.LastName = splitStringAndReplace(element, ':');
        }
        if (element.contains('Email')) {
          if (String.isNotBlank(element.split(':')[1])) {
            parsedContact.Email = splitStringAndReplace(element, ':');
          }
        }
      }
      contactList.add(parsedContact); // add splited string to List<Contact>
    }
    return contactList;
  }

  public static Map<String, Contact> extractEmailToContactMap(String payload) {
    Map<String, Contact> emailToContactMap = new Map<String, Contact>();
    List<Contact> sepContactList = contactListParsed(payload);
    for (Contact i : sepContactList) {
      emailToContactMap.put(i.Email, i);
    }
    return emailToContactMap;
  }
}
