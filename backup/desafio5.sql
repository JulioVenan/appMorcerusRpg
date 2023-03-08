SELECT cancoes.cancao AS 'cancao', COUNT(historico_de_reproducoes.cancao_id) AS 'reproducoes' FROM SpotifyClone.cancoes
INNER JOIN SpotifyClone.historico_de_reproducoes ON cancoes.cancao_id = historico_de_reproducoes.cancao_id
GROUP BY historico_de_reproducoes.cancao_id ORDER BY reproducoes DESC, cancao LIMIT 2
