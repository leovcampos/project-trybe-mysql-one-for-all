SELECT
    User.user_name AS "usuario",
    IF(MAX(Repro.reproduction_date) >= '2021-01-01 00:00:00', 'Usuário ativo', 'Usuário inativo') AS 'status_usuario'
FROM SpotifyClone.Reproduction Repro
INNER JOIN 
    SpotifyClone.User User
ON 
    User.user_id = Repro.user_id
GROUP BY
    User.user_name
ORDER BY
    User.user_name;
