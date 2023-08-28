#2.1
  
Insert into orders (id, products, sum)
values (6, 3, 3000);

insert into products (id, name, count, price)
values (7, 'Xbox', 3, 30000);

insert into products (id, name, count, price)
values (8, 'iMac 21', 0, 100100);

insert into users (id, first_name, last_name, birthday)
values (9, 'Антон','Пепеляев', '1992-07-12');

insert into users set id = 10, first_name='Никита', last_name = 'Петров';

insert into products (id, name, count, price) values
(8, 'iPhone 7', 1, 59990),
(9, 'iPhone 8', 3, 64990),
(10, 'iPhone X', 2, 79900);
