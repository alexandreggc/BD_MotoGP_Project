.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

CREATE TRIGGER IF NOT EXISTS InsertVolta
BEFORE INSERT ON Evento
FOR EACH ROW
BEGIN
	Select CASE
		WHEN New.volta > (SELECT numVoltas from Corrida WHERE idCorrida = New.idCorrida)
	THEN RAISE(ROLLBACK, "Volta invalido")
END;
END;

CREATE TRIGGER IF NOT EXISTS UpdateVolta
BEFORE UPDATE OF volta ON Evento
FOR EACH ROW
WHEN EXISTS (SELECT * FROM Evento WHERE idEvento = New.idEvento)
BEGIN
	Select CASE
		WHEN New.volta > (SELECT numVoltas from Corrida WHERE idCorrida = New.idCorrida)
	THEN RAISE(ROLLBACK, "Volta invalido")
END;
END;