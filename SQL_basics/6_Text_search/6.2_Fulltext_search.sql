#6.2
#6.2.1
select id, name, price from products 
    where 
        match(name) against ('+Джинсы +Mango' in boolean mode) and
        (find_in_set('36', sizes) or find_in_set('38', sizes)) and
        count != 0;

#6.2.2
select id, subject from forum where match(subject, post) against ('ошибка проблема');

#6.2.3
select id, subject from forum where match(subject, post) against ('ошибк* проблем*' in boolean mode);  

#6.2.4
select * from products 
    where
        match (name) against ('джинсы жилет -mango' in boolean mode);

#6.2.5
SELECT id, name, price FROM products 
WHERE MATCH(name) AGAINST ('"Джинсы Mango"' IN BOOLEAN MODE)
order by price;

  
#6.2.6
select id, name, price from products 
    where
        (match(name) against ('+джинсы +mango' in boolean mode) or
        match(name) against ('+юбка +mango' in boolean mode)) and
        count > 0
        order by price;
