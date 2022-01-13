.mode columns
.headers on
.nullvalue NULL

SELECT COUNT(*)
FROM Colaborador
WHERE idNacionalidade IN(SELECT idNacionalidade FROM Nacionalidade WHERE nome = "Portuguesa");