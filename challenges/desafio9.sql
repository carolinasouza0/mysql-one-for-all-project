SELECT COUNT(us.user_id) AS musicas_no_historico
FROM SpotifyClone.users AS us
INNER JOIN SpotifyClone.listened_songs AS ls
ON us.user_id = ls.user_id
WHERE us.user_name = 'Barbara Liskov'
GROUP BY ls.user_id;