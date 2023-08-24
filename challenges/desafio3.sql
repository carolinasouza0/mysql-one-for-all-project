SELECT user_name AS pessoa_usuaria,
	COUNT(ls.song_id) AS musicas_ouvidas,
    ROUND(SUM(s.duration_seconds/60), 2) AS total_minutos
FROM SpotifyClone.users AS us
INNER JOIN SpotifyClone.listened_songs As ls
ON us.user_id = ls.user_id
INNER JOIN SpotifyClone.songs AS s
ON ls.song_id = s.song_id
GROUP BY us.user_id
ORDER BY us.user_name;