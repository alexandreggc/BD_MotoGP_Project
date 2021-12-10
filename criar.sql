--criar.sql

PRAGMA foreign_keys = on;
BEGIN TRANSACTION;

.mode columns
.headers on


DROP TABLE IF EXISTS Nacionalidade;

CREATE TABLE Nacionalidade(
	idNacionalidade INTEGER PRIMARY KEY, 
	nome TEXT CONSTRAINT nn_nacionalidade_nome NOT NULL
);


DROP TABLE IF EXISTS Marca;

CREATE TABLE Marca(
	idMarca INTEGER PRIMARY KEY,
	nome TEXT CONSTRAINT nn_marca_nome NOT NULL, 
	anoDeIngresso INTEGER CONSTRAINT nn_marca_anodeingresso NOT NULL CONSTRAINT check_marca_anodeingresso CHECK (anoDeIngresso >= 1949),
	idNacionalidade INTEGER CONSTRAINT fk_marca_idnacionalidade REFERENCES Nacionalidade(idNacionalidade) ON DELETE RESTRICT ON UPDATE CASCADE
);


DROP TABLE IF EXISTS Equipa;

CREATE TABLE Equipa(
	idEquipa INTEGER PRIMARY KEY, 
	nome TEXT CONSTRAINT nn_equipa_nome NOT NULL, 
	tipo TEXT CONSTRAINT nn_equipa_tipo NOT NULL CONSTRAINT check_equipa_tipo CHECK (tipo = "FABRICA" OR tipo = "SATELITE"), 
	idMarca INTEGER CONSTRAINT fk_equipa_idmarca REFERENCES Marca(idMarca) ON DELETE CASCADE ON UPDATE CASCADE
);


DROP TABLE IF EXISTS Mota;

CREATE TABLE Mota(
	idMota INTEGER PRIMARY KEY, 
	potencia INTEGER CONSTRAINT nn_mota_potencia NOT NULL CONSTRAINT check_mota_potencia CHECK(potencia > 0), 
	peso INTEGER CONSTRAINT nn_mota_peso NOT NULL CONSTRAINT check_mota_peso CHECK(peso > 0),
	velocidadeMax INTEGER CONSTRAINT nn_mota_velocidademax NOT NULL CONSTRAINT check_mota_velocidademax CHECK(velocidadeMax <= 340),
	idEquipa INTEGER CONSTRAINT fk_mota_idequipa REFERENCES Equipa(idEquipa) ON DELETE CASCADE ON UPDATE CASCADE
);


DROP TABLE IF EXISTS Pneu;

CREATE TABLE Pneu(
	idPneu INTEGER PRIMARY KEY,  
	marca TEXT CONSTRAINT nn_pneu_marca NOT NULL, 
	rigidez TEXT CONSTRAINT nn_pneu_rigidez NOT NULL CONSTRAINT check_pneu_rigidez CHECK(rigidez = "MACIO" OR rigidez = "MEDIO" OR rigidez = "DURO"), 
	tipo TEXT CONSTRAINT nn_pneu_tipo NOT NULL CONSTRAINT check_pneu_tipo CHECK(tipo = "TRASEIRO" OR tipo = "DIANTEIRO"),
	idMota CONSTRAINT fk_pneu_idmota REFERENCES Mota(idMota) ON DELETE SET NULL ON UPDATE CASCADE
);


DROP TABLE IF EXISTS Colaborador;

CREATE TABLE Colaborador(
	idColaborador INTEGER PRIMARY KEY,
	nome TEXT CONSTRAINT nn_colaborador_nome NOT NULL,
	dataDeNascimento DATE CONSTRAINT nn_colaborador_nome NOT NULL,
	idNacionalidade INTEGER CONSTRAINT fk_colaborador_idnacionalidade REFERENCES Nacionalidade(idNacionalidade) ON DELETE RESTRICT ON UPDATE CASCADE
);


DROP TABLE IF EXISTS Engenheiro;

