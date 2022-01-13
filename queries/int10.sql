.mode columns
.headers on
.nullvalue NULL

SELECT nome, COUNT(idEvento) AS eventosCorrida
FROM Corrida, Evento
WHERE Corrida.idCorrida = Evento.idCorrida
GROUP BY nome
HAVING eventosCorrida > 5;
