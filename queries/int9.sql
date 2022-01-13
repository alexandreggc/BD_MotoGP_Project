.mode columns
.headers on
.nullvalue NULL

SELECT COUNT(*)
FROM Acidente
WHERE idEvento IN(SELECT idEvento FROM Evento WHERE idCorrida IN(SELECT idCorrida FROM Corrida WHERE nome = "Grande Premio de Italia"));