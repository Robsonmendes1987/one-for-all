SELECT
MAX(val.valor_plano) AS faturamento_maximo,
ROUND(AVG(val.valor_plano), 2) AS faturamento_medio,
ROUND((MIN(val.valor_plano)),2) AS faturamento_minimo,
ROUND((SUM( val.valor_plano)) , 2) AS faturamento_total
FROM SpotifyClone.plano AS val
INNER JOIN SpotifyClone.usuario AS us
ON us.plano_id = val.plano_id
;