--povoar.sql


PRAGMA foreign_keys = on;
BEGIN TRANSACTION;

-- Table: Nacionalidade

INSERT INTO Nacionalidade (
	idNacionalidade,
	nome
)
VALUES (
	1,
	'Portuguesa'
);

INSERT INTO Nacionalidade (
	idNacionalidade,
	nome
)
VALUES (
	2,
	'Brasileira'
);

INSERT INTO Nacionalidade (
	idNacionalidade,
	nome
)
VALUES (
	3,
	'Alema'
);

INSERT INTO Nacionalidade (
	idNacionalidade,
	nome
)
VALUES (
	4,
	'Austriaca'
);

INSERT INTO Nacionalidade (
	idNacionalidade,
	nome
)
VALUES (
	5,
	'Japonesa'
);

INSERT INTO Nacionalidade (
	idNacionalidade,
	nome
)
VALUES (
	6,
	'Holandesa'
);

INSERT INTO Nacionalidade (
	idNacionalidade,
	nome
)
VALUES (
	7,
	'Britanica'
);

INSERT INTO Nacionalidade (
	idNacionalidade,
	nome
)
VALUES (
	8,
	'Italiana'
);


--Table: Marca

INSERT INTO Marca (
	idMarca,
	nome,
	anoDeIngresso,
	idNacionalidade
)
VALUES (
	1,
	'Mercedes',
	1954,
	3
);

INSERT INTO Marca (
	idMarca,
	nome,
	anoDeIngresso,
	idNacionalidade
)
VALUES (
	2,
	'Red Bull',
	2000,
	4
);

INSERT INTO Marca (
	idMarca,
	nome,
	anoDeIngresso,
	idNacionalidade
)
VALUES (
	3,
	'Suzuki',
	1980,
	5
);


--Table: Equipa

INSERT INTO Equipa (
	idEquipa,
	nome,
	tipo,
	idMarca
)
VALUES (
	1,
	'Mercedes-AMG',
	'FABRICA',
	1
);

INSERT INTO Equipa (
	idEquipa,
	nome,
	tipo,
	idMarca
)
VALUES (
	2,
	'Williams Mercedes',
	'SATELITE',
	1
);

INSERT INTO Equipa (
	idEquipa,
	nome,
	tipo,
	idMarca
)
VALUES (
	3,
	'Red Bull Racing',
	'FABRICA',
	2
);

INSERT INTO Equipa (
	idEquipa,
	nome,
	tipo,
	idMarca
)
VALUES (
	4,
	'Team Suzuki',
	'FABRICA',
	3
);


--Table: Mota

INSERT INTO Mota(
	idMota,
	potencia,
	peso,
	velocidadeMax,
	idEquipa
)
VALUES (
	1,
	280,
	160,
	335,
	1
);

INSERT INTO Mota(
	idMota,
	potencia,
	peso,
	velocidadeMax,
	idEquipa
)
VALUES (
	2,
	260,
	170,
	310,
	2
);

INSERT INTO Mota(
	idMota,
	potencia,
	peso,
	velocidadeMax,
	idEquipa
)
VALUES (
	3,
	275,
	162,
	330,
	3
);

INSERT INTO Mota(
	idMota,
	potencia,
	peso,
	velocidadeMax,
	idEquipa
)
VALUES (
	4,
	270,
	165,
	324,
	4
);


--Table: Pneu

INSERT INTO Pneu(
	idPneu,
	marca,
	rigidez,
	tipo,
	idMota
)
VALUES (
	1,
	'Pirelli',
	'MACIO',
	'DIANTEIRO',
	1
);

INSERT INTO Pneu(
	idPneu,
	marca,
	rigidez,
	tipo,
	idMota
)
VALUES (
	2,
	'Pirelli',
	'MACIO',
	'TRASEIRO',
	1
);

INSERT INTO Pneu(
	idPneu,
	marca,
	rigidez,
	tipo,
	idMota
)
VALUES (
	3,
	'Pirelli',
	'MACIO',
	'DIANTEIRO',
	2
);

INSERT INTO Pneu(
	idPneu,
	marca,
	rigidez,
	tipo,
	idMota
)
VALUES (
	4,
	'Pirelli',
	'MACIO',
	'TRASEIRO',
	2
);

