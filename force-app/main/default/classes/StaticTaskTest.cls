@isTest
private with sharing class StaticTaskTest {
  @isTest
  private static void StaticTaskTest_test() {
    String payload =
      'FirstName: Chandler, LastName: Bing, Email: Chandler.Bing@friends.com; ' +
      'FirstName: Rachel, LastName: Green-Geller, Email: Rachel.Green-Geller@friends.com;' +
      'FirstName: Ben, LastName: Geller, Email: ; ' +
      'FirstName: Monica, LastName: Geller, Email: Monica.Geller@friends.com; ' +
      'FirstName: Fibi, LastName: Bufe, Email: Fibi.Bufe@friends.com; ' +
      'FirstName: Joey, LastName: Tribbiani, Email: Joey.Tribbiani@friends.com; ' +
      'FirstName: John, LastName: Doe, Email: ; ' +
      'FirstName: LastName, LastName: FirstName, Email: LastName.FirstName@lol.kek; ' +
      'FirstName: Rose, LastName: Geller, Email: Rose.Geller@friends.com; ';

    Map<String, Contact> resultMap = StaticTask.extractEmailToContactMap(
      payload
    );

    System.assertNotEquals(null, resultMap, 'result must not be null');
    System.assertEquals(
      7,
      resultMap.size(),
      'result map must contain 7 pair records'
    );

    for (String email : resultMap.keySet()) {
      Contact parsedContact = resultMap.get(email);

      System.assertEquals(
        email,
        parsedContact.Email,
        'contact email must be the same as a key in map'
      );
      System.debug(email.split('@')[0].split('\\.'));
      System.assertEquals(
        email.split('@')[0].split('\\.')[0],
        parsedContact.FirstName,
        'contact email must be the same as a key in map'
      );
      System.assertEquals(
        email.split('@')[0].split('\\.')[1],
        parsedContact.LastName,
        'contact email must be the same as a key in map'
      );
    }
  }
}
