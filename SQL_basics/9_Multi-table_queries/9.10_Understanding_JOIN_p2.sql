#9.10
#9.10.1
select authors.id as author_id, books.id as book_id, authors.last_name, authors.first_name, books.name  from authors
    LEFT JOIN books ON authors.id = books.author_id
    
UNION

select authors.id as author_id, books.id as book_id, authors.last_name, authors.first_name, books.name  from authors
    RIGHT JOIN books ON authors.id = books.author_id

order by author_id ,book_id;
  
#9.10.2
select countries.name as country, cities.name as city from  countries
LEFT JOIN cities ON countries.id = cities.country

UNION

select countries.name, cities.name from  countries
RIGHT JOIN cities ON countries.id = cities.country

order by country, city;
