SELECT artistas.artista_nome AS 'artista', albuns.album AS 'album', COUNT(seguindo_artistas.usuario_id) AS 'seguidores' FROM SpotifyClone.artistas
INNER JOIN SpotifyClone.albuns ON artistas.artista_id = albuns.artista_id
INNER JOIN SpotifyClone.seguindo_artistas ON seguindo_artistas.artista_id = albuns.artista_id
GROUP BY album, artista ORDER BY seguidores DESC, artista, album
