#4.4
#4.4.1
CREATE INDEX category_id ON products (category_id);
  
#4.4.2
create index base_query on calendar (city_id,date);
  
#4.4.3
drop index series on passports;
drop index number on passports;
create unique index series_number on passports (series,number);
  
#4.4.4
drop index category_id on products;
