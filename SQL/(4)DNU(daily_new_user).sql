/*After identified the creation date of each user,
we can get the number of new login user of each date
by calculating the user number of each creation date
*/
With user_creation_table AS(
	SELECT userid, MIN(login_date) AS user_creation_date
	FROM(
		SELECT userid, date(login_time) AS login_date
		FROM dataset.rolelogin_example
	) AS a
	GROUP BY userid
)

SELECT user_creation_date,COUNT(DISTINCT(userid)) AS DNU
FROM user_creation_table
GROUP BY user_creation_date
ORDER BY user_creation_date ASC;
