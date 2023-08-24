SELECT ar.artist_name AS artista,
	CASE 
		WHEN COUNT(fav.song_id) >= 5 THEN 'A'
        WHEN COUNT(fav.song_id) IN (3, 4) THEN 'B'
        WHEN COUNT(fav.song_id) IN (1, 2) THEN 'C'
		ELSE '-'
	END AS ranking
FROM SpotifyClone.artists AS ar 
INNER JOIN SpotifyClone.albums AS al
ON ar.artist_id = al.artist_id
INNER JOIN SpotifyClone.songs AS s
ON s.album_id = al.album_id
LEFT JOIN SpotifyClone.fav_songs AS fav
ON fav.song_id = s.song_id
GROUP BY ar.artist_name
ORDER BY 
	CASE
		WHEN ranking = '-' THEN 1
        ELSE 0
	END,
	ranking,
    artista;