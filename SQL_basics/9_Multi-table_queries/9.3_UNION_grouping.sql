#9.3
#9.3.1
select type, sum(amount) as sum_amount from (select *, 'bank' as type from bank_transactions
union
select *, 'cash' from cashbox_transactions
union
select *, 'paypal' from paypal_transactions) rtable
group by type
order by sum_amount;
  
#9.3.2
select year(date) as year, month(date) as month, sum(amount) as month_amount from
(select * from bank_transactions 
union
 select * from cashbox_transactions
     union
         select * from paypal_transactions) rtable
            group by year, month
            order by year, month;

#9.3.3
select sum(amount) as all_money from
(select * from bank_transactions 
 union
 select * from cashbox_transactions
 union 
 select * from paypal_transactions) rtable;
