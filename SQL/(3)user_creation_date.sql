/*find the creation date(minimum login date) of each user
*/
SELECT userid, MIN(login_date) AS user_creation_date
FROM(
	SELECT userid, date(login_time) AS login_date
	FROM dataset.rolelogin_example
) AS a
GROUP BY userid
ORDEr BY user_creation_date ASC
;
