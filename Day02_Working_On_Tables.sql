# Database Creating
create database herambha;

# Using herambha Database 
use herambha;

# Creating Table
/* example -> 1 */
create table student(
id int ,
name varchar(50)
);

/* example -> 2 */
create table information(
id int primary key,
name varchar(50),
age int,
phone_number varchar(20),
email varchar(50) unique
);

# Describe The Table ( it shows the structure of the table)
describe information;

# Alter is method modify or update or remove column and column type
alter table herambha.information 
add gender char(1);

alter table herambha.information
add city varchar(50);

# Rename Column Name 
alter table herambha.information
rename column name to full_name;

# Showing Tables which are having in database
show tables from herambha;

# Drop The Table From Database
drop table student;

show database;

use students;

create table student_info(
  id int,
  stu_name,
  stu_father_name,
  stu_father_phone,
  stu_email,
);

