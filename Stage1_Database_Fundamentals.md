# Stage 1 — Database Fundamentals

## 1. What is a Database?

A **Database** is a structured collection of data stored electronically so it can be easily accessed, managed, and updated.

Example:

| id | name   | age |
|----|--------|-----|
| 1  | Rahul  | 20  |
| 2  | Priya  | 21  |

The above table represents data stored in a database.

---

# 2. What is DBMS?

**DBMS (Database Management System)** is software used to create and manage databases.

Functions of DBMS:

- Store data
- Retrieve data
- Update data
- Delete data
- Control access

Examples of DBMS:

- MySQL
- SQLite
- PostgreSQL
- Oracle

Example SQL Query:

```sql
SELECT * FROM students;
```

This query retrieves all data from the students table.

---

# 3. What is RDBMS?

**RDBMS (Relational Database Management System)** stores data in **tables** and establishes **relationships between tables**.

Examples of RDBMS:

- MySQL
- PostgreSQL
- SQLite
- SQL Server

Example structure:

Students Table

| id | name |
|----|------|
| 1  | Ravi |

Courses Table

| id  | course_name |
|-----|-------------|
| 101 | Python      |

Enrollment Table

| student_id | course_id |
|------------|----------|
| 1          | 101      |

Tables are connected using **relationships**.

---

# 4. Tables

A **table** is used to store data in rows and columns.

Example:

Students Table

| id | name | age |
|----|------|-----|
| 1  | Rahul| 20  |
| 2  | Ananya | 21 |

---

# 5. Rows

A **row** represents a single record in a table.

Example:

| id | name | age |
|----|------|-----|
| 1  | Rahul| 20  |

This represents one student.

---

# 6. Columns

A **column** represents a property of the data.

Example:

Columns in Students table:

- id
- name
- age

---

# 7. Primary Key

A **Primary Key** uniquely identifies each record in a table.

Rules:

- Must be unique
- Cannot contain NULL values

Example:

| id (Primary Key) | name |
|------------------|------|
| 1                | Ravi |
| 2                | Priya |

---

# 8. Foreign Key

A **Foreign Key** connects one table with another table.

Example:

Students Table

| id | name |
|----|------|
| 1  | Ravi |

Enrollments Table

| student_id |
|------------|
| 1          |

Here:

```
student_id references students.id
```

student_id is a **Foreign Key**.

---

# 9. Database Relationships

Relationships define how tables connect with each other.

There are three main types.

---

## 9.1 One-to-One Relationship

One record in Table A relates to one record in Table B.

Example:

Person Table

| id | name |
|----|------|
| 1  | Ravi |

Passport Table

| person_id | passport_no |
|-----------|-------------|
| 1         | A12345      |

One person → One passport.

---

## 9.2 One-to-Many Relationship

One record in Table A relates to multiple records in Table B.

Example:

Students Table

| id | name |
|----|------|
| 1  | Ravi |

Marks Table

| student_id | subject |
|------------|--------|
| 1          | Math   |
| 1          | Science|

One student → Many subjects.

---

## 9.3 Many-to-Many Relationship

Multiple records in Table A relate to multiple records in Table B.

This is implemented using a **bridge table**.

Example:

Students Table

| id | name |
|----|------|
| 1  | Ravi |
| 2  | Priya |

Courses Table

| id  | course_name |
|-----|-------------|
| 101 | Python      |
| 102 | SQL         |

Enrollments Table

| student_id | course_id |
|------------|-----------|
| 1          | 101       |
| 1          | 102       |
| 2          | 101       |

Students can take multiple courses, and courses can have multiple students.

---

# Example Database Structure

Students Table

| id | name | age |
|----|------|-----|

Courses Table

| id | course_name |

Enrollments Table

| student_id | course_id |

Relationship:

Students → Enrollments ← Courses

This represents a **Many-to-Many Relationship**.
