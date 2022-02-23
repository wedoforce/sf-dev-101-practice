public with sharing class StaticTask {
  /*This method recieves a string payload with contact data that looks like  

  'FirstName: firstname, LastName: lastname, Email: ex@mple.com;
   FirstName: firstname, LastName: lastname, Email: ex@mple.com;
   ...
  '

  . Then it parses data and return Map collection where key is e-mail and value is Contact
  Feel free to refactor this class. Don't forget about single responsibility approach when you create a new method.
  */
<<<<<<< HEAD
  public static Map<String, Contact> emailToContactMap = new Map<String, Contact>();

  public static Map<String, Contact> extractEmailToContactMap(String payload) {
    List<String> contacts = getContactsAsStringList(payload);
    setContactsToMap(contacts);

    return emailToContactMap;
=======

    public static Map<String, Contact> extractEmailToContactMap(String payload) {

      List<String> payloadAsString = StaticTask.splitPayloadByElements(payload);
      Map<Integer, List<String>> sObjectFieldsMap = StaticTask.splitStringListByObjectFields(payloadAsString);
      List<Contact> contactList = StaticTask.splitObjectFieldsMapByRecords(sObjectFieldsMap);
      Map<String, Contact> emailAndContactMap = StaticTask.createEmailAndContactMap(contactList);

      return emailAndContactMap;
  }


  public static List<String> splitPayloadByElements (String payload) {
    return payload.split(';');
  }

  
  public static Map<Integer, List<String>> splitStringListByObjectFields (List<String> strList) {
    
    Map<Integer, List<String>> sObjectFieldsMap = new Map<Integer, List<String>>();
    Integer i = 0;
    
    for (String element : strList) {
      sObjectFieldsMap.put(i, element.split(','));
      i++;
    }

    return sObjectFieldsMap;
  }


  public static List<Contact> splitObjectFieldsMapByRecords (Map<Integer, List<String>> fieldsMap) {
    
    List<Contact> contactList = new List<Contact>();

    for (Integer i = 0; i < fieldsMap.size(); i++) {
      Contact record = new Contact();
      List<String> mapElement = fieldsMap.get(i);

      for (String element : mapElement) {
        if (element.contains('FirstName')) {
          record.FirstName = element.split(':')[1].replaceAll(' ', '');
        }

        if (element.contains('LastName')) {
          record.LastName = element.split(':')[1].replaceAll(' ', '');
        }

        if (element.contains('Email') && String.isNotBlank(element.split(':')[1])) {
          record.Email = element.split(':')[1].replaceAll(' ', '');
        }
      }

      contactList.add(record);
    }

    return contactList;
  }


  public static Map<String, Contact> createEmailAndContactMap (List<Contact> contactList) {

    Map<String, Contact> emailAndContactMap = new Map<String, Contact>();

    for (Contact record : contactList) {
      if ((String) record.get('Email') != null) {
        emailAndContactMap.put((String) record.get('Email'), record);
      }
    }

    return emailAndContactMap;
>>>>>>> 5690cff (refactor StaticTask.cls)
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
