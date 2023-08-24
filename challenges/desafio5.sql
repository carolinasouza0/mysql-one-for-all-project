SELECT s.song_name AS cancao, COUNT(*) AS reproducoes 
FROM SpotifyClone.listened_songs AS ls
INNER JOIN SpotifyClone.songs AS s
ON s.song_id = ls.song_id 
GROUP BY s.song_id
ORDER BY reproducoes DESC, cancao LIMIT 2;