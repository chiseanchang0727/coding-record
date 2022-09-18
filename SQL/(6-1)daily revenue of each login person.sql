SELECT *
FROM (
	SELECT userid, DATE(login_time) AS login_date 
	FROM dataset.rolelogin_example
) login_table 
LEFT JOIN (
	SELECT gid, price, DATE(regdate) AS payment_date 
    FROM dataset.payment_example 
) payment_table
ON login_table.userid = payment_table.gid 
AND login_table.login_date = payment_table.payment_date

;