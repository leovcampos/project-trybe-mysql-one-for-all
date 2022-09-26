SELECT
  COUNT(DISTINCT tra.track_id) AS cancoes,
  COUNT(DISTINCT art.artist_id) AS artistas,
  COUNT(DISTINCT alb.album_id) AS albuns
FROM
  SpotifyClone.Track AS tra
  INNER JOIN SpotifyClone.Album AS alb
  ON alb.album_id = tra.album_id
  INNER JOIN SpotifyClone.Artist AS art
  ON art.artist_id = alb.artist_id;