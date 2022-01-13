.mode columns
.headers on
.nullvalue NULL

SELECT Corrida.nome, (numVoltas * perimetro) AS distancia
FROM Corrida, Circuito
WHERE Circuito.idCircuito = Corrida.idCircuito
ORDER BY distancia LIMIT 1;