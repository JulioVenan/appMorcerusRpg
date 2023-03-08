SELECT cancao AS nome_musica,
  CASE
        WHEN cancao_id = 9 THEN REPLACE(cancao, 'Bard', 'QA')
        WHEN cancao_id = 7 THEN REPLACE(cancao, 'Amar', 'Code Review')
        WHEN cancao_id = 6 THEN REPLACE(cancao, 'Pais', 'Pull Requests')
        WHEN cancao_id = 1 THEN REPLACE(cancao, 'SOUL', 'CODE')
        WHEN cancao_id = 3 THEN REPLACE(cancao, 'SUPERSTAR', 'SUPERDEV')
  END AS novo_nome
FROM SpotifyClone.cancoes
WHERE cancao_id IN (1, 3, 6, 7, 9)
ORDER BY nome_musica DESC, novo_nome DESC;
	