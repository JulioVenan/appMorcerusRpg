SELECT usuarios.usuario AS 'usuario',if(max(year(historico_de_reproducoes.data_reproducao)) >=2021,'Usuário ativo','Usuário inativo') AS 'status_usuario'
FROM SpotifyClone.usuarios
INNER JOIN SpotifyClone.historico_de_reproducoes ON usuarios.usuario_id = historico_de_reproducoes.usuario_id
GROUP BY usuarios.usuario ORDER BY usuarios.usuario