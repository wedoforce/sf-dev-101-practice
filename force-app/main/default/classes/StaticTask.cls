public with sharing class StaticTask {
  /*This method recieves a string payload with contact data that loks like  

  'FirstName: firstname, LastName: lastname, Email: ex@mple.com;
   FirstName: firstname, LastName: lastname, Email: ex@mple.com;
   ...
  '

  . Then it parses data and return Map collection where key is meail and value is Contact
  Feel free to refactorthis class. Don't forget about single responsibility approach when you create a new method.
  */
  public static Map<String, Contact> extractEmailToContactMap(String payload) {

    Map<String, Contact> emailToContactMap = new Map<String, Contact>();

    List<String> contacts = getContactsAsStringList(payload);

    for (String contactAsString : contacts) {
      
      Contact parsedContact = new Contact();
      
      List<String> contactSeparatedByComaString = getContactFieldList(contactAsString);
      
      for (String element : contactSeparatedByComaString) {
      
        setFirstNameField(element, parsedContact);
      
        if (isLastName(element)) {
          parsedContact.lastName = getFieldValueFromStr(element);
        }
      
        if (isEmailName(element)) {
          if (String.isNotBlank(element.split(':')[1])) {
            parsedContact.Email = getFieldValueFromStr(element);

            addContactToMap(parsedContact, emailToContactMap);
          }
        }
      }
    }

    return emailToContactMap;
  }

  public static Contact setFirstNameField(String elem, Contact contact){
    if (isFirstName(elem)) {
      contact.FirstName = getFieldValueFromStr(elem);
    }

    return contact;
  }

  public static void addContactToMap(Contact contact, Map<String, Contact> mapCollection) {
    mapCollection.put(
      contact.Email,
      contact
    );
  }



  public static List<String> getContactFieldList(String str){
    return str.split(',');
  }

  public static List<String> getContactsAsStringList(String str){
    return str.split(';');
  }

  public static String getFieldValueFromStr(String str){
    String result = str.split(':')[1];
    return trimm(result);
  }


  public static Boolean isFirstName(String element){
    return element.contains('FirstName');
  }

  public static Boolean isLastName(String element){
    return element.contains('LastName');
  }

  public static Boolean isEmailName(String element){
    return element.contains('Email');
  }

  public static String trimm(String str){
    return str.replaceAll(' ', '');
  }
}
