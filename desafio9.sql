SELECT
COUNT(H.usuario_id) AS 'quantidade_musicas_no_historico'
FROM
SpotifyClone.Historico_reproducao AS H
WHERE
H.usuario_id = 1;