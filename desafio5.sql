SELECT 
M.nome_musica AS 'cancao',
COUNT(H.musica_id) AS 'reproducoes'
FROM 
SpotifyClone.Musica AS M 
INNER JOIN
SpotifyClone.Historico_reproducao AS H 
ON H.musica_id = M.musica_id  
GROUP By H.musica_id
ORDER By reproducoes DESC, cancao
LIMIT 2;