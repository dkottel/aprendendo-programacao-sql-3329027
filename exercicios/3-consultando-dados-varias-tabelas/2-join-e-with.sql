-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"
SELECT
tra.TrackId AS ID,
tra.Name AS musica,
alb.Title AS album,
art.Name AS artista
FROM
tracks AS tra
INNER JOIN albums AS alb ON tra.AlbumId = alb.AlbumId
INNER JOIN artists AS art ON art.ArtistId = alb.ArtistId


-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso
WITH musica AS (
SELECT
tra.TrackId AS ID,
tra.Name AS musica,
alb.Title AS album,
art.Name AS artista
FROM
tracks AS tra
INNER JOIN albums AS alb ON tra.AlbumId = alb.AlbumId
INNER JOIN artists AS art ON art.ArtistId = alb.ArtistId)

SELECT
artista,
COUNT(musica) AS qnt_total_musica
FROM
musica
WHERE
artista LIKE 'Caetano%';