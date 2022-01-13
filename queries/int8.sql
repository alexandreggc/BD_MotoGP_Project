.mode columns
.headers on
.nullvalue NULL

SELECT nome, SUM(numeroPontos) AS pontosEquipa
FROM Equipa, Piloto
WHERE Equipa.idEquipa = Piloto.idEquipa
GROUP BY nome
ORDER BY pontosEquipa DESC;
