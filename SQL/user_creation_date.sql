SELECT userid, MIN(login_date) AS user_creation_date
FROM(
	SELECT userid, date(login_time) AS login_date
	FROM world.rolelogin_example
) AS a
GROUP BY userid
;
