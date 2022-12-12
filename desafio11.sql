SELECT
M.nome_musica AS 'nome_musica',
CASE
   WHEN M.nome_musica LIKE '%Bard%' 
     THEN REPLACE( M.nome_musica, 'Bard','QA')
   WHEN M.nome_musica LIKE '%Amar%' 
     THEN REPLACE( M.nome_musica, 'Amar','Code Review')
   WHEN M.nome_musica LIKE '%Pais%' 
     THEN REPLACE( M.nome_musica, 'Pais','Pull Requests')
   WHEN M.nome_musica LIKE '%SOUL%' 
     THEN REPLACE( M.nome_musica, 'SOUL','CODE')
   WHEN M.nome_musica LIKE '%SUPERSTAR%' 
     THEN REPLACE( M.nome_musica, 'SUPERSTAR','SUPERDEV')
END AS 'novo_nome'
FROM
SpotifyClone.Musica AS M
WHERE M.nome_musica LIKE '%Bard%'
OR M.nome_musica LIKE '%Amar%'
OR M.nome_musica LIKE '%Pais%'
OR M.nome_musica LIKE '%SOUL%'
OR M.nome_musica LIKE '%SUPERSTAR%'
ORDER By nome_musica DESC;


