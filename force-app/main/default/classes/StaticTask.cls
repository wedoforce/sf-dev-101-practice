public with sharing class StaticTask {
  /*This method recieves a string payload with contact data that loks like  

  'FirstName: firstname, LastName: lastname, Email: ex@mple.com;
   FirstName: firstname, LastName: lastname, Email: ex@mple.com;
   ...
  '

  . Then it parses data and return Map collection where key is meail and value is Contact
  Feel free to refactorthis class. Don't forget about single responsibility approach when you create a new method.
  */

  public static String extractor(String Str) {
    String extract = str.split(':')[1].replaceAll(' ', '');
    return extract;
  }

  public static List<Contact> listContact(String payload) {
    List<Contact> contList = new List<Contact>();
    List<String> contacts = payload.split(';');

    for (String contactAsString : contacts) {
      Contact parsedContact = new Contact();
      List<String> contactSeparatedByComaString = contactAsString.split(',');
      for (String element : contactSeparatedByComaString) {
        if (element.contains('FirstName')) {
          parsedContact.FirstName = extractor(element);
        }
        if (element.contains('LastName')) {
          parsedContact.LastName = extractor(element);
        }
        if (element.contains('Email')) {
          parsedContact.Email = extractor(element);
        }
        contList.add(parsedContact);
      }
    }

    return contList;
  }

  public static Map<String, Contact> extractEmailToContactMap(String payload) {
    List<Contact> contList = listContact(payload);
    Map<String, Contact> emailToContactMap = new Map<String, Contact>();
    for (Contact c : contList) {
      if (String.isNotBlank(c.Email)) {
        emailToContactMap.put(c.Email, c);
      }
    }
    return emailToContactMap;
  }
}
