public with sharing class StaticTask {
  /*This method recieves a string payload with contact data that loks like  

  'FirstName: firstname, LastName: lastname, Email: ex@mple.com;
   FirstName: firstname, LastName: lastname, Email: ex@mple.com;
   ...
  '

  . Then it parses data and return Map collection where key is meail and value is Contact
  Feel free to refactorthis class. Don't forget about single responsibility approach when you create a new method.
  */
  public static List<String> splitStringBySemicolon(String str) {
    return str.split(';');
  }
  public static String getValue(String str) {
    return str.split(':')[1].trim();
  }
  public static List<String> splitStringByComma(String str) {
    return str.split(',');
  }

  public static Map<String, Contact> extractEmailToContactMap(String payload) {
    Map<String, Contact> emailToContactMap = new Map<String, Contact>();
    List<String> contacts = splitStringBySemicolon(payload);
    for (String contact : contacts) {
      Contact parsedContact = new Contact();
      List<String> sepContacts = splitStringByComma(contact);
      for (String element : sepContacts) {
        if (element.contains('FirstName:')) {
          parsedContact.FirstName = getValue(element);
        }
        if (element.contains('LastName:')) {
          parsedContact.LastName = getValue(element);
        }
        if (element.contains('Email:')) {
          if (String.isNotBlank(element.split(':')[1])) {
            parsedContact.Email = getValue(element);
            emailToContactMap.put(getValue(element), parsedContact);
          }
        }
      }
    }
    return emailToContactMap;
  }
}
