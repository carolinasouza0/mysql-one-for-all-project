SELECT 
CASE 
	WHEN us.user_age <= 30 THEN 'Até 30 anos'
    WHEN us.user_age BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
    ELSE 'Maior de 60 anos'
END AS faixa_etaria,
COUNT(DISTINCT us.user_id) AS total_pessoas_usuarias, 
COUNT(fav.user_id) AS total_favoritadas
FROM SpotifyClone.users AS us
LEFT JOIN SpotifyClone.fav_songs AS fav
ON us.user_id = fav.user_id
GROUP BY faixa_etaria
ORDER BY faixa_etaria;