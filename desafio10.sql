SELECT
    Tra.track_name AS 'nome',
    COUNT(Repro.user_id) AS 'reproducoes'
FROM
    SpotifyClone.Track Tra
INNER JOIN
    SpotifyClone.Reproduction Repro
ON
    Tra.track_id = Repro.track_id
INNER JOIN
    SpotifyClone.User Use
ON
    Use.user_id = Repro.user_id
WHERE
    Use.plan_id = 1 OR Use.plan_id = 3
GROUP BY
    nome
ORDER BY
    nome;