INSERT INTO Pneu(
	idPneu,
	marca,
	rigidez,
	tipo,
	idMota
)
VALUES (
	5,
	'Pirelli',
	'MEDIO',
	'DIANTEIRO',
	3
);

INSERT INTO Pneu(
	idPneu,
	marca,
	rigidez,
	tipo,
	idMota
)
VALUES (
	6,
	'Pirelli',
	'MEDIO',
	'TRASEIRO',
	3
);

INSERT INTO Pneu(
	idPneu,
	marca,
	rigidez,
	tipo,
	idMota
)
VALUES (
	7,
	'Pirelli',
	'DURO',
	'DIANTEIRO',
	4
);

INSERT INTO Pneu(
	idPneu,
	marca,
	rigidez,
	tipo,
	idMota
)
VALUES (
	8,
	'Pirelli',
	'DURO',
	'TRASEIRO',
	4
);

INSERT INTO Pneu(
	idPneu,
	marca,
	rigidez,
	tipo,
	idMota
)
VALUES (
	9,
	'Pirelli',
	'DURO',
	'DIANTEIRO',
	NULL
);

INSERT INTO Pneu(
	idPneu,
	marca,
	rigidez,
	tipo,
	idMota
)
VALUES (
	10,
	'Pirelli',
	'DURO',
	'TRASEIRO',
	NULL
);

--Table: Colaborador

INSERT INTO Colaborador (
	idColaborador,
	nome,
	dataDeNascimento,
	idNacionalidade
)
VALUES (
	1,
	'Alexandre Correia',
	'2002-04-29',
	1
);

INSERT INTO Colaborador (
	idColaborador,
	nome,
	dataDeNascimento,
	idNacionalidade
)
VALUES (
	2,
	'Henrique Silva',
	'2002-02-21',
	1
);

INSERT INTO Colaborador (
	idColaborador,
	nome,
	dataDeNascimento,
	idNacionalidade
)
VALUES (
	3,
	'Tiago Branquinho',
	'2002-12-14',
	1
);

INSERT INTO Colaborador (
	idColaborador,
	nome,
	dataDeNascimento,
	idNacionalidade
)
VALUES (
	4,
	'Albert Einstein',
	'1955-04-18',
	3
);

INSERT INTO Colaborador (
	idColaborador,
	nome,
	dataDeNascimento,
	idNacionalidade
)
VALUES (
	5,
	'Ayrton Senna',
	'1960-05-01',
	2
);

INSERT INTO Colaborador (
	idColaborador,
	nome,
	dataDeNascimento,
	idNacionalidade
)
VALUES (
	6,
	'Lewis Hamilton',
	'1985-01-07',
	7
);

INSERT INTO Colaborador (
	idColaborador,
	nome,
	dataDeNascimento,
	idNacionalidade
)
VALUES (
	7,
	'George Russell',
	'1998-02-15',
	7
);

INSERT INTO Colaborador (
	idColaborador,
	nome,
	dataDeNascimento,
	idNacionalidade
)
VALUES (
	8,
	'Francesco Totti',
	'1976-09-27',
	8
);

INSERT INTO Colaborador (
	idColaborador,
	nome,
	dataDeNascimento,
	idNacionalidade
)
VALUES (
	9,
	'Max Verstappen',
	'1997-09-30',
	6
);

INSERT INTO Colaborador (
	idColaborador,
	nome,
	dataDeNascimento,
	idNacionalidade
)
VALUES (
	10,
	'Niki Lauda',
	'1949-02-22',
	4
);

INSERT INTO Colaborador (
	idColaborador,
	nome,
	dataDeNascimento,
	idNacionalidade
)
VALUES (
	11,
	'Kobayashi Miura',
	'1988-6-20',
	5
);

INSERT INTO Colaborador (
	idColaborador,
	nome,
	dataDeNascimento,
	idNacionalidade
)
VALUES (
	12,
	'Miguel Oliveira',
	'1995-01-04',
	1
);


--Table: Engenheiro

INSERT INTO Engenheiro(
	idColaborador,
	ramo,
	idEquipa
)
VALUES (
	1,
	'Mecanica',
	4
);

INSERT INTO Engenheiro(
	idColaborador,
	ramo,
	idEquipa
)
VALUES (
	2,
	'Aerodinamica',
	1
);

