# Write your MySQL query statement below

SELECT stock_name, SUM(
CASE
    WHEN operation = 'BUY' THEN -1 * price
    ELSE price
END ) AS capital_gain_loss
FROM Stocks 
GROUP BY stock_name 
 