SELECT art.nome AS artista ,  alb.titulo AS album
FROM SpotifyClone.artista AS art 
INNER JOIN SpotifyClone.album AS alb
ON alb.artista_id = 2 AND art.artista_id = 2 ;