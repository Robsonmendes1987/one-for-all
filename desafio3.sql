SELECT  us.nome  AS usuario,  COUNT(his.id_cancao) AS qt_de_musicas_ouvidas,
 ROUND((SUM(can.duracao_segundos) / 60), 2) AS total_minutos
FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.historico_de_reproducoes AS his
ON his.usuario_id = us.usuario_id
INNER JOIN SpotifyClone.cancao AS can
ON his.id_cancao = can.id_cancao 
GROUP BY us.nome  ORDER BY us.nome ASC;
