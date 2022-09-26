SELECT COUNT( DISTINCT  can.id_cancao) AS cancoes,
 COUNT( DISTINCT al.album_id) AS albuns,
 COUNT(DISTINCT art.artista_id) AS artistas
FROM SpotifyClone.cancao AS can
 INNER JOIN SpotifyClone.artista AS art
ON can.artista_id = art.artista_id
INNER JOIN SpotifyClone.album AS al
ON can.artista_id = art.artista_id;