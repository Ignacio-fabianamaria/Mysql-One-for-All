SELECT
DISTINCT U.nome_usuario AS 'usuario',
If(YEAR(MAX(H.data_reproducao)) >= '2021', 'Usuário ativo', 'Usuário inativo') AS 'status_usuario'
FROM
SpotifyClone.Usuario AS U
INNER JOIN
SpotifyClone.Historico_reproducao AS H
ON U.usuario_id = H.usuario_id
GROUP BY usuario
ORDER BY usuario ASC; 