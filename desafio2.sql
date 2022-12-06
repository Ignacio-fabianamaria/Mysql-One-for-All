SELECT COUNT(DISTINCT(M.musica_id)) AS 'cancoes',
COUNT(DISTINCT(A.artista_id)) AS 'artistas',
COUNT(DISTINCT(AL.album_id)) AS 'albuns'
FROM SpotifyClone.Musica AS M 
INNER JOIN
SpotifyClone.Artista AS A 
INNER JOIN
SpotifyClone.Album AS AL 
ON A.artista_id = AL.artista_id;    