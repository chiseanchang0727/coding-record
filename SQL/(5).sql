SELECT payment_date,SUM(price) AS daily_revenue
FROM(
	SELECT gid AS userid, DATE(regdate) AS payment_date, price
	FROM dataset.payment_example
) AS f
GROUP BY payment_date
ORDER BY payment_date ASC
;