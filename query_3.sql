/* The top 3 countries from which customers are originating */
SELECT c.country , COUNT(cu.customer_id) AS number_of_customers
FROM country c, address a, customer cu, city ci 
WHERE cu.address_id = a.address_id AND 
a.city_id = ci.city_id AND ci.country_id = c.country_id 
GROUP BY c.country 
ORDER BY COUNT(cu.customer_id) DESC 
LIMIT 3;