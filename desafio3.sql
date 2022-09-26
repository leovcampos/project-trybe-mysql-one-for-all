SELECT
  User.user_name AS "usuario",
  COUNT(Repro.user_id) AS "qt_de_musicas_ouvidas",
  ROUND(SUM(Track.duration) / 60, 2) AS "total_minutos"
FROM
	SpotifyClone.User User
INNER JOIN
	SpotifyClone.Reproduction Repro
ON User.user_id = Repro.user_id
INNER JOIN
	SpotifyClone.Track Track
ON Repro.track_id = Track.track_id
GROUP BY User.user_name
ORDER BY User.user_name;