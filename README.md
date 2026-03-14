# MySQL Learning Journey

This repository documents my journey of learning **MySQL** from basic database concepts to advanced database features.
The goal of this repository is to build a strong foundation in **SQL queries, database design, and optimization techniques** used in real-world applications.

---

## 📚 Topics Covered

### Stage 1 — Database Fundamentals

* What is a Database
* DBMS vs RDBMS
* Tables, Rows, Columns
* Primary Key
* Foreign Key
* Relationships (One-to-One, One-to-Many, Many-to-Many)

---

### Stage 2 — Database Setup

* Installing MySQL
* Creating Databases
* Using Databases

Example:

```sql
CREATE DATABASE school;
USE school;
```

---

### Stage 3 — Table Operations

* CREATE TABLE
* ALTER TABLE
* DROP TABLE
* DESCRIBE TABLE

Example:

```sql
CREATE TABLE students(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);
```

---

### Stage 4 — CRUD Operations

CRUD stands for **Create, Read, Update, Delete**.

```sql
INSERT INTO students VALUES (1,'Rahul',21);

SELECT * FROM students;

UPDATE students
SET age = 22
WHERE id = 1;

DELETE FROM students
WHERE id = 1;
```

---

### Stage 5 — Filtering Data

* WHERE
* AND / OR
* LIKE
* IN
* BETWEEN
* ORDER BY
* LIMIT

Example:

```sql
SELECT *
FROM students
WHERE age > 20
ORDER BY age DESC;
```

---

### Stage 6 — Aggregate Functions

* COUNT()
* SUM()
* AVG()
* MIN()
* MAX()
* GROUP BY
* HAVING

Example:

```sql
SELECT department, AVG(salary)
FROM employees
GROUP BY department;
```

---

### Stage 7 — Joins

Used to combine data from multiple tables.

* INNER JOIN
* LEFT JOIN
* RIGHT JOIN

Example:

```sql
SELECT students.name, courses.course_name
FROM students
JOIN enrollments
ON students.id = enrollments.student_id;
```

---

### Stage 8 — Subqueries

A **subquery** is a query inside another query.

Example:

```sql
SELECT name
FROM students
WHERE age > (
    SELECT AVG(age)
    FROM students
);
```

---

### Stage 9 — Indexes & Query Optimization

Indexes help databases **search data faster**.

Example:

```sql
CREATE INDEX idx_name
ON students(name);
```

Query analysis:

```sql
EXPLAIN SELECT *
FROM students
WHERE name = 'Rahul';
```

---

### Stage 10 — Advanced MySQL

#### Views

A virtual table created from a query.

```sql
CREATE VIEW student_view AS
SELECT name, age
FROM students;
```

#### Stored Procedures

Reusable SQL logic stored in the database.

```sql
CREATE PROCEDURE show_students()
SELECT * FROM students;
```

#### Triggers

Automatic actions executed when data changes.

```sql
CREATE TRIGGER student_insert
AFTER INSERT ON students
FOR EACH ROW
INSERT INTO student_log VALUES('New student added');
```

---

### Stage 11 — Transactions & ACID Properties

Transactions ensure reliable database operations.

Example:

```sql
START TRANSACTION;

UPDATE accounts
SET balance = balance - 1000
WHERE id = 1;

UPDATE accounts
SET balance = balance + 1000
WHERE id = 2;

COMMIT;
```

#### ACID Properties

* **Atomicity** – All operations succeed or none
* **Consistency** – Database remains valid
* **Isolation** – Transactions do not interfere
* **Durability** – Committed data is permanent

---


---

## 🛠 Tools Used

* MySQL Server
* MySQL Workbench

---

## 🎯 Learning Goals

* Understand relational database concepts
* Write efficient SQL queries
* Learn database optimization techniques
* Understand real-world database systems

---

## 📈 Future Improvements

* Database Normalization
* Stored Functions
* Advanced Query Optimization
* Real-world Database Projects

---

## 👨‍💻 Author

**Herambha Karthikeya Guptha**

This repository is part of my continuous learning journey in **Databases, Machine Learning, and Software Development**.
