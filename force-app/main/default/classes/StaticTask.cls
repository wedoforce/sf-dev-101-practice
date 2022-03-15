public with sharing class StaticTask {
  /*This method recieves a string payload with contact data that loks like  

  'FirstName: firstname, LastName: lastname, Email: ex@mple.com;
   FirstName: firstname, LastName: lastname, Email: ex@mple.com;
   ...
  '

  . Then it parses data and return Map collection where key is meail and value is Contact
  Feel free to refactorthis class. Don't forget about single responsibility approach when you create a new method.
  */

  public static String getValue(String str) {
    return str.split(':')[1].trim();
  }

  public static List<Contact> setContactsToContactsList(String payload) {
    List<Contact> contactList = new List<Contact>();
    List<String> contactSplitBySemicolon = payload.split(';');
    for (String contacts : contactSplitBySemicolon) {
      Contact parsedContact = new Contact();
      List<String> contactSplitByComma = contacts.split(',');
      for (String element : contactSplitByComma) {
        if (element.contains('FirstName:')) {
          parsedContact.FirstName = getValue(element);
        }
        if (element.contains('LastName:')) {
          parsedContact.LastName = getValue(element);
        }
        if (element.contains('Email:')) {
          parsedContact.Email = getValue(element);
        }

        contactList.add(parsedContact);
      }
    }
    return contactList;
  }

  public static Map<String, Contact> setContactsToMap(
    List<Contact> contactList
  ) {
    Map<String, Contact> contactToMap = new Map<String, Contact>();
    List<Contact> contacts = contactList;
    for (Contact element : contacts) {
      if (String.isNotBlank(element.Email)) {
        contactToMap.put(element.Email, element);
      }
    }
    return contactToMap;
  }

  public static Map<String, Contact> extractEmailToContactMap(String payload) {
    List<Contact> contacts = setContactsToContactsList(payload);
    Map<String, Contact> emailToContactMap = setContactsToMap(contacts);
    return emailToContactMap;
  }
}
