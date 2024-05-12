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