INSERT INTO Engenheiro(
	idColaborador,
	ramo,
	idEquipa
)
VALUES (
	3,
	'Mecanica',
	3
);

INSERT INTO Engenheiro(
	idColaborador,
	ramo,
	idEquipa
)
VALUES (
	4,
	'Aerodinamica',
	2
);


--Table: Piloto

INSERT INTO Piloto(
	idColaborador,
	numero,
	numeroPontos,
	tipo,
	idEquipa,
	idMota
)
VALUES (
	5,
	1,
	90,
	'PRINCIPAL',
	1,
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
	6,
	2,
	20,
	'RESERVA',
	1,
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
	7,
	3,
	40,
	'PRINCIPAL',
	2,
	2
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
	8,
	4,
	10,
	'RESERVA',
	2,
	2
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
	9,
	5,
	0,
	'RESERVA',
	3,
	3
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
	10,
	6,
	80,
	'PRINCIPAL',
	3,
	3
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
	11,
	7,
	5,
	'RESERVA',
	4,
	4
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
	12,
	8,
	60,
	'PRINCIPAL',
	4,
	4
);


--Table: Circuito

INSERT INTO Circuito(
	idCircuito,
	nome,
	pais,
	perimetro,
	numSetores
)
VALUES (
	1,
	'Circuito de Arenberg',
	'Franca',
	4.8,
	8
);

INSERT INTO Circuito(
	idCircuito,
	nome,
	pais,
	perimetro,
	numSetores
)
VALUES (
	2,
	'Circuito de Poggio',
	'Italia',
	4.5,
	7
);


--Table: Corrida

INSERT INTO Corrida(
	idCorrida,
	nome,
	data,
	numVoltas,
	idCircuito
)
VALUES (
	1,
	'Grande Premio de Franca',
	2021-04-25,
	72,
	1
);

INSERT INTO Corrida(
	idCorrida,
	nome,
	data,
	numVoltas,
	idCircuito
)
VALUES (
	2,
	'Grande Premio de Italia',
	2021-05-01,
	76,
	2
);


--Table: Grid

INSERT INTO Grid(
	idCorrida,
	idColaborador,
	posicaoInicial,
	posicaoFinal
)
VALUES (
	1,
	5,
	2,
	1
);

INSERT INTO Grid(
	idCorrida,
	idColaborador,
	posicaoInicial,
	posicaoFinal
)
VALUES (
	1,
	7,
	4,
	4
);

INSERT INTO Grid(
	idCorrida,
	idColaborador,
	posicaoInicial,
	posicaoFinal
)
VALUES (
	1,
	10,
	1,
	2
);

INSERT INTO Grid(
	idCorrida,
	idColaborador,
	posicaoInicial,
	posicaoFinal
)
VALUES (
	1,
	12,
	3,
	3
);

INSERT INTO Grid(
	idCorrida,
	idColaborador,
	posicaoInicial,
	posicaoFinal
)
VALUES (
	2,
	5,
	1,
	2
);

INSERT INTO Grid(
	idCorrida,
	idColaborador,
	posicaoInicial,
	posicaoFinal
)
VALUES (
	2,
	7,
	2,
	4
);

INSERT INTO Grid(
	idCorrida,
	idColaborador,
	posicaoInicial,
	posicaoFinal
)
VALUES (
	2,
	10,
	4,
	1
);

INSERT INTO Grid(
	idCorrida,
	idColaborador,
	posicaoInicial,
	posicaoFinal
)
VALUES (
	2,
	12,
	3,
	3
);


--Table: Evento

INSERT INTO Evento(
	idEvento,
	volta,
	idCorrida
)
VALUES (
	1,
	49,
	1
);

INSERT INTO Evento(
	idEvento,
	volta,
	idCorrida
)
VALUES (
	2,
	62,
	1
);

INSERT INTO Evento(
	idEvento,
	volta,
	idCorrida
)
VALUES (
	3,
	7,
	2
);

INSERT INTO Evento(
	idEvento,
	volta,
	idCorrida
)
VALUES (
	4,
	36,
	2
);

INSERT INTO Evento(
	idEvento,
	volta,
	idCorrida
)
VALUES (
	5,
	70,
	2
);

