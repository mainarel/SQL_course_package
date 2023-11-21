#12.1
#12.1.1
create procedure order_payment(order_id int, amount decimal, payment_date  datetime)
begin
update orders set status = 'paid' where order_id = id;
insert into transactions values (LAST_INSERT_ID(), order_id, amount, payment_date);
end
  
#12.1.2
create procedure active_products()
begin
select id, name, count, price from products
where count > 0 and active = TRUE
order by price;
end
  
#12.1.3
create procedure create_user(first_name varchar(50), last_name varchar(50), password varchar(50))
begin
insert into users values (LAST_INSERT_ID(), first_name, last_name, SHA(password));
end
  
#12.1.4
create procedure create_user(first_name varchar(50), last_name varchar(50), password varchar(50))
begin
insert into users(first_name, last_name, password) values ( TRIM(first_name), TRIM(last_name), SHA(password));
end
