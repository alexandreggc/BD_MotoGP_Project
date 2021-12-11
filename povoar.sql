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

INSERT INTO Marca (
	idMarca,
	nome,
	anoDeIngresso,
	idNacionalidade
)
VALUES (
	4,
	'Ferrari',
	1969,
	8
);

INSERT INTO Marca (
	idMarca,
	nome,
	anoDeIngresso,
	idNacionalidade
)
VALUES (
	5,
	'Opel',
	2021,
	3
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

INSERT INTO Equipa (
	idEquipa,
	nome,
	tipo,
	idMarca
)
VALUES (
	5,
	'Scuderia Ferrari',
	'FABRICA',
	4
);

INSERT INTO Equipa (
	idEquipa,
	nome,
	tipo,
	idMarca
)
VALUES (
	6,
	'Opel Racing',
	'FABRICA',
	5
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
	169,
	319,
	4
);

INSERT INTO Mota(
	idMota,
	potencia,
	peso,
	velocidadeMax,
	idEquipa
)
VALUES (
	5,
	270,
	170,
	319,
	5
);

INSERT INTO Mota(
	idMota,
	potencia,
	peso,
	velocidadeMax,
	idEquipa
)
VALUES (
	6,
	258,
	173,
	309,
	6
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

INSERT INTO Pneu(
	idPneu,
	marca,
	rigidez,
	tipo,
	idMota
)
VALUES (
	11,
	'Pirelli',
	'MEDIO',
	'TRASEIRO',
	5
);

INSERT INTO Pneu(
	idPneu,
	marca,
	rigidez,
	tipo,
	idMota
)
VALUES (
	12,
	'Pirelli',
	'MEDIO',
	'DIANTEIRO',
	5
);

INSERT INTO Pneu(
	idPneu,
	marca,
	rigidez,
	tipo,
	idMota
)
VALUES (
	13,
	'Pirelli',
	'MEDIO',
	'TRASEIRO',
	6
);

INSERT INTO Pneu(
	idPneu,
	marca,
	rigidez,
	tipo,
	idMota
)
VALUES (
	14,
	'Pirelli',
	'DURO',
	'DIANTEIRO',
	6
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
	'1988-06-20',
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

INSERT INTO Colaborador (
	idColaborador,
	nome,
	dataDeNascimento,
	idNacionalidade
)
VALUES (
	13,
	'Giorgio Chiellini',
	'1982-03-25',
	8
);

INSERT INTO Colaborador (
	idColaborador,
	nome,
	dataDeNascimento,
	idNacionalidade
)
VALUES (
	14,
	'Leonardo Bonnuci',
	'1983-12-20',
	8
);

INSERT INTO Colaborador (
	idColaborador,
	nome,
	dataDeNascimento,
	idNacionalidade
)
VALUES (
	15,
	'Johan Liebert',
	'1999-01-02',
	3
);

INSERT INTO Colaborador (
	idColaborador,
	nome,
	dataDeNascimento,
	idNacionalidade
)
VALUES (
	16,
	'Heinemann Lunge',
	'1980-07-21',
	3
);

INSERT INTO Colaborador (
	idColaborador,
	nome,
	dataDeNascimento,
	idNacionalidade
)
VALUES (
	17,
	'Marko Tenma',
	'1992-07-18',
	3
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

INSERT INTO Engenheiro(
	idColaborador,
	ramo,
	idEquipa
)
VALUES (
	5,
	'Aerodinamica',
	6
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
	0,
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
	0,
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
	0,
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

INSERT INTO Piloto(
	idColaborador,
	numero,
	numeroPontos,
	tipo,
	idEquipa,
	idMota
)
VALUES (
	13,
	9,
	10,
	'PRINCIPAL',
	5,
	5
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
	14,
	10,
	0,
	'RESERVA',
	5,
	5
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
	15,
	11,
	0,
	'PRINCIPAL',
	6,
	6
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
	16,
	12,
	0,
	'RESERVA',
	6,
	6
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

INSERT INTO Circuito(
	idCircuito,
	nome,
	pais,
	perimetro,
	numSetores
)
VALUES (
	3,
	'Circuito de Kemmelberg',
	'Belgica',
	4.3,
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
	4,
	'Circuito de Al Hattadam',
	'Dubai',
	4.8,
	9
);

INSERT INTO Circuito(
	idCircuito,
	nome,
	pais,
	perimetro,
	numSetores
)
VALUES (
	5,
	'Circuito de Richmond',
	'EUA',
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

INSERT INTO Corrida(
	idCorrida,
	nome,
	data,
	numVoltas,
	idCircuito
)
VALUES (
	3,
	'Grande Premio da Belgica',
	2021-05-16,
	78,
	3
);

INSERT INTO Corrida(
	idCorrida,
	nome,
	data,
	numVoltas,
	idCircuito
)
VALUES (
	4,
	'Grande Premio do Dubai',
	2021-05-30,
	69,
	4
);

INSERT INTO Corrida(
	idCorrida,
	nome,
	data,
	numVoltas,
	idCircuito
)
VALUES (
	5,
	'Grande Premio dos EUA',
	2021-06-07,
	72,
	5
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

INSERT INTO Grid(
	idCorrida,
	idColaborador,
	posicaoInicial,
	posicaoFinal
)
VALUES (
	1,
	13,
	6,
	5
);

INSERT INTO Grid(
	idCorrida,
	idColaborador,
	posicaoInicial,
	posicaoFinal
)
VALUES (
	2,
	13,
	5,
	5
);

INSERT INTO Grid(
	idCorrida,
	idColaborador,
	posicaoInicial,
	posicaoFinal
)
VALUES (
	1,
	15,
	5,
	6
);

INSERT INTO Grid(
	idCorrida,
	idColaborador,
	posicaoInicial,
	posicaoFinal
)
VALUES (
	2,
	15,
	6,
	6
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

INSERT INTO Evento(
	idEvento,
	volta,
	idCorrida
)
VALUES (
	7,
	31,
	1
);

INSERT INTO Evento(
	idEvento,
	volta,
	idCorrida
)
VALUES (
	8,
	47,
	1
);

INSERT INTO Evento(
	idEvento,
	volta,
	idCorrida
)
VALUES (
	9,
	1,
	2
);

INSERT INTO Evento(
	idEvento,
	volta,
	idCorrida
)
VALUES (
	10,
	70,
	2
);

INSERT INTO Evento(
	idEvento,
	volta,
	idCorrida
)
VALUES (
	11,
	2,
	2
);

INSERT INTO Evento(
	idEvento,
	volta,
	idCorrida
)
VALUES (
	12,
	48,
	1
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

INSERT INTO Acidente(
	idEvento,
	setor
)
VALUES (
	8,
	4
);

INSERT INTO Acidente(
	idEvento,
	setor
)
VALUES (
	9,
	1
);

INSERT INTO Acidente(
	idEvento,
	setor
)
VALUES (
	10,
	6
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

INSERT INTO Outro(
	idEvento,
	descricao
)
VALUES (
	11,
	"Detritos na pista"
);

INSERT INTO Outro(
	idEvento,
	descricao
)
VALUES (
	12,
	"Detritos na pista"
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

INSERT INTO Ultrapassagem(
	idEvento,
	setor
)
VALUES (
	7,
	2
);


--Table: Bandeira

INSERT INTO Bandeira(
	idBandeira,
	cor
)
VALUES (
	1,
	'Vermelha'
);

INSERT INTO Bandeira(
	idBandeira,
	cor
)
VALUES (
	2,
	'Amarela'
);

INSERT INTO Bandeira(
	idBandeira,
	cor
)
VALUES (
	3,
	'Vermelha'
);

INSERT INTO Bandeira(
	idBandeira,
	cor
)
VALUES (
	4,
	'Amarela'
);

INSERT INTO Bandeira(
	idBandeira,
	cor
)
VALUES (
	5,
	'Amarela'
);

INSERT INTO Bandeira(
	idBandeira,
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

INSERT INTO PilotoCorrida(
	idColaborador,
	idCorrida
)
VALUES (
	13,
	1
);

INSERT INTO PilotoCorrida(
	idColaborador,
	idCorrida
)
VALUES (
	13,
	2
);

INSERT INTO PilotoCorrida(
	idColaborador,
	idCorrida
)
VALUES (
	15,
	1
);

INSERT INTO PilotoCorrida(
	idColaborador,
	idCorrida
)
VALUES (
	15,
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

INSERT INTO PilotoEvento(
	idColaborador,
	idEvento
)
VALUES (
	13,
	7
);

INSERT INTO PilotoEvento(
	idColaborador,
	idEvento
)
VALUES (
	15,
	7
);

INSERT INTO PilotoEvento(
	idColaborador,
	idEvento
)
VALUES (
	15,
	8
);

INSERT INTO PilotoEvento(
	idColaborador,
	idEvento
)
VALUES (
	15,
	9
);

INSERT INTO PilotoEvento(
	idColaborador,
	idEvento
)
VALUES (
	5,
	10
);

INSERT INTO PilotoEvento(
	idColaborador,
	idEvento
)
VALUES (
	10,
	10
);


--Table: EventoBandeira

INSERT INTO EventoBandeira(
	idEvento,
	idBandeira
)
VALUES (
	2,
	1
);

INSERT INTO EventoBandeira(
	idEvento,
	idBandeira
)
VALUES (
	6,
	2
);

INSERT INTO EventoBandeira(
	idEvento,
	idBandeira
)
VALUES (
	8,
	3
);

INSERT INTO EventoBandeira(
	idEvento,
	idBandeira
)
VALUES (
	9,
	4
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

INSERT INTO ClassificacaoGeral(
	epoca,
	lugar,
	idColaborador
)
VALUES (
	2021,
	5,
	13
);

INSERT INTO ClassificacaoGeral(
	epoca,
	lugar,
	idColaborador
)
VALUES (
	2021,
	6,
	15
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
