/* Get the total and average values of rentals per month per year per store. */

SELECT s.store_id, YEAR(r.rental_date) AS rental_year, MONTH(r.rental_date) AS rental_month, SUM(p.amount) AS total_rental, AVG(p.amount) AS average_rental 
FROM store s, inventory i, rental r, payment p
WHERE r.inventory_id = i.inventory_id AND 
i.store_id = s.store_id AND 
p.rental_id = r.rental_id 
GROUP BY s.store_id, rental_month  
ORDER BY s.store_id, rental_month, rental_year;