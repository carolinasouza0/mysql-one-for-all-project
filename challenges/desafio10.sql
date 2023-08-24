-- Descomente e altere as linhas abaixo:
CREATE TABLE SpotifyClone.fav_songs (
	fav_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    song_id INT NOT NULL,
    UNIQUE (user_id, song_id),
    FOREIGN KEY (user_id) REFERENCES SpotifyClone.users(user_id),
    FOREIGN KEY (song_id) REFERENCES SpotifyClone.songs(song_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.fav_songs (user_id, song_id)
    VALUES 
    (1, 3),
    (1, 6),
    (1, 10),
    (2, 4),
    (3, 1),
    (3, 3),
    (4, 4),
    (4, 7),
    (5, 2),
    (5, 10),
    (8, 4),
    (9, 6),
    (10, 3);