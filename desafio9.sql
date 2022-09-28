SELECT
    COUNT(Repro.user_id) AS 'quantidade_musicas_no_historico'
FROM
    SpotifyClone.Reproduction Repro
WHERE
    Repro.user_id = 1;