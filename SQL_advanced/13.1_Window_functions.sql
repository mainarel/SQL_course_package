#13.1
#13.1.1
select revenues.month, revenues.year, SUM(revenues.revenue) OVER() as total_revenue from revenues;
  
#13.1.2
select revenues.month, revenues.year, 
  SUM(revenues.revenue) OVER(PARTITION BY revenues.year) as year_revenue from revenues
order by revenues.year, revenues.month;

#13.1.3
select revenues.month, revenues.year, 
  ROUND(revenues.revenue*100 / SUM(revenues.revenue) OVER(PARTITION BY revenues.year), 1) as month_percent  from revenues
order by revenues.year, revenues.month;

#13.1.4
select *, SUM(cities.population) OVER(PARTITION BY cities.country) as country_population from cities
order by country_population, cities.population;

#13.1.5
select *, SUM(products.price * products.count) OVER() as total from products;

#13.1.6
select *, 
     ROUND(products.count*products.price*100/ SUM(products.price * products.count) OVER(),1) as percent from products
order by percent DESC, products.id;

#13.1.7
select *, 
    SUM(cities.population) OVER(PARTITION BY cities.country) as country_population, 
    ROUND(cities.population * 100 / SUM(cities.population) OVER(PARTITION BY cities.country),2) as percent
    from cities
order by country_population, cities.population;

#13.1.8
select *, 
    ROUND(100 * cities.population / SUM(cities.population) OVER(), 2) as world_percent from cities
    order by world_percent DESC, cities.id;
