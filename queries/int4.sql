.mode columns
.headers on
.nullvalue NULL

SELECT nome
FROM Marca
WHERE idMarca in (SELECT idMarca FROM Equipa WHERE tipo = "SATELITE");