#10.6
#10.6.1
insert ignore into closed_advs (
      select id, user_id, category_id, text, date from advs
      where closed = 1
      );

#10.6.2
replace into cached_cars (select cars. id, CONCAT(marks.name,' ', models.name,', ', cars.color) as car, cars.price from cars
left join models on models.id = cars.model_id
left join marks on marks.id = models.mark_id                          
                         );  
#10.6.3
select * from products
