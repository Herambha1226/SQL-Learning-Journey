# SubQueries 
# In SubQueries first runs subquery then subquery based main query run this is the working of SubQueries

# example -> 1
select full_name 
from people_information
where age > (
	select avg(age)
	from people_information
);

# example -> 2
select email 
from people_information
where city in (
	select city 
    from people_information
    where city = 'uppugundur'
);

# example -> 3information
select email
from people_information
where age = (
	select min(age)
    from information
);



