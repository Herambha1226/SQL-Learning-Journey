# Filtering Data
select * from people_information
where age = 19;

select * from people_information
where age > 19 and city = 'uppugundur';

select * from people_information
where age > 19 or city = 'uppugundur';

select * from people_information
where age between 18 and 20;

select * from people_information
where city in ('uppugundur','guntur');

select * from people_information
where city like 'gun%';

select * from people_information
order by full_name desc
limit 2;
