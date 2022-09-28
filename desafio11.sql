SELECT
    Tra.track_name AS 'nome_musica',
    REPLACE(
        REPLACE(
            REPLACE(
                REPLACE(
                    REPLACE(Tra.track_name, 'Bard', 'QA'),
            'Amar','Code Review'),
            'Pais', 'Pull Requests'),
            'SOUL', 'CODE'),
            'SUPERSTAR', 'SUPERDEV')
    AS 'novo_nome'  
FROM
    SpotifyClone.Track Tra
WHERE
    Tra.track_name LIKE '%Bard%'
    OR Tra.track_name LIKE '%Amar%'
    OR Tra.track_name LIKE '%Pais%'
    OR Tra.track_name LIKE '%SOUL%'
    OR Tra.track_name LIKE '%SUPERSTAR%'
ORDER BY
    nome_musica DESC;