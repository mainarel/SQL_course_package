#9.7
#9.7.1
alter table artists 
add column genre_id INT UNSIGNED NULL;

alter table artists 
add foreign key (genre_id) references genres(id);
  
#9.7.2
alter table products  
add foreign key (category_id) references categories(id);

#9.7.3
create table calendar (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    doctor_id INT UNSIGNED NOT NULL,
    client_id INT UNSIGNED NOT NULL,
    visit_date DATETIME NOT NULL,
    FOREIGN KEY (doctor_id) REFERENCES users(id),
    FOREIGN KEY (client_id) REFERENCES users(id)
    );
  
#9.7.4
insert into calendar values 
    (LAST_INSERT_ID(), 7, 2, '2017-05-20 12:30:00'),
    (LAST_INSERT_ID(),7, 2, '2017-05-21 12:30:00'),
    (LAST_INSERT_ID(),7, 2, '2017-05-22 12:30:00'),
    (LAST_INSERT_ID(),7, 2, '2017-05-23 12:30:00'),
    (LAST_INSERT_ID(),7, 2, '2017-05-24 12:30:00');
