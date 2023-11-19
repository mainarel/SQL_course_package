#10.5
#10.5.1
SELECT id, name, rating, genre FROM (
        (SELECT id, name, rating, 'Action' as genre FROM games
        WHERE category_id=1
        ORDER BY rating DESC 
        LIMIT 2)
    UNION 
        (SELECT id, name, rating, 'RPG' as genre FROM games
        WHERE category_id=2
        ORDER BY rating DESC 
        LIMIT 2)
    UNION 
        (SELECT id, name, rating, 'Adventure' as genre FROM games
        WHERE category_id=3
        ORDER BY rating DESC 
        LIMIT 2)
    UNION 
        (SELECT id, name, rating, 'Strategy' as genre FROM games
        WHERE category_id=4
        ORDER BY rating DESC 
        LIMIT 2)
    UNION 
        (SELECT id, name, rating, 'Shooter' as genre FROM games
        WHERE category_id=5
        ORDER BY rating DESC
        LIMIT 2)
    ORDER BY rating DESC, id LIMIT 5) as top_games
ORDER BY rating;
  
#10.5.2
select * from (
select date, amount, payment_type from (
    (select date, amount, 'bank' as payment_type from bank_transactions)
    UNION
    (select date, amount, 'cash' as payment_type from cashbox_transactions)
    UNION
    (select date, amount, 'paypal' as payment_type from paypal_transactions)
    ) as transactions
    order by date DESC
    limit 3
    ) as transactions_1
    order by date ASC;

#10.5.3
select last_names.last_name, first_names.first_name, last_names.sex from last_names
join first_names on first_names.sex = last_names.sex
order by sex, last_name, first_name
