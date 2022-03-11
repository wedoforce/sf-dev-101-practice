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
    List<List<String>> contactStringListofList = makeContactStringListofList(
      stringOfContacts
    );
    List<Contact> contactsToAdd = makeListOfContacts(contactStringListofList);

    return convertToMap(contactsToAdd);
  }

  public static List<String> extractContsctsAsSting(String payload) {
    if (payload == null)
      return null;
    payload.trim();
    system.debug('trimmed ' + payload); //trim spaces
    List<String> stringOfContacts = payload.split(';'); //FirstName: firstname, LastName: lastname, Email: ex@mple.com
    return stringOfContacts;
  }

  public static List<List<String>> makeContactStringListofList(
    List<String> stringOfContacts
  ) {
    List<List<String>> contactStringListofList = new List<List<String>>();

    for (String contactString : stringOfContacts) {
      //{FirstName: firstname, LastName: lastname, Email: ex@mple.com}
      if (contactString.contains('@')) {
        List<String> contactStringAsList = contactString.split(','); // {FirstName: firstname}, {LastName: lastname}, {Email: ex@mple.com}
        system.debug('contactString.split ' + contactStringAsList.size());
        contactStringListofList.add(contactStringAsList);
        system.debug('print_list ' + contactStringAsList);
      }
    }
    return contactStringListofList;
  }

  public static List<Contact> makeListOfContacts(
    List<List<String>> contactStringListofList
  ) {
    List<Contact> contactsToAdd = new List<Contact>();
    for (List<String> conSplittedList : contactStringListofList) {
      // {FirstName: firstname}, {LastName: lastname}, {Email: ex@mple.com}
      if (conSplittedList[2] != null) {
        Contact parsedContact = new Contact();
        parsedContact.FirstName = conSplittedList[0].remove('FirstName: ');
        parsedContact.LastName = conSplittedList[1].remove('LastName: ');
        parsedContact.Email = conSplittedList[2].remove('Email: ');
        system.debug('parsedContact ' + parsedContact);
        contactsToAdd.add(parsedContact);
      }
    }
    return contactsToAdd;
  }

  public static Map<String, contact> convertToMap(List<Contact> contactsToAdd) {
    Map<String, Contact> emailContactMap = new Map<String, Contact>();
    for (contact c : contactsToAdd) {
      if (c.Email != null) {
        emailContactMap.put(c.email, c);
        system.debug('print map ' + emailContactMap);
      }
    }
    return emailContactMap;
  }
}
