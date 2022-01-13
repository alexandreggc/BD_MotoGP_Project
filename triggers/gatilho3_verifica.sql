.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

SELECT * FROM PNEU;

INSERT INTO Nacionalidade (
	idNacionalidade,
	nome
)
VALUES (
	99,
	'Espanhola'
);

INSERT INTO Marca (
	idMarca,
	nome,
	anoDeIngresso,
	idNacionalidade
)
VALUES (
	99,
	'Seat',
	1999,
	99
);

INSERT INTO Equipa (
	idEquipa,
	nome,
	tipo,
	idMarca
)
VALUES (
	99,
	'Team Seat',
	'FABRICA',
	99
);

INSERT INTO Mota(
	idMota,
	potencia,
	peso,
	velocidadeMax,
	idEquipa
)
VALUES (
	99,
	271,
	166,
	323,
	99
);

INSERT INTO Pneu(
	idPneu,
	marca,
	rigidez,
	tipo,
	idMota
)
VALUES (
	99,
	'Pirelli',
	'MACIO',
	'TRASEIRO',
	99
);

SELECT * FROM PNEU;

INSERT INTO Pneu(
	idPneu,
	marca,
	rigidez,
	tipo,
	idMota
)
VALUES (
	98,
	'Pirelli',
	'MACIO',
	'TRASEIRO',
	99
);

SELECT * FROM PNEU;

INSERT INTO Pneu(
	idPneu,
	marca,
	rigidez,
	tipo,
	idMota
)
VALUES (
	97,
	'Pirelli',
	'MACIO',
	'TRASEIRO',
	99
);

SELECT * FROM PNEU;