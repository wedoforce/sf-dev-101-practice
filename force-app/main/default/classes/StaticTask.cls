public with sharing class StaticTask {
  /*This method recieves a string payload with contact data that looks like  

  'FirstName: firstname, LastName: lastname, Email: ex@mple.com;
   FirstName: firstname, LastName: lastname, Email: ex@mple.com;
   ...
  '

  . Then it parses data and return Map collection where key is email and value is Contact
  Feel free to refactor this class. Don't forget about single responsibility approach when you create a new method.
  */
  public static Map<String, Contact> emailToContactMap = new Map<String, Contact>();

  public static Map<String, Contact> extractEmailToContactMap(String payload) {
    List<String> contacts = StaticTask.splitPayloadToSeparateStrings(payload);
    List<Contact> contactsForMap = StaticTask.createContactsList(contacts);
    Map<String, Contact> emailToContactMap = StaticTask.createEmailToContactMap(
      contactsForMap
    );
    return emailToContactMap;
  }

  public static List<String> splitPayloadToSeparateStrings(String payload) {
    List<String> contacts = payload.split(';');
    System.debug('contacts are' + contacts);
    System.debug('contacts # is' + contacts.size());
    return contacts;
  }
  public static List<Contact> createContactsList(List<String> contacts) {
    Integer n = contacts.size();
    List<Contact> contactsForMap1 = new List<Contact>();

    String contactsForFirstName;
    String contactsForLastName;
    String contactsForEmail;

    for (Integer i = 0; i < n; i++) {
      Contact parsedContact = new Contact();
      if (String.isNotBlank(contacts.get(i))) {
        contactsForFirstName = contacts.get(i).remove('FirstName:');
        contactsForLastName = contacts.get(i).remove('LastName:');
        contactsForEmail = contacts.get(i).remove('Email:');
        parsedContact.FirstName = contactsForFirstName.split(',')[0]
          .replaceAll(' ', '');
        parsedContact.LastName = contactsForLastName.split(',')[1]
          .replaceAll(' ', '');
        parsedContact.Email = contactsForEmail.split(',')[2]
          .replaceAll(' ', '');
        if (String.IsNotEmpty(parsedContact.Email)) {
          contactsForMap1.add(parsedContact);
        }
      }
    }

    return contactsForMap1;
  }

  public static Map<String, Contact> createEmailToContactMap(
    List<Contact> contactsForMap
  ) {
    Map<String, Contact> emailToContactMap = new Map<String, Contact>();
    if (contactsForMap.size() > 0) {
      for (Contact elementContact : contactsForMap) {
        emailToContactMap.put(elementContact.email, elementContact);
      }
    }
    return emailToContactMap;
  }

  public static void setContactsToMap(List<String> contacts){
    for (String contactAsString : contacts) {
      Contact parsedContact = new Contact();
      List<String> contactSeparatedByComaString = getContactSeparatedByComaString(contactAsString);
      setContactToMap(contactSeparatedByComaString, parsedContact);
    }
  }

  public static void setContactToMap(List<String> contactSeparatedByComaString, Contact parsedContact){
    for (String element : contactSeparatedByComaString) {
      setFirstNameField(element, parsedContact);
      setLastNameField(element, parsedContact);
      setEmailField(element, parsedContact);

      if(isEmailNotEmpty(element)){
        addContactToMap(parsedContact, emailToContactMap);
      }
    }
  }

  public static void setEmailField(String elem, Contact contact){
    if (isEmail(elem)) {
      contact.Email = getFieldValueFromStr(elem); 
    }
  }

  public static void setFirstNameField(String elem, Contact contact){
    if (isFirstName(elem)) {
      contact.FirstName = getFieldValueFromStr(elem);
    }
  }

  public static void setLastNameField(String elem, Contact contact){
    if (isLastName(elem)) {
      contact.LastName = getFieldValueFromStr(elem);
    }
  }

  public static void addContactToMap(Contact contact, Map<String, Contact> mapCollection) {
    mapCollection.put(
      contact.Email,
      contact
    );
  }

  public static Boolean isEmailNotEmpty(String elem){
    if (isEmail(elem) && String.isNotBlank(elem.split(':')[1])) {
      return true;
    }

    return false;
  }

  public static List<String> getContactSeparatedByComaString(String str){
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

  public static Boolean isEmail(String element){
    return element.contains('Email');
  }

  public static String trimm(String str){
    return str.replaceAll(' ', '');
  }
}
