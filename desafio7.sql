SELECT
art.nome AS artista,
alb.titulo AS album ,
COUNT(seg.usuario_id) AS seguidores
FROM  SpotifyClone.artista AS art
INNER JOIN SpotifyClone.album AS alb
ON art.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguindo_artista AS seg
ON art.artista_id = seg.artista_id
GROUP BY alb.album_id

;
