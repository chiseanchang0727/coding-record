SELECT login_date,COUNT(DISTINCT userid) AS DAU
FROM(
	SELECT userid, date(login_time) AS login_date
	FROM dataset.rolelogin_example
) AS f
GROUP BY login_date
ORDER BY login_date ASC
;
