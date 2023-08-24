SELECT us.user_name AS pessoa_usuaria,
	CASE 
		WHEN MAX(YEAR(ls.history)) >= 2021 THEN 'Ativa' 
		ELSE 'Inativa'
	END AS status_pessoa_usuaria
FROM SpotifyClone.listened_songs AS ls
INNER JOIN SpotifyClone.users AS us
ON ls.user_id = us.user_id
GROUP BY ls.user_id
ORDER BY us.user_name;