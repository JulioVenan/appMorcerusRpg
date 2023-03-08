SELECT
    C.cancao AS nome,
    COUNT(h.cancao_id) AS reproducoes
FROM
    `SpotifyClone`.cancoes AS C
INNER JOIN
    `SpotifyClone`.historico_de_reproducoes AS h ON h.cancao_id = C.cancao_id
INNER JOIN
    `SpotifyClone`.`usuarios` AS US ON US.usuario_id = h.usuario_id AND (US.plano_id = 4 OR US.plano_id = 1)
GROUP BY
  nome
  ORDER BY 
	nome;