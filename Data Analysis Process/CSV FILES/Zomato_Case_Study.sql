													/* SQL CASE STUDY ON ZOMATO DATASET */
                                                    
-- Q-1) SELECT A PARTICULAR DATABASE
 USE zomato;

-- Q-2)  COUNT NUMBER OF ROWS
SELECT COUNT(*) FROM users;

-- Replicated Sample From Padas
-- Q-3) RETURN N RANDOM RECORDS
SELECT * FROM users ORDER BY rand() LIMIT 5;

-- TO FIND NULL VALUES
-- Q-4) FIND THE NULL VALUES WHERE CUSTOMER HAS NOT GIVING RATING TO RESTAURANTS IN ORDERS TABLE.
SELECT * FROM orders WHERE restaurant_rating IS NULL;


-- Q-5) FIND NUMBER OF  ORDERS PLACED BY EACH CUSTOMER
SELECT u1.name,COUNT(*) AS '#orders' FROM orders as o1 
INNER JOIN users as u1 
ON o1.user_id = u1.user_id 
GROUP BY u1.user_id; 	