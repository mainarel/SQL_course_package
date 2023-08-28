#2.3

delete from visits;

delete from products where count = 0;

delete from cars where year <=2010;

Delete from cars where country = 'KR' or power <80;

delete from cars where power not between 81 and 129 and country = 'JP';

TRUNCATE TABLE cars;
