SELECT COUNT(DISTINCT s.song_id) AS cancoes, 
    COUNT(DISTINCT ar.artist_id) AS artistas, 
    COUNT(DISTINCT al.album_id) AS albuns
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.albums AS al
ON s.album_id = al.album_id
INNER JOIN SpotifyClone.artists AS ar
ON ar.artist_id = al.artist_id;