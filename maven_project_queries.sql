-- Question 1
select first_name, last_name, email, store_id 
from customer;


-- Question 2
select store_id, count(*) as inventory_items 
from inventory
group by store_id;


-- Question 3
select store_id, count(case when active = 1 then customer_id else null end) as active_customers
from customer
group by store_id;


-- Question 4
select count(email) as email_addresses from customer;


-- Question 5
select store_id, count(distinct film_id) as unique_titles 
from inventory 
group by store_id;

select count(distinct name) as unique_categories 
from category;


-- Question 6
select min(replacement_cost) as least_expensive, max(replacement_cost) as most_expensive, avg(replacement_cost) as average_cost
from film;


-- Question 7
select max(amount) as max_payment, avg(amount) as average_payment
from payment;

-- Question 8
select customer_id, count(rental_id) as rentals 
from rental
group by 1
order by 2 desc;