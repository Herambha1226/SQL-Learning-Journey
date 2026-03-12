# Below are the showing CRUD operations

# Using Database
use herambha;

# C -> Create
# Create Table 
create table people_informatiom(
id int primary key,
full_name varchar(50) not null,
email varchar(50) not null default 'example@gmail.com',
age int,
city varchar(50) default 'uppugundur'
);

# Inserting Data to the table
insert into people_information values(1,'Herambha','herambhaa@gmail.com',18,'uppugundur');

insert into people_information (id,full_name,age,city)
values(2,'Karthikeya',18,'gunturu');

insert into people_information (id,full_name,email,age)
values(3,'Guptha',"hello@example.com",19);

insert into people_information (id,full_name,age)
values(4,'Eswara Rao',19);

insert into people_information values(5,'HelloWorld','hello@World.gmail.com',22,'Ongole');

# R -> Reading which is key using (select)

# Seeing the inside data of a table 
select * from people_information;   

# Showing Particular columns 
select id,age from people_information;
select id,full_name,email from people_information;

# U -> Update the column
update people_information
set age = 20
where id = 0;

update people_information
set email = 'guptha11@gmail.com'
where full_name = 'Guptha';

# D -> Delete row 
delete from people_information
where age > 20;



