#8.3
#8.3.1
select category_id, sum(count) as products from products
group by category_id
HAVING products  != 0
order by products;

#8.3.2
select year(date) as year, month(date) as month, sum(amount) as amount from deals
group by year, month
HAVING amount < 300000;

#8.3.3
select driver_id, round(avg(abs(diff))) as avg_diff from bus_logs
group by driver_id
having avg_diff >= 30;
  
#8.3.4
select user_id, count(*) as deals, sum(amount) as sum_amount, max(amount) as max_amount from deals
where status = 'closed'
group by user_id
having deals >= 3;
