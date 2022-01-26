.mode columns
.headers on
.nullvalue NULL

SELECT (SELECT nome FROM Equipa WHERE idEquipa = Piloto.idEquipa) AS nomeEquipa, Colaborador.nome, (SELECT posicaoInicial FROM Grid WHERE idColaborador = Colaborador.idColaborador) AS posicaoInicial
FROM (Colaborador JOIN Piloto ON Colaborador.idColaborador = Piloto.idColaborador)
WHERE Colaborador.idColaborador IN (SELECT idColaborador FROM Grid WHERE idCorrida = (SELECT idCorrida FROM Corrida WHERE nome = "Grande Premio de Franca") AND posicaoFinal = 1);