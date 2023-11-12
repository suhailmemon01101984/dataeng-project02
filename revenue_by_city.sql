--get revenue by city
select c.city, sum(p.amount) as revenue

from city c join address a on c.city_id=a.city_id
join customer cust on a.address_id=cust.address_id
join payment p on cust.customer_id=p.customer_id
join rental r on p.rental_id=r.rental_id
join inventory i on r.inventory_id=i.inventory_id
join film f on i.film_id=f.film_id

group by c.city

order by revenue desc