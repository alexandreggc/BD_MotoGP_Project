.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

SELECT * FROM Acidente;

INSERT INTO Circuito(
	idCircuito,
	nome,
	pais,
	perimetro,
	numSetores
)
VALUES (
	98,
	'Circuito de Buenos Aires',
	'Argentina',
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
	98,
	'Grande Premio de Argentina',
	2021-04-25,
	72,
	98
);

SELECT * FROM Acidente;

INSERT INTO Evento(
	idEvento,
	volta,
	idCorrida
)
VALUES (
	97,
	50,
	98
);

INSERT INTO Acidente(
	idEvento,
	setor
)
VALUES (
	97,
	9
);

SELECT * FROM Acidente;

INSERT INTO Evento(
	idEvento,
	volta,
	idCorrida
)
VALUES (
	96,
	50,
	98
);

INSERT INTO Acidente(
	idEvento,
	setor
)
VALUES (
	96,
	3
);

SELECT * FROM Acidente;

UPDATE Acidente
SET setor = 10
WHERE idEvento = 96;

SELECT * FROM Acidente;

SELECT * FROM Ultrapassagem;

INSERT INTO Evento(
	idEvento,
	volta,
	idCorrida
)
VALUES (
	95,
	50,
	98
);

INSERT INTO Ultrapassagem(
	idEvento,
	setor
)
VALUES (
	95,
	9
);

SELECT * FROM Ultrapassagem;

INSERT INTO Evento(
	idEvento,
	volta,
	idCorrida
)
VALUES (
	94,
	50,
	98
);

INSERT INTO Ultrapassagem(
	idEvento,
	setor
)
VALUES (
	94,
	4
);

SELECT * FROM Ultrapassagem;

UPDATE Ultrapassagem
SET setor = 10
WHERE idEvento = 94;

SELECT * FROM Ultrapassagem;