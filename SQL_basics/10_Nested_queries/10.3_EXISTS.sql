#10.3
#10.3.1
select * from categories 
where EXISTS (select products.id from products where products.category = categories.id and products.count > 0)
order by categories.name;

#10.3.2
select users.id, users.first_name, users.last_name from users where not exists(
    select users.id from users_roles where users.id = users_roles.user_id 
)
order by users.id;

#10.3.3
select songs.name,songs.album_id from songs where exists 
(select id from albums where albums.id=songs.album_id and year=2008)
order by songs.name;
