# Working on Aggregating Fuction
select avg(age) as `Average_Age` from people_information;

select count(id) from people_information;

select sum(age) from people_information;

select min(age) from people_information;

select max(age) from people_information;

select city,max(age) from people_information
group by city;

select city,max(age) from people_information
group by city
having max(age) > 18;


