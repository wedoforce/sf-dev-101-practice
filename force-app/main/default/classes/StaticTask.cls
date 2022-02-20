public with sharing class StaticTask {
  public static Map<String, Contact> extractEmailToContactMap(String payload) {
    Map<String, Contact> emailToContactMap = new Map<String, Contact>();
    List<String> contacts = payload.split(';');
    for (String contactAsString : contacts) {
      Contact parsedContact = new Contact();
      List<String> contactSeparatedByComaString = contactAsString.split(',');
      for (String element : contactSeparatedByComaString) {
        if (element.contains('FirstName')) {
          parsedContact.FirstName = element.split(':')[1].replaceAll(' ', '');
        }
        if (element.contains('LastName')) {
          parsedContact.LastName = element.split(':')[1].replaceAll(' ', '');
        }
        if (element.contains('Email')) {
          if (String.isNotBlank(element.split(':')[1])) {
            parsedContact.Email = element.split(':')[1].replaceAll(' ', '');
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
