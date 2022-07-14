# Hostel Database Management
##### This project going through the Design and Implementation of Hostel Database. 
## Table Of Content
- [Introduction](#intro)
- [Entity Relationship Diagram (ERD)](#erd)
- [Mapping ERD to Relational Schema](#schema)
- [Test on Dummy Data](#dummy)

<a name="intro"></a>
## Introduction
##### A RDBM for a hostel to manage the following entities and the relations between them:
- Information about the employees and the different departments they work in.
- Information about the hostel rooms and all the items required.
- Information about guests and their reservation.
- Information about events held by the hotel and the offered services.

<a name="erd"></a>
## Entity Relationship Diagram (ERD)
##### Initial structure of the database showing all the required tables, their attributes and the relation between them.
![HOTEL ERD](https://user-images.githubusercontent.com/47898196/179096910-40613635-3d4b-4f99-8c15-9bbfc039e8a7.png)


<a name="schema"></a>
## Mapping ERD to Relational Schema
![schemaa](https://user-images.githubusercontent.com/47898196/179096626-b7b0333c-ee06-4213-a46a-1d1171832243.png)

<a name="dummy"></a>
## Test on Dummy Data
##### Dummy data inserted using a python script to test database 
```sql
SELECT * FROM Guest
```
![Guest](https://user-images.githubusercontent.com/47898196/179097690-6774c10e-36cd-4b65-91d3-025086c71701.PNG)

```sql
SELECT * FROM Employee
```
![Employee](https://user-images.githubusercontent.com/47898196/179098007-58c809a0-e7dd-4ea3-8a5a-04d7c6cde32f.PNG)

```sql
SELECT * FROM Room
```
![Room](https://user-images.githubusercontent.com/47898196/179098101-eeb3c88a-c4cd-47a2-98fc-4a744852995c.PNG)

