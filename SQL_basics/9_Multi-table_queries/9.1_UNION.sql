#9.1
#9.1.1
select * from bank_transactions
union
select * from cashbox_transactions;

#9.1.2
select date_format(date, '%d.%m.%y') as date, amount, 'bank' as payment_type from bank_transactions 
where client_id= 56
union
select date_format(date, '%d.%m.%y') as date, amount, 'cash' from cashbox_transactions 
where client_id= 56;

#9.1.3
select (id * 10 + 1) as id, first_name, last_name, age, NULL as birthday, sex from users
union
select (id * 10 + 2) as id, SUBSTRING_INDEX(name,' ', 1) as first_name, SUBSTRING_INDEX(name,' ', -1) 
  as last_name, NULL as age, birthday, sex from members;

#9.1.4
select LEFT(number, 6) as number, RIGHT(number,2) as region, mark, model from cars
union
select number, '39' as region, mark, model from region39
union
select LOWER(number) as number, region, mark, model from avto
union
select LEFT(number, 6) as number, RIGHT(number,2) as region, SUBSTRING_INDEX(car,' ', 1) as mark, SUBSTRING_INDEX(car,' ', -1) as model from autos;
