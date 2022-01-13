.mode columns
.headers on
.nullvalue NULL

SELECT nome, ROUND((strftime('%J', 'now') - strftime('%J', dataDeNascimento)) / 365.25, 0) AS idade
FROM Colaborador
WHERE (SELECT idColaborador FROM Colaborador INTERSECT SELECT idColaborador FROM Piloto)
ORDER BY idade DESC LIMIT 1;