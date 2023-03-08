SELECT artistas.artista_nome AS 'artista', albuns.album AS 'album'
FROM SpotifyClone.artistas
    INNER JOIN SpotifyClone.albuns ON artistas.artista_id = albuns.artista_id
WHERE artistas.artista_nome = 'Elis Regina'