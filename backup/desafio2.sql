SELECT COUNT(*) AS cancoes,
(SELECT COUNT(artista_nome) FROM SpotifyClone.artistas) AS artistas ,
(SELECT COUNT(album) FROM SpotifyClone.albuns) AS albuns
FROM SpotifyClone.usuarios;