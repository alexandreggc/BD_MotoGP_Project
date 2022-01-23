.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

CREATE TRIGGER IF NOT EXISTS InsertGrid
AFTER INSERT ON Grid
FOR EACH ROW
WHEN New.posicaoFinal = 1
BEGIN
	UPDATE Piloto
	SET numeroPontos = numeroPontos + 10
	WHERE idColaborador = New.idColaborador;
END;

CREATE TRIGGER IF NOT EXISTS DeleteGrid
AFTER DELETE ON Grid
FOR EACH ROW
WHEN Old.posicaoFinal = 1
BEGIN
	UPDATE Piloto
	set numeroPontos = numeroPontos - 10
	WHERE idColaborador = Old.idColaborador;
END;

CREATE TRIGGER IF NOT EXISTS UpdateGridForBetter
AFTER UPDATE ON Grid
FOR EACH ROW
WHEN (EXISTS(SELECT * FROM Grid WHERE idColaborador = New.idColaborador)) AND ((New.posicaoFinal = 1) AND (Old.posicaoFinal <> 1))
BEGIN
	UPDATE Piloto
	set numeroPontos = numeroPontos + 10
	WHERE idColaborador = New.idColaborador;
END;

CREATE TRIGGER IF NOT EXISTS UpdateGridForWorse
AFTER UPDATE ON Grid
FOR EACH ROW
WHEN (EXISTS(SELECT * FROM Grid WHERE idColaborador = New.idColaborador)) AND ((New.posicaoFinal <> 1) AND (Old.posicaoFinal = 1))
BEGIN
	UPDATE Piloto
	set numeroPontos = numeroPontos - 10
	WHERE idColaborador = New.idColaborador;
END;