INSERT INTO Evento(
	idEvento,
	volta,
	idCorrida
)
VALUES (
	6,
	40,
	2
);

--Table: Acidente

INSERT INTO Acidente(
	idEvento,
	setor
)
VALUES (
	2,
	3
);


--Table: Outro

INSERT INTO Outro(
	idEvento,
	descricao
)
VALUES (
	6,
	"Inicio de precipitacao moderada"
);


--Table: Ultrapassagem

INSERT INTO Ultrapassagem(
	idEvento,
	setor
)
VALUES (
	1,
	1
);

INSERT INTO Ultrapassagem(
	idEvento,
	setor
)
VALUES (
	3,
	2
);

INSERT INTO Ultrapassagem(
	idEvento,
	setor
)
VALUES (
	4,
	4
);

INSERT INTO Ultrapassagem(
	idEvento,
	setor
)
VALUES (
	5,
	5
);


--Table: Bandeira

INSERT INTO Bandeira(
	idEvento,
	cor
)
VALUES (
	2,
	'Vermelha'
);

INSERT INTO Bandeira(
	idEvento,
	cor
)
VALUES (
	6,
	'Amarela'
);


--Table: PilotoCorrida

INSERT INTO PilotoCorrida(
	idColaborador,
	idCorrida
)
VALUES (
	5,
	1
);

INSERT INTO PilotoCorrida(
	idColaborador,
	idCorrida
)
VALUES (
	7,
	1
);

INSERT INTO PilotoCorrida(
	idColaborador,
	idCorrida
)
VALUES (
	10,
	1
);

INSERT INTO PilotoCorrida(
	idColaborador,
	idCorrida
)
VALUES (
	12,
	1
);

INSERT INTO PilotoCorrida(
	idColaborador,
	idCorrida
)
VALUES (
	5,
	2
);

INSERT INTO PilotoCorrida(
	idColaborador,
	idCorrida
)
VALUES (
	7,
	2
);

INSERT INTO PilotoCorrida(
	idColaborador,
	idCorrida
)
VALUES (
	10,
	2
);

INSERT INTO PilotoCorrida(
	idColaborador,
	idCorrida
)
VALUES (
	12,
	2
);


--Table: PilotoEvento

INSERT INTO PilotoEvento(
	idColaborador,
	idEvento
)
VALUES (
	5,
	1
);

INSERT INTO PilotoEvento(
	idColaborador,
	idEvento
)
VALUES (
	10,
	1
);

INSERT INTO PilotoEvento(
	idColaborador,
	idEvento
)
VALUES (
	7,
	2
);

INSERT INTO PilotoEvento(
	idColaborador,
	idEvento
)
VALUES (
	7,
	3
);

INSERT INTO PilotoEvento(
	idColaborador,
	idEvento
)
VALUES (
	10,
	3
);

INSERT INTO PilotoEvento(
	idColaborador,
	idEvento
)
VALUES (
	12,
	4
);

INSERT INTO PilotoEvento(
	idColaborador,
	idEvento
)
VALUES (
	10,
	4
);

INSERT INTO PilotoEvento(
	idColaborador,
	idEvento
)
VALUES (
	5,
	5
);

INSERT INTO PilotoEvento(
	idColaborador,
	idEvento
)
VALUES (
	10,
	5
);


--Table: EventoBandeira

INSERT INTO EventoBandeira(
	idEvento,
	cor
)
VALUES (
	2,
	'Vermelha'
);

INSERT INTO EventoBandeira(
	idEvento,
	cor
)
VALUES (
	6,
	'Amarela'
);  


--Table: ClassificacaoGeral

INSERT INTO ClassificacaoGeral(
	epoca,
	lugar,
	idColaborador
)
VALUES (
	2021,
	1,
	5
);

INSERT INTO ClassificacaoGeral(
	epoca,
	lugar,
	idColaborador
)
VALUES (
	2021,
	2,
	10
);

INSERT INTO ClassificacaoGeral(
	epoca,
	lugar,
	idColaborador
)
VALUES (
	2021,
	3,
	12
);

INSERT INTO ClassificacaoGeral(
	epoca,
	lugar,
	idColaborador
)
VALUES (
	2021,
	4,
	7
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
