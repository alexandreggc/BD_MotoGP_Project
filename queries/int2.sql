.mode columns
.headers on
.nullvalue NULL

SELECT nome
FROM Colaborador JOIN Piloto USING(idColaborador)
WHERE idEquipa NOT IN (SELECT idEquipa FROM Equipa WHERE idMarca = (SELECT idMarca FROM Marca WHERE nome = "Mercedes"));
