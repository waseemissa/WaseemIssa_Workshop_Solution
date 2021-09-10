/* Get the top 3 customers who rented the highest number of movies within a given year. example year = 2005 */

SELECT c.first_name, c.last_name, COUNT(r.rental_id) as total_rental 
FROM customer c, rental r 
WHERE c.customer_id = r.customer_id AND YEAR(r.rental_date) LIKE '2005' 
GROUP BY c.first_name 
ORDER BY total_rental DESC 
LIMIT 3;