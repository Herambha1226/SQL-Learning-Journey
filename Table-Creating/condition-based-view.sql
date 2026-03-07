/* select particular columns  */
SELECT NAME,age FROM example;

/* Condition based select use */
-- example 1
SELECT * FROM example 
WHERE example.marks > 90;

-- example 2 
SELECT * FROM example
WHERE example.NAME = 'KARTHIKEYA';

/* select using multiple conditions */
-- example 1
SELECT * FROM example
WHERE example.age > 20 and marks < 90;

-- example 2 
SELECT * FROM example
WHERE example.id < 3 or marks < 80;

/* assending or desending order in data */ 
SELECT * FROM example 
ORDER BY age;
