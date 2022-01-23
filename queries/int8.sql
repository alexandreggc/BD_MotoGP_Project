.mode columns
.headers on
.nullvalue NULL

SELECT Marca.nome AS nomeMarca, Colaborador.nome AS nomePiloto
FROM Marca, Colaborador JOIN Piloto USING(idColaborador)
WHERE Piloto.idEquipa IN (SELECT idEquipa FROM Equipa WHERE idMarca = Marca.idMarca) AND Colaborador.idNacionalidade = Marca.idNacionalidade AND idColaborador IN(SELECT idColaborador FROM Grid)
GROUP BY nomeMarca;