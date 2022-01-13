.mode columns
.headers on
.nullvalue NULL

SELECT nome
FROM (Colaborador JOIN Piloto ON Colaborador.idColaborador = Piloto.idColaborador)
WHERE Colaborador.idColaborador IN (SELECT idColaborador FROM Grid WHERE idCorrida IN (SELECT idCorrida FROM Corrida WHERE nome = "Grande Premio de Franca") AND posicaoFinal = 1);