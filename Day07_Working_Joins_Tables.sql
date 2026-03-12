# Joins Using

# inner join
select people_information.name,information.name
from people_information
inner join information on people_information.id = information.id;

select people_information.name,information.name
from people_information
left join information on people_information.id = information.id;

select people_information.name,information.name
from people_information
right join information on people_information.id = information.id;

select people_information.name,information.name
from people_information
full join information on people_information.id = information.id;
