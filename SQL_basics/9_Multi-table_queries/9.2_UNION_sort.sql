#9.2
#9.2.1
(select id, category_id, date, text, 'opened' as status from advs where user_id = 45)
union
(select id, category_id, date, text, 'closed' from closed_advs where user_id = 45)
order by date, id;

#9.2.2
(select date, amount, 'bank' as pt from bank_transactions)
union
(select date, amount, 'cash' from cashbox_transactions)
union
(select date, amount, 'paypal' from paypal_transactions)
order by date desc;
  
#9.2.3
(select id, name, rating, 'Action' as genre from games
where category_id = 1
order by rating desc
limit 2)
union
(select id, name, rating, 'RPG' from games
where category_id = 2
order by rating desc
limit 2)
union
(select id, name, rating, 'Adventure' from games
where category_id = 3
order by rating desc
limit 2)
union
(select id, name, rating, 'Strategy' from games
where category_id = 4
order by rating desc
limit 2)
union
(select id, name, rating, 'Shooter' from games
where category_id = 5
order by rating desc
limit 2)
order by rating desc, id
