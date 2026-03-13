# Index & Optimization
# the index can useful for faster query for example we have 10 million rows when we want one row the sql can runs full table it is known as Full Table Scan.
# instead of Full Table scan index based getting data is faster because it creates index first then index based search can do .

# example -> 1
create index idx_name
on people_information(full_name);

explain select * from people_information
where full_name = 'herambha';

show index from people_information;

drop index idx_name
on people_information(full_name);
