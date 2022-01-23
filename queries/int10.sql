.mode columns
.headers on
.nullvalue NULL

SELECT nome, COUNT(idEvento) AS eventosCorrida
FROM Corrida JOIN Evento USING(idCorrida)
GROUP BY nome
HAVING eventosCorrida > 5;
