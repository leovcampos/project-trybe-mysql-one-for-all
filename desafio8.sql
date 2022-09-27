SELECT
    Art.artist_name AS 'artista',
    Alb.album_name AS 'album'
FROM
    SpotifyClone.Artist Art
INNER JOIN
    SpotifyClone.Album Alb
ON
    Alb.artist_id = Art.artist_id
GROUP BY
    Art.artist_name
HAVING
    Art.artist_name = 'Elis Regina'
ORDER BY
    album;