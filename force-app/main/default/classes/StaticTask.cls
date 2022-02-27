public with sharing class StaticTask {
  /*This method recieves a string payload with contact data that loks like  

  'FirstName: firstname, LastName: lastname, Email: ex@mple.com;
   FirstName: firstname, LastName: lastname, Email: ex@mple.com;
   ...
  '

  . Then it parses data and return Map collection where key is meail and value is Contact
  Feel free to refactorthis class. Don't forget about single responsibility approach when you create a new method.
  */
  Map<String, Contact> emailToContactMap = new Map<String, Contact>();
  public static Map<String, Contact> extractEmailToContactMap(String payload) {
    List<String> stringOfContacts = extractContsctsAsSting(payload);
    List<Contact> contactsToAdd = makeListOfContacts(stringOfContacts);
    return convertToMap(contactsToAdd);
  }

  public static List<String> extractContsctsAsSting(String payload) {
    if (payload == null)
      return null;
    List<String> stringOfContacts = payload.split(';');
    return stringOfContacts;
  }

  public static List<Contact> makeListOfContacts(
    List<String> stringOfContacts
  ) {
    List<Contact> contactsToAdd = new List<Contact>();
    for (String contactString : stringOfContacts) {
      Contact parsedContact = new Contact();
      List<String> contactAsList = contactString.split(',');
      for (String con : contactAsList) {
        if (con.contains('FirstName')) {
          parsedContact.FirstName = con.split(':')[1].replaceAll(' ', '');
        }
        if (con.contains('LastName')) {
          parsedContact.LastName = con.split(':')[1].replaceAll(' ', '');
        }
        if (con.contains('Email')) {
          parsedContact.Email = con.split(':')[1].replaceAll(' ', '');
        }
      }
      contactsToAdd.add(parsedContact);
    }
    return contactsToAdd;
  }
  public static Map<String, contact> convertToMap(List<Contact> contactsToAdd) {
    Map<String, Contact> emailContactMap = new Map<String, Contact>();
    for (contact c : contactsToAdd) {
      if (c.Email != null)
        emailContactMap.put(c.email, c);
    }
    return emailContactMap;
  }
}
