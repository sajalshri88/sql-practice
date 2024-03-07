select * from sakila.customer_list;
select * from sakila.payment;
select * from sakila.payment where payment_id = 2; 
select * from sakila.customer_list where sid = 2 limit 3; 
select payment_id,amount from sakila.payment where staff_id = 2;  
select address,phone,name from sakila.customer_list where city="batna" and country="Algeria" ;
select * from sakila.customer_list where country like "%ria%";
select * from sakila.customer_list order by name asc;
select * from sakila.customer_list order by name desc;
select id,city,name from sakila.customer_list order by id asc, city desc;
select * from sakila.payment order by amount desc limit 5;
select * from sakila.customer_list order by id desc limit 5;
select * from sakila.payment;
select * from sakila.payment where amount between 2 and 9;
select * from sakila.customer_list;
select * from sakila.customer_list;
select	name, address,country from sakila.customer_list where country="Algeria";
select name,city,sid,country from sakila.customer_list where country ="china" order by sid desc;
select	* from sakila.customer_list where name like "%ario%";
select concat(name,"-",country) as namescountry from sakila.customer_list; 
select concat_ws("-",name,city,country) as pandetails from sakila.customer_list;
select length(name) from sakila.customer_list; 
select upper(city) as upcase from sakila.customer_list;
select lower(country) as lwcase from sakila.customer_list;
select left(name,5) as lefty from sakila.customer_list;
select right(name,5) as righty from sakila.customer_list;
select mid(name,2,7) as middy from sakila.customer_list;
select * from world.countrylanguage;
select language,count(countrycode) from world.countrylanguage group by language order by count(CountryCode); 
select * from sakila.rental;
select date(last_update) as date from sakila.rental;
select time(last_update) as timing from sakila.rental;
select minute(last_update) as minutee from sakila.rental;
select second(last_update) as sec from sakila.rental;
select datediff(return_date,rental_date) as datdiff from sakila.rental;
select dayname(rental_date) as Dname from sakila.rental;
select  rental_id,rental_date,inventory_id,staff_id,
 case
   when staff_id>=2 then "thats what want"
       else "nope"
   end as statusdetail
   from sakila.rental;
select rental_id,rental_date,inventory_id,staff_id,
case 
    when staff_id >=2 then "that what we need son"
    else "yeah nevermind"
    end as carecolumn
from sakila.rental;

    