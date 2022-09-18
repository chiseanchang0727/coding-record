WITH login_table AS(
	SELECT userid, DATE(login_time) AS login_date 
	FROM dataset.rolelogin_example
),
payment_table AS(
	SELECT gid, price, DATE(regdate) AS payment_date 
    FROM dataset.payment_example
)

SELECT userid, login_date, COALESCE(price, 0) AS price
FROM(
	SELECT *
	FROM login_table
	LEFT JOIN payment_table
	ON login_table.userid = payment_table.gid 
	AND login_table.login_date = payment_table.payment_date
) AS m
ORDER BY login_date ASC
;