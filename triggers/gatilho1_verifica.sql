.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

Select * FROM Evento;

INSERT INTO Circuito(
	idCircuito,
	nome,
	pais,
	perimetro,
	numSetores
)
VALUES (
	99,
	'Circuito de Portimao',
	'Portugal',
	4.5,
	7
);

INSERT INTO Corrida(
	idCorrida,
	nome,
	data,
	numVoltas,
	idCircuito
)
VALUES (
	99,
	'Grande Premio de Portugal',
	2021-04-25,
	72,
	99
);

INSERT INTO Evento(
	idEvento,
	volta,
	idCorrida
)
VALUES (
	99,
	80,
	99
);

Select * FROM Evento;

INSERT INTO Evento(
	idEvento,
	volta,
	idCorrida
)
VALUES (
	98,
	70,
	99
);

Select * FROM Evento;

UPDATE Evento
SET volta = 90
WHERE idEvento = 98;

Select * FROM Evento;