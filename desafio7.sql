SELECT
A.artista_nome AS 'artista',
B.titulo AS 'album',
COUNT(C.artista_id) AS 'seguidores'
FROM
SpotifyClone.Artista AS A
INNER JOIN
SpotifyClone.Album AS B
ON A.artista_id = B.artista_id
INNER JOIN
SpotifyClone.Usuario_segue_artista AS C
ON
A.artista_id = C.artista_id
GROUP By A.artista_nome, B.titulo
ORDER By seguidores DESC, artista, album;