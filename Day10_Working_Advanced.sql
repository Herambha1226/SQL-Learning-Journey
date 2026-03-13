# Advanced SQL 

# 1. Views 
# creating
create view adult_people as 
select full_name,age
from people_information
where age > 19;

# showing the data
select * from adult_people;

# deleting view
drop view adult_people;


# Stored Procedure

# example -> 1
delimiter //
create procedure show_people()
begin
	select * from people_information;
end //

delimiter ;

call show_people()

# example -> 2
delimiter //
create procedure show_adult()
begin 
	select * from people_information
    where email = 'example@gmail.com';
end //

delimiter ;

call show_adult();


# Parameterized procedure
delimiter //
create procedure get_people(in _age int)
begin
	select * from people_information
    where age = _age;
end //

delimiter ;

call get_people(18);


# Trigger Concept
create trigger people_insert
after insert on people_information
for each row
insert into message
values ('New People Added');
