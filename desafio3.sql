SELECT U.nome_usuario AS 'usuario',
COUNT(H.usuario_id) AS 'qt_de_musicas_ouvidas',
ROUND(SUM(M.duracao_segundos)/ 60,2) AS 'total_minutos'
FROM 
SpotifyClone.Usuario AS U
INNER JOIN
SpotifyClone.Historico_reproducao AS H 
ON U.usuario_id = H.usuario_id
INNER JOIN
SpotifyClone.Musica AS M 
ON M.musica_id = H.musica_id
GROUP BY usuario
ORDER BY usuario; 