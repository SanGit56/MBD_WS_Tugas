-- buat table masukin data
drop table if exists accounts;

create table accounts (
    id int generated by default as identity,
    name varchar(100) not null,
    balance dec(15,2) not null,
    primary key(id)
);

insert into accounts(name,balance)
values('Bob',10000);

insert into accounts(name,balance)
values('Alice',10000);

-- function transfer
create or replace procedure transfer(
   sender int,
   receiver int, 
   amount dec
)
language plpgsql    
as $$
declare
	saldo_skrg dec
begin
	-- saldo saat ini
	select balance into saldo_skrg
	from account
	where id = sender;
	
	if (saldo_skrg >= amount) then
		-- subtracting the amount from the sender's account 
		update accounts 
		set balance = balance - amount 
		where id = sender;

		-- adding the amount to the receiver's account
		update accounts 
		set balance = balance + amount 
		where id = receiver;

		commit;
	else
		RAISE EXCEPTION "saldo kurang";
	end if
end;$$

-- panggil procedure
CALL transfer(1,2,1000);
SELECT * FROM accounts

-- buat function
create or replace function get_film_count(len_from int, len_to int)
returns int
language plpgsql
as
$$
declare
   film_count integer;
begin
   select count(*) 
   into film_count
   from film
   where length between len_from and len_to;
   
   return film_count;
end;
$$;

-- panggil function
select get_film_count(
    len_from => 40, 
     len_to => 90
);