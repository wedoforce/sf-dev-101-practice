public with sharing class StaticTask {
  /*This method recieves a string payload with contact data that looks like  

  'FirstName: firstname, LastName: lastname, Email: ex@mple.com;
   FirstName: firstname, LastName: lastname, Email: ex@mple.com;
   ...
  '

  . Then it parses data and return Map collection where key is e-mail and value is Contact
  Feel free to refactor this class. Don't forget about single responsibility approach when you create a new method.
  */

  public static Map<String, Contact> extractEmailToContactMap (String payload) {

    List<String> payloadAsStringList = StaticTask.splitPayloadByElementStringList(payload);
    Map<Integer, List<String>> sObjectFieldsMap = StaticTask.splitStringListByObjectFieldMap(payloadAsStringList);
    List<Contact> contactList = StaticTask.splitObjectFieldMapByRecords(sObjectFieldsMap);
    Map<String, Contact> emailAndContactMap = StaticTask.createEmailAndContactMap(contactList);

    return emailAndContactMap;
  }


  public static List<String> splitPayloadByElementStringList (String payload) {
    return payload.split(';');
  }

  
  public static Map<Integer, List<String>> splitStringListByObjectFieldMap (List<String> stringList) {
    
    Map<Integer, List<String>> sObjectFieldMap = new Map<Integer, List<String>>();
    
    for (Integer i = 0; i < stringList.size(); i++) {
      sObjectFieldMap.put(i, stringList[i].split(','));
    }

    return sObjectFieldMap;
  }


  public static List<Contact> splitObjectFieldMapByRecords (Map<Integer, List<String>> integerStringListMap) {
    
    List<Contact> contactList = new List<Contact>();

    for (Integer i = 0; i < integerStringListMap.size(); i++) {
      List<String> singleListFromMap = integerStringListMap.get(i);
      Contact record = StaticTask.formContactFromStringList(singleListFromMap);
      contactList.add(record);
    }

    return contactList;
  }


  public static Map<String, Contact> createEmailAndContactMap (List<Contact> contactList) {

    Map<String, Contact> emailAndContactMap = new Map<String, Contact>();

    for (Contact record : contactList) {
      String email = (String) record.get('Email');

      if (email != null) {
        emailAndContactMap.put(email, record);
      }
    }

    return emailAndContactMap;
  }


  public static String getValue (String pair) {
    return pair.substringAfter(':').trim();
  }


  public static String getField (String pair) {
    return pair.substringBefore(':').trim();
  }


  public static Boolean isValueBlank (String pair) {
    return String.isBlank(pair.substringAfter(':'));
  }


  public static Contact formContactFromStringList (List<String> listOfContactFields) {
    
    Contact record = new Contact();

    for (String fieldString : listOfContactFields) {
      if (StaticTask.isValueBlank(fieldString)) {
        continue;
      }

      String fieldName = StaticTask.getField(fieldString);

      switch on fieldName {
        when 'FirstName' {record.FirstName = StaticTask.getValue(fieldString);}
        when 'LastName' {record.LastName = StaticTask.getValue(fieldString);}
        when 'Email' {record.Email = StaticTask.getValue(fieldString);}
      }
    }

    return record;
  }
}