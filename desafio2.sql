SELECT
  COUNT(DISTINCT spo.music_id) AS cancoes,
  COUNT(DISTINCT art.artist_id) AS artistas,
  COUNT(DISTINCT alb.album_id) AS albuns
FROM
  SpotifyClone.musics AS spo
  INNER JOIN SpotifyClone.albums AS alb
  ON al.album_id = m.album_id
  INNER JOIN SpotifyClone.artists AS art
  ON ar.artist_id = al.artist_id;