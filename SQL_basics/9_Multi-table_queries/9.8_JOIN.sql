#9.8
#9.8.1
SELECT 
    p.id, 
    p.name, 
    p.price,
    cats.name as category
FROM 
    products as p 
JOIN categories as cats ON p.category_id = cats.id
WHERE
    cats.parent_id IS NULL
  
#9.8.2
select artists.name, genres.name as genre from artists
JOIN genres ON artists.genre_id = genres.id
where artists.is_group = True
order by genres.name, artists.name
  
#9.8.3
select genres.id, genres.name as name, count(artists.name) as artists from genres
join artists on artists.genre_id = genres.id
group by genres.id, name
order by artists DESC, genres.name;

#9.8.4
select cities.name as name, countries.name as country, cities.population as population from cities
join countries on cities.country = countries.id
where FIND_IN_SET('Europe', countries.pw) and cities.population >= 1000000
order by cities.population DESC;

#9.8.5
select categories.name as category, sum(products.count) as products from categories
join products on categories.id = products.category
where products.count != 0
group by categories.name
order by categories.name

#9.8.6
insert into genres values (6, 'Rap');
insert into artists values (11, 'Eminem',6, False);
