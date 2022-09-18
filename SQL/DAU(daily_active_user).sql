SELECT login_date,COUNT(DISTINCT userid) AS DAU
FROM(
	SELECT userid, date(login_time) AS login_date
	FROM world.rolelogin_example
) AS f
GROUP BY login_date
;
