.mode columns
.headers on
.nullvalue NULL

SELECT ROUND(AVG(numVoltas), 1) AS media
FROM Corrida
WHERE (SELECT COUNT(idColaborador) FROM Grid WHERE idCorrida = Corrida.idCorrida) > 0;