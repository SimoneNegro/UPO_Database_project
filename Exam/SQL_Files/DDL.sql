CREATE TABLE Utente (
    Mail VARCHAR(255) PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Cognome VARCHAR(255) NOT NULL,
    immagineProfilo VARCHAR(255),
    Nickname VARCHAR(255) UNIQUE NOT NULL,
    Password VARCHAR(255) NOT NULL,
    DataNascita DATE NOT NULL,
    Cellulare VARCHAR(20) NOT NULL,
    Bit decimal(10, 2) DEFAULT 0 NOT NULL,
    DataRegistrazione timestamp NOT NULL,
    Premium BOOLEAN DEFAULT false NOT NULL,
    Streamer BOOLEAN DEFAULT false NOT NULL,
    NumLive INT DEFAULT 0 NOT NULL,
    MinTrasmessi INT DEFAULT 0 NOT NULL,
    NumMediaSpect INT DEFAULT 0 NOT NULL,
    Affiliate BOOLEAN DEFAULT false NOT NULL,
    UtenteFragile BOOLEAN DEFAULT false NOT NULL,
    Disabilità VARCHAR(255)
);

CREATE TABLE abbonamento(
    mailUtente varchar(255) NOT NULL,
    dataInizio timeStamp NOT NULL,
    dataFine timeStamp NOT NULL,
    CONSTRAINT fk_mailUtentePremium FOREIGN KEY(mailUtente) REFERENCES utente(mail) ON DELETE CASCADE,
    PRIMARY KEY(dataInizio,mailUtente)
);

CREATE TABLE Canale (
    Id SERIAL PRIMARY KEY,
    Descrizione VARCHAR(255),
    ImmagineProfilo bytea,
    Trailer BYTEA,
    Ban BOOLEAN DEFAULT false NOT NULL,
    DataCreazione timestamp NOT NULL,
    MailStreamer VARCHAR(255) NOT NULL,
    CONSTRAINT fk_mailStreamer FOREIGN KEY (MailStreamer) REFERENCES Utente(Mail) ON DELETE CASCADE
);

CREATE TYPE TipoLive AS ENUM ('normale', 'esclusivo');

CREATE TABLE Live (
    Id SERIAL PRIMARY KEY,
    Titolo VARCHAR(255) NOT NULL,
    Descrizione VARCHAR(255),
		Live VARCHAR(255) NOT NULL,
    DataOraInizio TIMESTAMP,
    DataOraFine TIMESTAMP,
    NumMediaSpect INT,
    Tipologia TipoLive,
    IDCanale INT NOT NULL,
    mailStreamer VARCHAR(255),
    CONSTRAINT fk_idCanale FOREIGN KEY (IDCanale) REFERENCES Canale(ID) ON DELETE CASCADE,
    CONSTRAINT fk_mailStreamer FOREIGN KEY (mailStreamer) REFERENCES Utente(mail) ON DELETE CASCADE
);

CREATE TABLE Contenuto (
    Id SERIAL PRIMARY KEY,
    Titolo VARCHAR(255) NOT NULL,
    Durata INTERVAL NOT NULL, -- Puoi utilizzare il tipo INTERVAL per rappresentare la durata
    File VARCHAR(255) NOT NULL,
		Categorie VARCHAR(255),
    Tipo VARCHAR(255),
    NumeroVisual INT DEFAULT 0 NOT NULL,
    DataRilascio timestamp,
  	tipoAiuto varchar(255),
    IDLive INT, -- Chiave esterna
		IDCanale INT,
		CONSTRAINT fk_idCanale FOREIGn KEY(IDCanale) REFERENCES canale(id) ON DELETE CASCADE,
    CONSTRAINT fk_idLive FOREIGN KEY (IDLive) REFERENCES Live(ID) ON DELETE CASCADE
);

CREATE TABLE Social (
    Nome VARCHAR(255) PRIMARY KEY
);

CREATE TABLE Admin (
	Mail VARCHAR(255) PRIMARY KEY NOT NULL,
    Nickname VARCHAR(255) UNIQUE NOT NULL,
	Nome VARCHAR(255) NOT NULL,
	Cognome VARCHAR(255) NOT NULL,
    Password VARCHAR(255) NOT NULL
);

CREATE TABLE Reazione(
	dataOra timestamp NOT NULL,
	mailUtente varchar(255) NOT NULL,
	idLive int NOT NULL,
	reazione varchar(255) NOT NULL,
	tipo varchar(255) NOT NULL,
	CONSTRAINT fk_mailUtente FOREIGN KEY (mailUtente) REFERENCES Utente(mail) ON DELETE CASCADE,
	CONSTRAINT fk_idLive FOREIGN KEY (IDLive) REFERENCES Live(ID) ON DELETE CASCADE,
	primary key(dataora, mailutente, idlive)
);

CREATE TABLE Commento(
	dataOra timestamp NOT NULL,
	mailUtente varchar(255) NOT NULL,
	idLive int NOT NULL,
	commento varchar(255) NOT NULL,
	CONSTRAINT fk_mailUtente FOREIGN KEY (mailUtente) REFERENCES Utente(mail) ON DELETE CASCADE,
	CONSTRAINT fk_idLive FOREIGN KEY (IDLive) REFERENCES Live(ID) ON DELETE CASCADE,
	primary key(dataora, mailutente, idlive)
);

