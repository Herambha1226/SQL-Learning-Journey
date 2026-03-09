# like , in ,update, delete, limit, min, max,avg,sum,count,between using

select * from people_tel as p
where p.`SP ID` in ('SP01','SP02','SP11','SP15');

# like 
# example 1
select * from products p 
where p.`Product` like '%Choco%';

#example 2 
select * from people_tel as p
where p.`Sales Person` like 'S%';

# update 
# example 1
select * from example;

update example e
set e.`marks` = 100
where e.`NAME` = 'KARTHIKEYA';


# delete
delete from example 
where `name` = 'karthik';

# limit
select * from example 
where age > 17
limit 2;

# min & max 
-- example 1
select min(marks),max(marks) from example;
-- example 2
select min(marks) as 'Lowest Marks' ,max(marks) as 'Highest Marks' from example; 

# average,sum,count 
select avg(marks) as 'Average Marks' ,count(id) as 'Count Members', sum(marks) as "Sum Of all members marks" from example; 

# between
select * from example
where marks between 96 and 100;

# Alter
alter table example add performance text;

update example
set `performance` = case
	when `marks` > 96 then 'good'
    when `marks` < 96 and `marks` > 94 then 'average'
    else 'below average'
end;

select * from example; 