CREATE TABLE Engenheiro(
	idColaborador INTEGER PRIMARY KEY CONSTRAINT fk_engenheiro_idcolaborador REFERENCES Colaborador(idColaborador) ON DELETE CASCADE ON UPDATE CASCADE,
	ramo TEXT CONSTRAINT nn_engenheiro_ramo NOT NULL,
	idEquipa INTEGER CONSTRAINT fk_engenheiro_idequipa REFERENCES Equipa(idEquipa) ON DELETE CASCADE ON UPDATE CASCADE
);


DROP TABLE IF EXISTS Piloto;

CREATE TABLE Piloto(
	idColaborador INTEGER PRIMARY KEY CONSTRAINT fk_piloto_idcolaborador REFERENCES Colaborador(idColaborador) ON DELETE CASCADE ON UPDATE CASCADE, 
	numero INTEGER CONSTRAINT nn_piloto_numero NOT NULL, 
	numeroPontos INTEGER CONSTRAINT nn_piloto_numeropontos NOT NULL, 
	tipo TEXT CONSTRAINT nn_piloto_tipo NOT NULL CONSTRAINT check_piloto_tipo CHECK(tipo = "PRINCIPAL" OR tipo = "RESERVA"),
	idEquipa INTEGER CONSTRAINT fk_piloto_idequipa REFERENCES Equipa(idEquipa) ON DELETE CASCADE ON UPDATE CASCADE,
	idMota INTEGER CONSTRAINT fk_piloto_idmota REFERENCES Mota(idMota) ON DELETE RESTRICT ON UPDATE CASCADE
);


DROP TABLE IF EXISTS Circuito;

CREATE TABLE Circuito(
	idCircuito INTEGER PRIMARY KEY, 
	nome TEXT CONSTRAINT nn_circuito_nome NOT NULL, 
	pais TEXT CONSTRAINT nn_circuito_pais NOT NULL, 
	perimetro REAL CONSTRAINT nn_circuito_perimetro NOT NULL CONSTRAINT check_circuito_perimetro CHECK(perimetro > 0),
	numSetores INTEGER CONSTRAINT nn_circuito_numsetores NOT NULL CONSTRAINT check_circuit_numsetores CHECK(numSetores > 0)
);


DROP TABLE IF EXISTS Corrida;

CREATE TABLE Corrida(
	idCorrida INTEGER PRIMARY KEY, 
	nome TEXT CONSTRAINT nn_corrida_nome NOT NULL, 
	data DATE CONSTRAINT nn_corrida_dat NOT NULL, 
	numVoltas INTEGER CONSTRAINT nn_corrida_numvoltas NOT NULL CONSTRAINT check_corrida_numvoltas CHECK(numVoltas > 0),
	idCircuito INTEGER CONSTRAINT fk_corrida_idcircuito REFERENCES Circuito(idCircuito) ON DELETE CASCADE ON UPDATE CASCADE
);


DROP TABLE IF EXISTS Grid;

CREATE TABLE Grid(
	idCorrida INTEGER CONSTRAINT fk_grid_idcorrida REFERENCES Corrida(idCorrida) ON DELETE CASCADE ON UPDATE CASCADE, 
	idColaborador INTEGER CONSTRAINT fk_grid_idcolaborador REFERENCES Piloto(idColaborador) ON DELETE CASCADE ON UPDATE CASCADE, 
	posicaoInicial INTEGER CONSTRAINT nn_grid_posicaoinicial NOT NULL CONSTRAINT check_grid_posicaoinicial CHECK(posicaoInicial > 0), 
	posicaoFinal INTEGER CONSTRAINT nn_grid_posicaofinal NOT NULL CONSTRAINT check_grid_posicaofinal CHECK(posicaoFinal > 0),
	PRIMARY KEY(idCorrida, idColaborador),
	UNIQUE(idCorrida, posicaoInicial),
	UNIQUE(idCorrida, posicaoFinal)
);


DROP TABLE IF EXISTS ClassificacaoGeral;

