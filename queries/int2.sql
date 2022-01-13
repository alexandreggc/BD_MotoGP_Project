.mode columns
.headers on
.nullvalue NULL

SELECT nome
FROM Colaborador JOIN Piloto USING(idColaborador)
WHERE idEquipa NOT IN (SELECT idEquipa FROM Equipa WHERE idMarca IN (SELECT idMarca FROM Marca WHERE nome = "Mercedes"));
