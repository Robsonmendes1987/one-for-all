SELECT   us.nome AS usuario, IF ( MAX(YEAR(repro.data_reproducao))   >= 2021 , 'Usuário ativo',  'Usuário inativo') AS status_usuario 
   FROM SpotifyClone.historico_de_reproducoes AS repro
   
   
INNER JOIN SpotifyClone.usuario  AS us 


ON   us.usuario_id  = repro.usuario_id 
GROUP BY us.nome
ORDER BY us.nome ASC;