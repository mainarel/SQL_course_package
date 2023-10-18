#9.5
#9.5.1
create table users_data (
    id int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    bio TEXT,
    FOREIGN KEY (id) REFERENCES users(id)
    );

#9.5.2
create table products_details (
    id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id INT UNSIGNED NOT NULL UNIQUE KEY,
    description TEXT,
    FOREIGN KEY (product_id) REFERENCES products(id)
    );

#9.5.3
insert into users values (LAST_INSERT_ID(), 'Антон', 'Дмитриев', NULL);
insert into users_details values  (LAST_INSERT_ID(), 'Антон родился в 1993 году.');

#9.5.4
insert into users_details values (15, 'Антон родился в 1993 году.');
update users_details set bio = 'Василиса Кац родилась в 1995 году.' where id = 4;
