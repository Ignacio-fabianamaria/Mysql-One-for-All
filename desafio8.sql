SELECT
A.artista_nome AS 'artista',
B.titulo AS 'album'
FROM
SpotifyClone.Artista AS A
INNER JOIN
SpotifyClone.Album AS B
ON A.artista_id = B.artista_id
GROUP By A.artista_nome, B.titulo
HAVING A.artista_nome = 'Elis Regina'
ORDER By album;