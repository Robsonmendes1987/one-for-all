SELECT  can.nome  AS cancao, COUNT(his.id_cancao) AS reproducoes
FROM SpotifyClone.cancao AS can
INNER JOIN SpotifyClone.historico_de_reproducoes AS his
ON can.id_cancao = his.id_cancao
GROUP BY his.id_cancao ORDER BY reproducoes DESC, cancao LIMIT 2 ;