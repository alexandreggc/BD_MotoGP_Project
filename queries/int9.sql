.mode columns
.headers on
.nullvalue NULL

SELECT nome AS nomeCorrida, COUNT(idEvento) AS numeroAcidentes
FROM Corrida, Acidente JOIN Evento USING(idEvento)
WHERE Evento.idCorrida IN (SELECT idCorrida FROM Corrida WHERE nome = nomeCorrida)
group by nomeCorrida;