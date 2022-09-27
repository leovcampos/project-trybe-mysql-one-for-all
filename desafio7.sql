SELECT
    Art.artist_name AS 'artista',
    Alb.album_name AS 'album',
    COUNT(Fol.user_id) AS 'seguidores'
FROM
    SpotifyClone.Artist Art
INNER JOIN
    SpotifyClone.Album Alb
ON
    Alb.artist_id = Art.artist_id
INNER JOIN
    SpotifyClone.Followers Fol
ON
    Fol.artist_id = Art.artist_id
GROUP BY
    Alb.album_id
ORDER BY 
    seguidores DESC,
    artista,
    album;
