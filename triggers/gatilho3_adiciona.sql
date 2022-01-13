.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

CREATE TRIGGER IF NOT EXISTS InsertPneu
BEFORE INSERT ON Pneu
FOR EACH ROW
WHEN((SELECT COUNT(*) FROM Pneu WHERE idMota = New.idMota) = 2)
BEGIN
	SELECT RAISE(ROLLBACK, "A mota selecionada já tem dois pneus");
END;
