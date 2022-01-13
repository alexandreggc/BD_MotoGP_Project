.mode columns
.headers on
.nullvalue NULL

SELECT nome, numeroPontos
FROM Colaborador, Piloto
WHERE Colaborador.idColaborador = Piloto.idColaborador
ORDER BY numeroPontos DESC;