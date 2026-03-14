create table bank_account(
id int primary key,
name varchar(50),
balance int
);

insert into bank_account values (1,'Guptha',6000);
insert into bank_account values (2,'Karthikeya',4000);

start transaction;

update bank_account
set balance = balance - 1000
where id = 1;

update bank_account
set balance = balance + 1000
where id = 2;

commit;

select * from bank_account;