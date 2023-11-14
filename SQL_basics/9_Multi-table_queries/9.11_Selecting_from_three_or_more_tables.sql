#9.11
#9.11.1
select users.last_name, users.first_name, roles.name as role, departments.name as department from users
LEFT JOIN departments ON users.department_id = departments.id
LEFT JOIN roles ON users.role_id = roles.id

order by users.last_name, users.first_name;

#9.11.2
select cars.id, marks.name as mark, models.name as model, cars.price from cars
LEFT JOIN models ON cars.model_id = models.id
LEFT JOIN marks ON models.mark_id = marks.id

order by cars.price DESC;

#9.11.3
select marks.name as mark, sum(cars.price) as sum from marks
LEFT JOIN models ON models.mark_id = marks.id
LEFT JOIN cars ON cars.model_id = models.id

GROUP BY marks.name
order by marks.name;
  
#9.11.4
select songs.id, songs.name, albums.name as album, artists.name as artist from songs
LEFT JOIN albums ON songs.album_id = albums.id
LEFT JOIN artists ON albums.artist_id = artists.id
LEFT JOIN genres ON artists.genre_id = genres.id
WHERE genres.name in('Rock','Metal') and albums.year BETWEEN 2008 and 2010

order by songs.name;

#9.11.5
select genres.name as name, count(songs.name) as songs from genres
LEFT JOIN artists ON artists.genre_id  = genres.id
LEFT JOIN albums ON albums.artist_id = artists.id
JOIN songs ON songs.album_id = albums.id
  
GROUP BY genres.name
order by genres.name;
  
#9.11.6
select DATE_FORMAT(calls.date, '%H:%i') as time, 
        CONCAT_WS(' ', managers.first_name, managers.last_name) as manager,
           CONCAT_WS(' ', clients.first_name, clients.last_name) as client,
               companies.name as company,
                  SEC_TO_TIME(calls.duration_sec) as duration from calls
LEFT JOIN  clients ON calls.client_id = clients.id          
LEFT JOIN  managers ON calls.manager_id = managers.id
LEFT JOIN companies ON companies.id = clients.company_id
WHERE calls.date like '2018-04-05%'
ORDER BY calls.date, duration;

#9.11.7
select companies.name as company, SEC_TO_TIME(IFNULL(sum(calls.duration_sec), 0)) as duration from companies
LEFT JOIN clients ON clients.company_id = companies.id
LEFT JOIN calls ON calls.client_id = clients.id
GROUP BY companies.name
order by duration;

#9.11.8
select managers.first_name, managers.last_name, DATE_FORMAT(SEC_TO_TIME(AVG(duration_sec)),'%H:%i:%s') as avg_duration from managers
LEFT JOIN calls ON calls.manager_id = managers.id
LEFT JOIN clients ON clients.id = calls.client_id
WHERE company_id = 2
GROUP BY  managers.first_name, managers.last_name
order by avg_duration DESC;
