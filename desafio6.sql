SELECT
    MIN(Plan.plan_value) AS 'faturamento_minimo',
    MAX(Plan.plan_value) AS 'faturamento_maximo',
    ROUND(AVG(Plan.plan_value), 2) AS 'faturamento_medio',
    SUM(Plan.plan_value) AS 'faturamento_total'
FROM
    SpotifyClone.User User
INNER JOIN
    SpotifyClone.Plan Plan
ON
    Plan.plan_id = User.plan_id;