CREATE TABLE ClassificacaoGeral(
	epoca INTEGER CONSTRAINT check_classificacaogeral_epoca CHECK(epoca >= 1949),
	lugar INTEGER CONSTRAINT check_classificacaogeral_lugar CHECK(lugar > 0),
	idColaborador INTEGER CONSTRAINT fk_classificacaogeral_idcolaborador REFERENCES Piloto(idColaborador) ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY(epoca, lugar, idColaborador)
);


DROP TABLE IF EXISTS Evento;

CREATE TABLE Evento(
	idEvento INTEGER PRIMARY KEY, 
	volta INTEGER CONSTRAINT nn_evento_volta NOT NULL CONSTRAINT check_evento_volta CHECK(volta > 0), 
	idCorrida CONSTRAINT fk_evento_idcorrida REFERENCES Corrida(idCorrida) ON DELETE CASCADE ON UPDATE CASCADE
);


DROP TABLE IF EXISTS Acidente;

CREATE TABLE Acidente(
	idEvento INTEGER PRIMARY KEY CONSTRAINT fk_acidente_idevento REFERENCES Evento(idEvento) ON DELETE CASCADE ON UPDATE CASCADE,
	setor INTEGER CONSTRAINT nn_acidente_setor NOT NULL CONSTRAINT check_acidente_setor CHECK(setor > 0)
);


DROP TABLE IF EXISTS Outro;

CREATE TABLE Outro(
	idEvento INTEGER PRIMARY KEY CONSTRAINT fk_outro_idevento REFERENCES Evento(idEvento) ON DELETE CASCADE ON UPDATE CASCADE, 
	descricao TEXT CONSTRAINT nn_outro_descricao NOT NULL
);


DROP TABLE IF EXISTS Ultrapassagem;

CREATE TABLE Ultrapassagem(
	idEvento INTEGER PRIMARY KEY CONSTRAINT fk_ultrapassagem_idevento REFERENCES Evento(idEvento) ON DELETE CASCADE ON UPDATE CASCADE, 
	setor INTEGER CONSTRAINT nn_ultrapassagem_setor NOT NULL CONSTRAINT check_ultrapassagem_setor CHECK(setor > 0)
);


DROP TABLE IF EXISTS Bandeira;

CREATE TABLE Bandeira(
	idEvento INTEGER CONSTRAINT fk_bandeira_idevento REFERENCES Evento(idEvento) ON DELETE CASCADE ON UPDATE CASCADE, 
	cor TEXT CONSTRAINT nn_bandeira_cor NOT NULL,
	PRIMARY KEY(idEvento, cor)
);


DROP TABLE IF EXISTS PilotoCorrida;

CREATE TABLE PilotoCorrida(
	idColaborador INTEGER CONSTRAINT fk_pilotocorrida_idpiloto REFERENCES Piloto(idColaborador) ON DELETE CASCADE ON UPDATE CASCADE,
	idCorrida INTEGER CONSTRAINT fk_pilotocorrida_idcorrida REFERENCES Corrida(idCorrida) ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY(idColaborador, idCorrida)
);


DROP TABLE IF EXISTS PilotoEvento;

CREATE TABLE PilotoEvento(
	idColaborador INTEGER CONSTRAINT fk_pilotoevento_idpiloto REFERENCES Piloto(idColaborador) ON DELETE CASCADE ON UPDATE CASCADE,
	idEvento INTEGER CONSTRAINT fk_pilotoevento_idevento REFERENCES Evento(idEvento) ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY(idColaborador, idEvento)
);

DROP TABLE IF EXISTS EventoBandeira;

CREATE TABLE EventoBandeira(
	idEvento INTEGER CONSTRAINT fk_eventobandeira_idevento REFERENCES Evento(idEvento) ON DELETE CASCADE ON UPDATE CASCADE,
	cor TEXT CONSTRAINT fk_eventobandeira_cor REFERENCES Bandeira(cor) ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY(idEvento, cor) 
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
