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
  }
  public static String splitStringAndReplace(String str2, String exp2) {
    return str2.split(exp2)[1].replaceAll(' ', '');
  }

  public static Map<String, Contact> extractEmailToContactMap(String payload) {
    Map<String, Contact> emailToContactMap = new Map<String, Contact>();
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
            emailToContactMap.put(
              element.split(':')[1].replaceAll(' ', ''),
              parsedContact
            );
          }
        }
      }
    }
    return emailToContactMap;
  }
}