CREATE TABLE MessaggioPrivato (
	Id SERIAL PRIMARY KEY,
	Testo varchar(255),
	DataInvio TIMESTAMP NOT NULL,
	ContenutoMultimediale VARCHAR(255),
	mailMittente varChar(255) NOT NULL,
	mailDestinatario varChar(255) NOT NULL,
	CONSTRAINT fk_mailMittente FOREIGN KEY (mailMittente) REFERENCES Utente(mail) ON DELETE CASCADE,
	CONSTRAINT fk_mailDestinatario FOREIGN KEY (mailDestinatario) REFERENCES Utente(mail) ON DELETE CASCADE
);

CREATE TABLE Sub (
	Id SERIAL PRIMARY KEY,
	Tipo VARCHAR(255) NOT NULL, 
	Prezzo DECIMAL(10, 2) NOT NULL, 
	Data timestamp NOT NULL,
	mailUtente varchar(255) NOT NULL,
	IDCanale INT NOT NULL,
	CONSTRAINT fk_mailUtente FOREIGN KEY (mailUtente) REFERENCES Utente(mail) ON DELETE CASCADE,
	CONSTRAINT fk_idCanale FOREIGN KEY (IDCanale) REFERENCES Canale(ID) ON DELETE CASCADE
);

CREATE TABLE visualizza (
	mailUtente varchar(255) NOT NULL,
	idLive INT NOT NULL,
	CONSTRAINT fk_mailUtente FOREIGN KEY (mailUtente) REFERENCES Utente(mail) ON DELETE CASCADE,
	CONSTRAINT fk_idLive FOREIGN KEY (idLive) REFERENCES live(id) ON DELETE CASCADE,
	primary key(mailutente, idLive)
);

CREATE TABLE dona_a (
	mailUtente varchar(255) NOT NULL,
	mailStreamer varchar(255) NOT NULL,
	bit decimal(10, 2) NOT NULL,
	dataOra timestamp NOT NULL, 
	CONSTRAINT fk_mailUtente FOREIGN KEY (mailUtente) REFERENCES Utente(mail) ON DELETE CASCADE,
	CONSTRAINT fk_mailStreamer FOREIGN KEY (mailStreamer) REFERENCES Utente(mail) ON DELETE CASCADE,
	primary key(mailutente, mailStreamer, dataOra)
);

CREATE TABLE segue (
	mailUtente varchar(255) NOT NULL,
	IDCanale INT NOT NULL,
	CONSTRAINT fk_mailUtente FOREIGN KEY (mailUtente) REFERENCES Utente(mail) ON DELETE CASCADE,
	CONSTRAINT fk_idCanale FOREIGN KEY (IDCanale) REFERENCES Canale(ID) ON DELETE CASCADE,
	primary key(mailutente, idcanale)
);

CREATE TABLE vota (
	mailUtente varchar(255) NOT NULL,
	IDcontenuto INT NOT NULL,
	Likert INT CHECK (Likert >= 1 AND Likert <= 10) NOT NULL,
	CONSTRAINT fk_mailUtente FOREIGN KEY (mailUtente) REFERENCES Utente(mail) ON DELETE CASCADE,
	CONSTRAINT fk_IDcontenuto FOREIGN KEY (IDcontenuto) REFERENCES contenuto(ID) ON DELETE CASCADE,
	primary key(mailutente, IDcontenuto)
);

CREATE TABLE visualizzaEsclusiva (
	mailUtente varchar(255) NOT NULL,
	idLive INT NOT NULL,
	CONSTRAINT fk_mailUtente FOREIGN KEY (mailUtente) REFERENCES Utente(mail) ON DELETE CASCADE,
	CONSTRAINT fk_idLive FOREIGN KEY (idLive) REFERENCES live(id) ON DELETE CASCADE,
	primary key(mailutente, idLive)
);

CREATE TABLE ha_accesso (
	idContenutoAccessibile INT NOT NULL,
	mailUtenteFragile varchar(255) NOT NULL,
	CONSTRAINT fk_idContenutoAccessibile FOREIGN KEY (idContenutoAccessibile) REFERENCES contenuto(id) ON DELETE CASCADE,
	CONSTRAINT fk_mailUtenteFragile FOREIGN KEY (mailUtenteFragile) REFERENCES utente(mail) ON DELETE CASCADE,
	primary key(idContenutoAccessibile, mailUtenteFragile)
);

CREATE TABLE amministra (
	mailAdmin varchar(255) NOT NULL,
	IDCanale INT NOT NULL,
	CONSTRAINT fk_mailAdmin FOREIGN KEY (mailAdmin) REFERENCES Admin(mail) ON DELETE CASCADE,
	CONSTRAINT fk_idCanale FOREIGN KEY (IDCanale) REFERENCES Canale(ID) ON DELETE CASCADE,
	primary key(mailAdmin, idcanale)
);

CREATE TABLE associato (
	nomeSocial varchar(255) NOT NULL,
	IDCanale INT NOT NULL,
	link varchar(255),
	CONSTRAINT fk_nomeSocial FOREIGN KEY (nomeSocial) REFERENCES social(nome) ON DELETE CASCADE,
	CONSTRAINT fk_idCanale FOREIGN KEY (IDCanale) REFERENCES Canale(ID) ON DELETE CASCADE,
	primary key(nomeSocial, idcanale)
);

CREATE TABLE Commenta (
	mailutente varchar(255) NOT NULL,
	idcontenuto INT NOT NULL,
	dataorainvio timestamp NOT NULL,
	commento varchar(255) NOT NULL, 
	CONSTRAINT fk_mailutente FOREIGN KEY (mailutente) REFERENCES utente(mail) ON DELETE CASCADE,
	CONSTRAINT fk_idcontenuto FOREIGN KEY (idcontenuto) REFERENCES contenuto(ID) ON DELETE CASCADE,
	primary key(mailutente, idcontenuto, dataorainvio)
);