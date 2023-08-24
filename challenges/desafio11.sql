SELECT al.album_name AS album,
	COUNT(fav.song_id) AS favoritadas
FROM SpotifyClone.albums AS al
INNER JOIN SpotifyClone.songs AS s
ON al.album_id = s.album_id
INNER JOIN SpotifyClone.fav_songs AS fav
ON s.song_id = fav.song_id
GROUP BY al.album_name
ORDER BY favoritadas DESC, album DESC LIMIT 3;