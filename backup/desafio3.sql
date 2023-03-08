SELECT usuarios.usuario AS 'usuario',
COUNT(historico_de_reproducoes.usuario_id) AS 'qt_de_musicas_ouvidas',
ROUND(SUM(cancoes.duracao_segs)/60, 2) AS 'total_minutos'
FROM SpotifyClone.usuarios
INNER JOIN SpotifyClone.historico_de_reproducoes ON usuarios.usuario_id = historico_de_reproducoes.usuario_id
INNER JOIN SpotifyClone.cancoes ON cancoes.cancao_id = historico_de_reproducoes.cancao_id
GROUP BY usuarios.usuario ORDER BY usuarios.usuario