#9.12
#9.12.1
delete from products where category_id in(2,17);
delete from categories where id in(2,17);

#9.12.2
delete from categories where id in (2,17);

#9.12.3
delete from categories where id in (2,17);
  
#9.12.4
update products set category_id = 18 where id in(3,4,9);
update products set category_id = 19 where id in(19);
delete from categories where id = 3;

delete from products where id = 2;
delete from categories where id = 2;
