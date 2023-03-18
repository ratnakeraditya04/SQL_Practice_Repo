# Write your MySQL query statement below
# SELECT date_id , make_name , count(DISTINCT lead_id) AS unique_leads , Count(DISTINCT partner_id) AS unique_partners FROM DailySales GROUP BY date_id , make_name Order BY date_id ;



# Attempting it Again this Problem -  

/* Most Important thing in this Problem is usage of Group By command.  */
SELECT date_id, make_name, 
COUNT(DISTINCT lead_id) AS unique_leads, 
COUNT(DISTINCT partner_id) AS unique_partners 
FROM DailySales 
GROUP BY date_id, make_name; 