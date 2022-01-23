.mode columns
.headers on
.nullvalue NULL

SELECT nome, MIN(distancia) AS distanciaMinima
FROM Corrida, (SELECT (numVoltas * perimetro) AS distancia, Circuito.idCircuito AS id FROM Corrida JOIN Circuito USING(idCircuito))
WHERE id = Corrida.idCircuito;
