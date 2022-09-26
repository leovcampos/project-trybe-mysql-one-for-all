SELECT
    Tra.track_name AS 'cancao',
    COUNT(Repro.reproduction_date) AS 'reproducoes'
FROM
    SpotifyClone.Track Tra
INNER JOIN
    SpotifyClone.Reproduction Repro
ON
    Tra.track_id = Repro.track_id
GROUP BY
    Tra.track_name
ORDER BY
    reproducoes DESC,
    cancao
LIMIT 2;