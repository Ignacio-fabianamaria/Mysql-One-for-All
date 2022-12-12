SELECT
M.nome_musica AS 'nome',
COUNT(H.musica_id) AS 'reproducoes'
FROM
SpotifyClone.Musica AS M
INNER JOIN
SpotifyClone.Historico_reproducao AS H
ON
M.musica_id = H.musica_id
INNER JOIN
SpotifyClone.Usuario As U
ON
H.usuario_id = U.usuario_id
INNER JOIN
SpotifyClone.Plano_assinatura AS P
ON
U.plano_id = P.plano_id
WHERE P.plano_id = 2 OR P.plano_id = 3
GROUP BY M.nome_musica
ORDER By nome;
