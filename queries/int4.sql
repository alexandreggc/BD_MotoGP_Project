.mode columns
.headers on
.nullvalue NULL

SELECT (SELECT Marca.nome FROM Marca JOIN Equipa USING(idMarca) WHERE Equipa.idEquipa = Piloto.idEquipa) AS nomeMarca, (SELECT Equipa.nome FROM Equipa WHERE Equipa.idEquipa = Piloto.idEquipa) AS nomeEquipa, nome, max(numeropontos) AS maximoPontos
FROM Piloto JOIN Colaborador USING(idColaborador)
GROUP BY nomeMarca;