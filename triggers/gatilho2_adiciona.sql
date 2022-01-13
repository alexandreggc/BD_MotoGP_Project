.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

CREATE TRIGGER IF NOT EXISTS InsertSetorAcidente
BEFORE INSERT ON Acidente
FOR EACH ROW
BEGIN
	Select CASE
		WHEN New.setor > (SELECT numSetores FROM Circuito WHERE (SELECT idCircuito FROM Corrida WHERE (SELECT idCorrida FROM Evento WHERE idEvento = New.idEvento)))
	THEN RAISE(ROLLBACK, "Setor Invalido")
END;
END;

CREATE TRIGGER IF NOT EXISTS UpdateSetorAcidente
BEFORE UPDATE OF setor ON Acidente
FOR EACH ROW
WHEN EXISTS (SELECT * FROM Acidente WHERE idEvento = New.idEvento)
BEGIN
	Select CASE
		WHEN New.setor > (SELECT numSetores FROM Circuito WHERE (SELECT idCircuito FROM Corrida WHERE (SELECT idCorrida FROM Evento WHERE idEvento = New.idEvento)))
	THEN RAISE(ROLLBACK, "Setor Invalido")
END;
END;

CREATE TRIGGER IF NOT EXISTS InsertSetorUltrapassagem
BEFORE INSERT ON Ultrapassagem
FOR EACH ROW
BEGIN
	Select CASE
		WHEN New.setor > (SELECT numSetores FROM Circuito WHERE (SELECT idCircuito FROM Corrida WHERE (SELECT idCorrida FROM Evento WHERE idEvento = New.idEvento)))
	THEN RAISE(ROLLBACK, "Setor Invalido")
END;
END;


CREATE TRIGGER IF NOT EXISTS UpdateSetorUltrapassagem
BEFORE UPDATE OF setor ON Ultrapassagem
FOR EACH ROW
WHEN EXISTS (SELECT * FROM Ultrapassagem WHERE idEvento = New.idEvento)
BEGIN
	Select CASE
		WHEN New.setor > (SELECT numSetores FROM Circuito WHERE (SELECT idCircuito FROM Corrida WHERE (SELECT idCorrida FROM Evento WHERE idEvento = New.idEvento)))
	THEN RAISE(ROLLBACK, "Setor Invalido")
END;
END;