# SOQL
All data in Salesforce (records such as Accounts, Contacts, etc) stores in database as tables. To operate with this data we are using Salesforce Object Query Language (SOQL). With SOQL you can access any record(s) on your Salesforce org for reading, editing. It is very similar to Structured Query Language (SQL). The difference is that SOQL returns collection of SObjects, so you can already work with these records as Objects in Apex without extra transformations of data.

We recommend you to complete following trailhead module https://trailhead.salesforce.com/en/content/learn/modules/soql-for-admins/get-started-with-soql-queries

# Prerequirements for homework

* Set your scratch org as default
* Execute script upload_103_soql.sh (./upload_103_soql.sh)

# Task 1

Write a SOQL query to get total number of Accounts and show it using System.debug()

# Task 2

Write a SOQL query to get all Accounts ordered by the Name field by descending. Make output in loop using System.debug()

# Task 3

Write a SOQL query to get all Accounts with names contains 'elle'. Make output in loop using System.debug()

# Task 4

Write a SOQL query to get all Accounts with names NumberOfEmployees > 3 and < 7. Make output in loop using System.debug()

# Task 5

Write a SOQL query to get all related contacts lastnames to Rachel Green-Geller Ltd account
