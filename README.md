# SOQL
All data in Salesforce (records such as Accounts, Contacts, etc) stores in database as tables. To operate with this data we are using Salesforce Object Query Language (SOQL). With SOQL you can access any record(s) on your Salesforce org for reading, editing. It is very similar to Structured Query Language (SQL). The difference is that SOQL returns collection of SObjects, so you can already work with these records as Objects in Apex without extra transformations of data.

We recommend you to complete following trailhead module https://trailhead.salesforce.com/en/content/learn/modules/soql-for-admins/get-started-with-soql-queries


# SOSL
Salesforce Object Search Language (SOSL) is a Salesforce search language that is used to perform text searches in records. Use SOSL to search fields across multiple standard and custom object records in Salesforce. SOSL is similar to Apache Lucene.

For example you need to find all Accounts, Contacts, Cases, Custom Objects which name fields contains some value. Instead of making 4 separate SOQL queries you can make one SOSL query that will return list of SObjects for all found records.

List<List<SObject>> searchList = [FIND 'Some Text' IN ALL FIELDS 
                                      RETURNING Account(Name), Contact(Name), Case(Name), CustomObject__c(Name)];

For more details complete following trailhead: https://trailhead.salesforce.com/content/learn/modules/apex_database/apex_database_sosl

# Prerequirements for homework

* Set your scratch org as default
* Push source code using sfdx force:source:push
* Execute script upload_103_soql.sh (./upload_103_soql.sh)
* Write your solution in Basics_103_SOQL.cls

## Task 1

Write a SOQL query to get total number of Accounts and show it using System.debug()

## Task 2

Write a SOQL query to get all Accounts ordered by the Name field by descending. Make output in loop using System.debug()

## Task 3

Write a SOQL query to get all Accounts with names contains 'elle'. Make output in loop using System.debug()

## Task 4

Write a SOQL query to get all Accounts with names NumberOfEmployees > 3 and < 7. Make output in loop using System.debug()

## Task 5

Write a SOQL query to get all related contacts lastnames to Rachel Green-Geller Ltd account

## Task 6

Write a SOQL query to get all accounts and related contacts FirstName, LastName (use subselect)

## Task 7

Write a SOQL query to get average number of employees of all accounts.

## Task 8

Write a SOQL query to get the only one account random record without WHERE keyword.

## Task 9

Write a SOQL query to get total number of employees of all accounts.

## Task 10

Write a SOQL query to get all contacts grouped by LastName.

## Task 11

Write a SOQL query to get all contact names and query it 150 times in the loop.

