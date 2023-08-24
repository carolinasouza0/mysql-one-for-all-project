SELECT a.artist_name AS artista, 
	al.album_name AS album, 
    COUNT(fl.user_id) AS pessoas_seguidoras
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS al
ON a.artist_id = al.artist_id
INNER JOIN SpotifyClone.followed_artists AS fl
ON al.artist_id = fl.artist_id
GROUP BY al.album_id
ORDER BY pessoas_seguidoras DESC, a.artist_name, album_name;