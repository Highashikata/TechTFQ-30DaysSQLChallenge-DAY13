# TechTFQ-30DaysSQLChallenge-DAY13


Counting Employees SQL challenge

going through the challenge of SQL interview questions featured in the TechTFQ channel



In this repository we will be going through the SQL interview questions featured in the following YouTube video [SQL Interview Questions](https://www.youtube.com/watch?v=78DNY36XxQw&list=PLavw5C92dz9Hxz0YhttDniNgKejQlPoAn&index=14).

### Day 13: The problem statement: Counting Employees


**PROBLEM STATEMENT :**
Finding out the number of employees managed by each Manager.

![image](https://github.com/Highashikata/TechTFQ-30DaysSQLChallenge-DAY13/assets/96960411/4687f0d5-8dca-4580-a578-602ada8852d4)

**DDL &DML**
```
-- Find out the no of employees managed by each manager.
DROP TABLE IF EXISTS employee_managers;

CREATE TABLE employee_managers
  (
     id      INT,
     name    VARCHAR(20),
     manager INT
  );

INSERT INTO employee_managers
VALUES      (1,
             'Sundar',
             NULL);

INSERT INTO employee_managers
VALUES      (2,
             'Kent',
             1);

INSERT INTO employee_managers
VALUES      (3,
             'Ruth',
             1);

INSERT INTO employee_managers
VALUES      (4,
             'Alison',
             1);

INSERT INTO employee_managers
VALUES      (5,
             'Clay',
             2);

INSERT INTO employee_managers
VALUES      (6,
             'Ana',
             2);

INSERT INTO employee_managers
VALUES      (7,
             'Philipp',
             3);

INSERT INTO employee_managers
VALUES      (8,
             'Prabhakar',
             4);

INSERT INTO employee_managers
VALUES      (9,
             'Hiroshi',
             4);

INSERT INTO employee_managers
VALUES      (10,
             'Jeff',
             4);

INSERT INTO employee_managers
VALUES      (11,
             'Thomas',
             1);

INSERT INTO employee_managers
VALUES      (12,
             'John',
             15);

INSERT INTO employee_managers
VALUES      (13,
             'Susan',
             15);

INSERT INTO employee_managers
VALUES      (14,
             'Lorraine',
             15);

INSERT INTO employee_managers
VALUES      (15,
             'Larry',
             1);

SELECT *
FROM   employee_managers; 
```


**DQL**
```
SELECT *
FROM EMPLOYEE_MANAGERS;


SELECT 
	e1.NAME MANAGER, 
	COUNT(e2.manager) NO_OF_EMPLOYEES
FROM EMPLOYEE_MANAGERS e1
join EMPLOYEE_MANAGERS e2
on e1.id = e2.manager
group by e1.NAME
order by COUNT(e2.manager) DESC;
```
