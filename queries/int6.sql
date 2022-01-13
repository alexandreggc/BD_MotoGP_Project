.mode columns
.headers on
.nullvalue NULL

SELECT  DISTINCT nome
FROM Equipa
WHERE idEquipa IN (SELECT idMota FROM Mota WHERE idMota IN (SELECT idMota FROM Pneu WHERE rigidez = "DURO"));