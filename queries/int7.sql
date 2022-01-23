.mode columns
.headers on
.nullvalue NULL

SELECT (SELECT nome FROM Nacionalidade WHERE Nacionalidade.idNacionalidade = Colaborador.idNacionalidade) AS nomeNacionalidade, COUNT(*) as maximoColaboradores
FROM Colaborador
GROUP BY idNacionalidade
HAVING maximoColaboradores = (SELECT MAX(numeroColaboradores) FROM (SELECT (SELECT nome FROM Nacionalidade WHERE Nacionalidade.idNacionalidade = Colaborador.idNacionalidade), COUNT(*) AS numeroColaboradores FROM Colaborador GROUP BY idNacionalidade));

