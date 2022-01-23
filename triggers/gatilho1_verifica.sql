.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

SELECT * FROM Piloto;

INSERT INTO Circuito(
	idCircuito,
	nome,
	pais,
	perimetro,
	numSetores
)
VALUES (
	90,
	'Circuito de Berlim',
	'Alemanha',
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
	90,
	'Grande Premio Alemao',
	2021-04-25,
	72,
	90
);

INSERT INTO Nacionalidade (
	idNacionalidade,
	nome
)
VALUES (
	1,
	'Portuguesa'
);

INSERT INTO Marca (
	idMarca,
	nome,
	anoDeIngresso,
	idNacionalidade
)
VALUES (
	90,
	'Tuga',
	1999,
	1
);

INSERT INTO Equipa (
	idEquipa,
	nome,
	tipo,
	idMarca
)
VALUES (
	90,
	'Tuga',
	'FABRICA',
	90
);

INSERT INTO Mota(
	idMota,
	potencia,
	peso,
	velocidadeMax,
	idEquipa
)
VALUES (
	90,
	280,
	160,
	335,
	90
);

INSERT INTO Colaborador (
	idColaborador,
	nome,
	dataDeNascimento,
	idNacionalidade
)
VALUES (
	90,
	'Maria Leal',
	'1983-12-20',
	1
);

INSERT INTO Piloto(
	idColaborador,
	numero,
	numeroPontos,
	tipo,
	idEquipa,
	idMota
)
VALUES (
	90,
	90,
	100,
	'RESERVA',
	90,
	90
);

SELECT * FROM Piloto;

INSERT INTO Grid(
	idCorrida,
	idColaborador,
	posicaoInicial,
	posicaoFinal
)
VALUES (
	90,
	90,
	6,
	2
);

SELECT * FROM Piloto;

DELETE FROM Grid WHERE (idColaborador = 90 AND idCorrida = 90);

INSERT INTO Grid(
	idCorrida,
	idColaborador,
	posicaoInicial,
	posicaoFinal
)
VALUES (
	90,
	90,
	6,
	1
);

SELECT * FROM Piloto;

UPDATE Grid
SET posicaoFinal = 2
WHERE (idColaborador = 90 AND idCorrida = 90);

SELECT * FROM Piloto;

UPDATE Grid
SET posicaoFinal = 1
WHERE (idColaborador = 90 AND idCorrida = 90);

SELECT * FROM Piloto;

DELETE FROM Grid WHERE (idColaborador = 90 AND idCorrida = 90);

SELECT * FROM Piloto;