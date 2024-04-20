-- Utente normale
INSERT INTO utente(mail, nickname, nome, cognome, password, datanascita, cellulare, dataregistrazione)
VALUES
('ale@gmail.com', 'aleIlMito', 'Alessandro', 'Forti', '123', '23/05/2001', '6806425619', NOW()::DATE),
('simone.05@gmail.com', 'IlSimo_', 'Simone', 'Cechi', '4387', '1/11/2002', '7192801517', NOW()::DATE),
('2matteo@gmail.com', 'matMad', 'Matteo', 'Rossi', '3ebt3', '15/08/2003', '2168309177', NOW()::DATE),
('ilfranco@gmail.com', 'franco_tarta', 'Francesco', 'Franco', 'e9xnn98', '2/07/1982', '1693418593', NOW()::DATE),
('marcogeno@gmail.com', 'genov', 'Marco', 'Genovesi', 'uncey98', '9/01/1984', '8907677892', NOW()::DATE),
('gengis@gmail.com', 'geng', 'Gengis', 'Carl', 'ce9nwy9', '12/02/2004', '7890263718', NOW()::DATE),
('annunziata@gmail.com', 'annun', 'Annunziata', 'Varce', 'ef89b7', '16/12/1989', '7899345267', NOW()::DATE),
('giacomina@gmail.com', 'giaconz', 'Giacomina', 'Rom', 'ec98ne', '11/09/2001', '6801838193', NOW()::DATE),
('laale@gmail.com', 'sale_fino', 'Alessia', 'Fino', 'dnycy9', '7/08/1999', '8001837183', NOW()::DATE),
('franz@gmail.com', 'fra_dog', 'Francesca', 'Blasi', 'eccsf98ne', '14/03/2000', '6806828093', NOW()::DATE),
('rominaromea@gmail.com', 'la_romi', 'Romina', 'Romea', 'edwuhne', '03/07/2002', '0201636793', NOW()::DATE);

-- Utenti fragili
INSERT INTO utente(mail, nickname,nome,cognome, datanascita, cellulare, password, dataregistrazione,UtenteFragile,disabilità)
VALUES
('gigi17@tiscali.it','GigiGamer','Luigi', 'Rossi', '17/08/03', '3274656382', '1354t', NOW()::DATE,true,'sordità'), 
('ernesto45@gmail.com','ernest','Ernesto', 'Garavaglia', '11/02/1945', '8756473902', 'vbteruybgv', NOW()::DATE,true,'cecità'), 
('theGame@alice.it','xXilgamerXx','Filippo', 'Rada', '7/07/1977', '645720948', 'pippi77', NOW()::DATE,true,'sordità'), 
('paolino95@gmail.com','Baolo22','Paolo', 'Cannone', '12/11/1995', '3327876548', 'gify57', NOW()::DATE,true,'cecità'), 
('Ali.99@gmail.com','Alix','Alice', 'Grassi', '02/12/1999', '7564838958', '786fgty', NOW()::DATE,true,'sordità'), 
('Emi0217@mail.com','Emy','Emilia', 'Melone', '07/07/2007', '4657384756', 'pippo12', NOW()::DATE,true,'cecità'), 
('pablo.Verdi@gmail.com','__Pablo__','Pablo', 'Nerchi', '11/05/2001', '4630908786', 'claudio95', NOW()::DATE,true,'cecità'), 
('giovanna.Grigi72@tiscali.it','giovaGrey','Giovanna', 'Vita', '11/09/1972', '75647561098', 'arancio2', NOW()::DATE,true,'sordità');

-- Utenti premium
INSERT INTO utente(mail, nickname,nome,cognome, datanascita, cellulare, password, dataregistrazione,premium)
VALUES
('pippo3@tiscali.it','Pippino','Filippo','Prato','11/08/2003','3546783746','pippo2','11/02/2021',true),
('gianni84@alice.it','TheGiannix','Giovanni','Trota','23/12/2004','1875647389','1234','12/12/2012',true),
('prodiX@gmail.com','prodiX','Mirko','Alessandri','07/08/1989','5364758909','mirko89','07/08/2013',true),
('xiuderone@gmail.com','Xiuder','Pippo','Franco','18/04/1990','9879879876','pamyIlForno','11/08/2015',true),
('ajeje@tiscali.it','AjejeBrazorf','Cataldo','Baglio','28/11/1958','1564756451','brazorf12','14/05/2018',true),
('shugar@tiscali.it','Shugar','Giacomo','Poretti','26/04/1956','1564756452','tenente89','15/05/2019',true),
('pdor@tiscali.it','PdorDiKmer','Giovanni','Storti','20/02/1957','1564756453','pdor11','16/05/2015',true),
('napl17@gmail.com','niko','Nikolò','Grana','11/02/2002','8675748576','panda12','12/08/2017',true),
('claudio.denari12@alice.it','xXclaudioXx','Claudio','Denari','03/004/1999','5674657465','dena12','02/07/2018',true),
('maria.rissu@alice.it','mary04','Maria','Rissu','11/04/2004','9873457623','mary8','31/01/2017',true),
('m.grati@gmail.com','martyUWU','Merta','Grati','17/02/2005','7685746523','titti8','07/12/2020',true);

-- Utenti misti (fragili+premium)
INSERT INTO utente(mail, nickname,nome,cognome, datanascita, cellulare, password, dataregistrazione,UtenteFragile,disabilità,premium)
VALUES
('alys@tiscali.it','alysa_pi','Alysa', 'Misia', '18/08/1987', '8275626380', '1eh354t', '12/08/2023',true,'sordità', true), 
('fra.crimi@gmail.com','IlFrescoDiZona','Francesco', 'Storti', '11/09/2005', '8558572903', 'vbteruybgvdhiuh', '12/12/2023',true,'cecità', true), 
('giancarletto@alice.it','gian_car','Giancarlo', 'Rossi', '7/07/1997', '2891748130', 'iuewhuhf87', '14/01/2023',true,'sordità', true), 
('luabin@gmail.com','bianconi','Luca', 'Bianchi', '9/8/1999', '3327872157', 'gsgyoify57', '10/06/2023',true,'cecità', true), 
('elia91@gmail.com','eliaria','Elia', 'Stoma', '09/5/2000', '2810838958', 'iuenyf', '25/08/2023',true,'sordità', true);

-- Utenti streamer
INSERT INTO utente(mail, nickname,nome,cognome, datanascita, cellulare, password, dataregistrazione,streamer)
VALUES
('alicemari@tiscali.it','alice_marinata','Alice', 'Marina', '17/08/1992', '2245826380', 'gfryuvh', '12/08/2021',true), 
('lorisbondo@gmail.com','LoBondo','Loris', 'Bondo', '11/09/2005', '8558572903', 'vbteruybgvdhiuh', '12/12/2023',true), 
('giaco.totti@alice.it','gia_tot','Giacomo', 'Matteotti', '7/1/2002', '2891744791', 've8u', '10/09/2019',true), 
('blur69@gmail.com','blur','Gianmarco', 'Tocco', '18/3/1999', '3427172157', 'hweihc', '10/12/2020',true), 
('ilmasseo@gmail.com','IlMasseo','Lorenzo', 'Masseo', '2/4/1994', '281083324', 'ewybdewyn', '2/2/2022',true);

-- Utenti misti (streamer+premium)
INSERT INTO utente(mail, nickname,nome,cognome, datanascita, cellulare, password, dataregistrazione,streamer,premium)
VALUES
('mrT@gmail.com','CicciGamer89','Mirko','Alessandrini','27/01/1989','5768576857','akunaMatata','17/08/2022',true,true),
('kratos11@tiscali.it','Poldo','Andrea','Parisi','11/11/2001','9876543456','gaming17','08/09/2017',true,true),
('boono18@gmail.com','MatteoHS','Matteo','Macchiati','28/10/1992','9865436578','laVicina','08/08/2018',true,true),
('marza4@alice.it','TheRealMarza','Francesco','Marzano','15/05/1996','0002223789','ilMaestro1','17/12/2020',true,true),
('mollu@gmail.com','Mollu','Fabio','Mollura','17/01/1996','3737378989','ilMac','11/12/2020',true,true),
('kuro.5@gmail.com','Kurolily','Sara','Stefanizzi','11/02/1988','9998786978','pokemon22','07/05/2017',true,true),
('kdo@tiscali.it','Kodomo','Chiara','Papalia','23/09/1992','0981112345','kodo92','08/09/2018',true,true);

-- prova affiliate
INSERT INTO utente(mail, nickname, nome, cognome, password, datanascita, cellulare, dataregistrazione, mintrasmessi, nummediaspect)
VALUES
('provaAffiliate@gmail.com', 'IlPazzoSgravo', 'Simone', 'Forti', '123', '23/05/2001', '6806425619', NOW()::DATE, 550, 4);

INSERT INTO utente(mail, nickname, nome, cognome, password, datanascita, cellulare, dataregistrazione)
VALUES
('giulio@gmail.com', 'giuGiu', 'Giulio', 'Bianchi', '7h4t5', '10/09/1995', '9876543210', NOW()::DATE),
('lisa@gmail.com', 'lisLis', 'Lisa', 'Verdi', 'p@ssw0rd', '25/04/1988', '1234567890', NOW()::DATE);

-- abbonamenti
insert into abbonamento(dataInizio,dataFine,mailUtente)
values
('14/12/2022','14/01/2023','pippo3@tiscali.it'),
('13/01/2013','13/02/2013','gianni84@alice.it'),
('23/11/2013','23/12/2013','prodiX@gmail.com'),
('12/09/2015','12/10/2015','xiuderone@gmail.com'),
('17/01/2019','17/02/2019','ajeje@tiscali.it'),
('23/08/2019','23/09/2019','shugar@tiscali.it'),
('17/01/2016','17/02/2016','pdor@tiscali.it'),
('11/01/2022','11/02/2022','napl17@gmail.com'),
('14/01/2023','14/02/2023','claudio.denari12@alice.it'),
('28/02/2018','28/03/2018','maria.rissu@alice.it'),
('11/12/2023','11/01/2024','m.grati@gmail.com'),
('18/08/2021','18/09/2021','alys@tiscali.it'),
('11/01/2024','11/02/2024','fra.crimi@gmail.com'),
('15/01/2024','15/02/2024','giancarletto@alice.it'),
('17/11/2023','17/12/2023','luabin@gmail.com'),
('16/12/2023','16/01/2024','elia91@gmail.com'),
('11/09/2022','11/10/2022','mrT@gmail.com'),
('11/09/2022','11/10/2022','kratos11@tiscali.it'),
('09/09/2019','09/10/2019','boono18@gmail.com'),
('01/01/2024','01/02/2024','marza4@alice.it'),
('17/01/2024','17/02/2024','mollu@gmail.com'),
('23/10/2019','23/11/2019','kuro.5@gmail.com'),
('11/09/2019','11/10/2019','kdo@tiscali.it');

-- Con descrizione normali
INSERT INTO canale(descrizione, datacreazione, mailstreamer)
VALUES
('Seguitemi per vedere le mie live dove reagisco a video di youtube.','8/1/2021','blur69@gmail.com'),
('Il collegio è la mia serie preferita.','2/10/2022','ilmasseo@gmail.com');

-- Senza descrizione normali
INSERT INTO canale(datacreazione, mailstreamer)
VALUES
('21/1/2021','giaco.totti@alice.it'),
('25/12/2023','lorisbondo@gmail.com'),
('4/9/2023','alicemari@tiscali.it');

-- misti
INSERT INTO canale (descrizione,DataCreazione,MailStreamer)
values 
('Hakuna Matata Ragazzi!','11/05/2023','mrT@gmail.com'),
('Gaming!','08/09/2017','kratos11@tiscali.it'),
('Il top streamer di maratone','08/08/2018','boono18@gmail.com'),
('Il ninja di Bari colpisce ancora','11/02/2021','marza4@alice.it'),
(NULL,'27/12/2020','mollu@gmail.com'),
('Team RedBull','11/05/2019','kuro.5@gmail.com'),
(NULL,'17/03/2022','kdo@tiscali.it');

-- prova affiliate
INSERT INTO canale(datacreazione, mailstreamer)
VALUES
('21/1/2021','provaAffiliate@gmail.com');

-- tutti i canali almeno hanno una live fatta 
-- oppure la stanno ancora facendo
INSERT INTO Live(Titolo, Descrizione, Live, DataOraInizio, DataOraFine, NumMediaSpect, Tipologia, IDCanale, mailStreamer)
VALUES
('|CORSE GTA +18|OSPITE SEGRETO A CASA|TAGLIO CAPELLI LIVE|REACTIONS|5 SHOTS|QUIZZONI|FORTNITE|FALL GUYS|','ultima trasmissione live l’altro ieri','https://www.twitch.tv/tumblurr','23-01-2024 19:00:00','24-01-2024 00:10:00',20000,'normale',1,'blur69@gmail.com'),
('CONTINUIAMO IL SERVER DEI FIOI !sub !sitoprime !libro !masseo','Streaming condite da un pizzico di linguaggio scurrile, astenersi credenti','https://www.twitch.tv/ilmasseo','25-01-2024 14:00:00',NULL,2300,'esclusivo',2,'ilmasseo@gmail.com'),
('NUOVO EVENTO DI FORTNITE, ESPLODE TUTTO! AIUTO!!','Nuovo evento pazzurdo di fornite, non ci crederete mai cosa accadra. rimanete sintonizzati','https://www.twitch.tv/gia_tot','22-12-2023 18:00:00','22-12-2023 22:13:56',14,'normale',3,'giaco.totti@alice.it'),
('UN PO’ DI ESPLORAZIONE, POI POOLIAMO COME PAZZI','Oggi esploriamo una nuova zona','https://www.twitch.tv/LoBondo','31-12-2023 16:30:00','1-01-2024 4:00:00',14,'normale',4,'lorisbondo@gmail.com'),
('DISEGNI FATTI SU RICHIESTA DAI SUB #disegno #furry #girl','Disegno furry su richiesta','https://www.twitch.tv/alice_marinata','24-01-2024 22:30:00',NULL,1100,'esclusivo',5,'alicemari@tiscali.it'),
('DETECTIVE CICCIO E’ RITORNATO PIU’ FORTE DI PRIMA','Akuna matata, oggi il detective ciccio farà il culo','https://www.twitch.tv/cicciogamer89','20-06-2023 19:00:00','20-06-2023 23:30:00',3000,'normale',6,'mrT@gmail.com'),
('ONLY UP ma con i LASER (con la gang) || !prime !discord !sub','Bella rega, oggi live con la gang','https://www.twitch.tv/poldo','20-01-2024 18:30:00','24-01-2024',2680,'esclusivo',7,'kratos11@tiscali.it'),
('LUCYL3IN A CASAHS | SUBATHON - DAY 34 | !HELLOFRESH !RUOTA !MURO !LEVLUP !REGOLE','In un mondo nel quale tutti puntano a diventare qualcuno, la sfida che ho imposto alla mia vita è riuscire a rimanere me stesso, costi quel che costi','https://www.twitch.tv/matteohs','25-01-2024 16:45:01',NULL,1050,'esclusivo',8,'boono18@gmail.com'),
('LA DOMENICA DEL SIUM - !BREUNOR !SPEEDYPOLLO !MARZATV !DISCORD !BTTV !7TV','Sdrogo corse poi reaction','https://www.twitch.tv/therealmarzaa','24-01-2024 19:45:00','25-01-2024 04:40:00',15760,'normale',9,'marza4@alice.it'),
('IL PACCO DI TONY E SHARKONE...','Oggi Rocket poi LOL, Buona visione','https://www.twitch.tv/mollu','12-12-2023 16:00:00','12-12-2023 20:00:00',980,'normale',10,'mollu@gmail.com'),
('PALWORLD chillino, alle 20:00 MGS !grupposub !merch','Serata chill ma con pockemon e arm!','https://www.twitch.tv/kurolily','25-01-2024',NULL,1700,'esclusivo',11,'kuro.5@gmail.com'),
('Horror co-op con @sononervy','Chiacchere e poi un po’ di The Escape','https://www.twitch.tv/kodomo','20-01-2024 16:25:00',NULL,3200,'normale',12,'kdo@tiscali.it');

-- contenuti
INSERT INTO contenuto (Titolo,Durata,File,Categorie,Tipo,NumeroVisual,DataRilascio,IDLive,tipoAiuto,IDCanale)
VALUES
('Che anno è?','00:00:24','https://www.twitch.tv/tumblurr/01','Quattro chiacchere','clip',440235,'23-01-2024 22:26:00',1,'audiovideo',1),
('Esploso qualcosa','00:00:30','https://www.twitch.tv/ilmasseo/01','Palworld','clip',12459,'25-01-2024 18:23:45',2,NULL,2),
('mazeo come creo server?','00:00:28','https://www.twitch.tv/ilmasseo/02','Palworld','clip',537,'25-01-2024 20:13:24',2,'sottotitolato',2),
('NUOVO EVENTO DI FORTNITE, ESPLODE TUTTO! AIUTO!!','04:13:56','https://www.twitch.tv/gia_tot/01','Fortnite','live',5,'23-12-2023 7:30:00',3,'audiovideo',3),
('UN PO’ DI ESPLORAZIONE, POI POOLIAMO COME PAZZI','11:30:00','https://www.twitch.tv/LoBondo/01','Genshin Impact','live',104,'01-01-2024 10:24:40',4,NULL,4),
('FACE REVEAL <3<3','00:1:34','https://www.twitch.tv/alice_marinata/01','Arte','clip',10503,'26-01-2024 13:20:13',5,'audiovideo',5),
('Uccido l`impostore per un bug','00:10:34','https://www.twitch.tv/cicciogamer89/01','Among Us','clip',40257,'22-06-2023',6,NULL,6),
('DETECTIVE CICCIO E’ RITORNATO PIU’ FORTE DI PRIMA','04:30:00','https://www.twitch.tv/cicciogamer89/02','Among Us','live',40257,'22-06-2023 4:00:00',6,NULL,6),
('LA DOMENICA DEL SIUM - !BREUNOR !SPEEDYPOLLO !MARZATV !DISCORD !BTTV !7TV','08:55:00','https://www.twitch.tv/therealmarzaa/01','GTAV','live',15760,'2024-01-25 7:10:50',9,'sottotitolato',9),
('Mi regalano un villico bambino','00:01:27','https://www.twitch.tv/mollu/01','Minecraft','clip',1000,'12-12-2023 16:21:38',10,'audiovideo',10);

-- social
INSERT INTO social (nome)
VALUES ('Instagram'),
 ('X'), 
 ('YouTube'),
 ('OnlyFans'),
 ('FaceBook'),
 ('TikTok'),
 ('Reddit');

-- admin
INSERT INTO admin(mail, nickname, password, nome, cognome)
VALUES
('nikko@gmail.com', 'niko95', '123', 'Niko', 'Rossi'), 
('lukkagamer@gmail.com', 'lukino', '32214', 'Luca', 'Bianchi'),
('ergiorgione@gmail.com', 'Gio12', '456', 'Giorgio', 'Salvini'),
('bossdizonami@gmail.com', 'il_boss', '789', 'Alessandro', 'Koli'),
('lukkagamerz@gmail.com', 'luka', '012', 'Luca', 'Franchi'),
('stilchampion@gmail.com', 'still', '345', 'Giacomo', 'Lotti'),
('enriketto69@gmail.com', 'EnriChetto', '678', 'Enrico', 'Ber');

-- reazioni 
INSERT INTO reazione(dataora, mailutente, idlive, reazione, tipo)
VALUES
('2024-01-25 16:48:09', 'annunziata@gmail.com', 8, '🩵', 'emoji'),
('2024-01-25 17:55:49', 'rominaromea@gmail.com', 8, '😍', 'emoji'),
('2024-01-24 22:35:13', 'theGame@alice.it', 5, '🦃', 'emoji'),
('2024-01-25 15:32:31', 'laale@gmail.com', 2, '🐢', 'emoji'),
('2023-12-22 19:45:09', 'elia91@gmail.com', 3, '💩', 'emoji'),
('2023-12-31 16:32:15', 'giaco.totti@alice.it', 4, '😒', 'emoji'),
('2023-06-20 19:23:13', 'ilmasseo@gmail.com', 6, '😆', 'emoji'),
('2024-01-20 18:35:24', 'ale@gmail.com', 7, '🥱', 'emoji'),
('2024-01-24 19:48:33', 'xiuderone@gmail.com', 9, '😂', 'emoji'),
('2024-01-23 19:38:59', 'pdor@tiscali.it', 1, '😎', 'emoji'),
('2023-12-12 16:02:05', 'lorisbondo@gmail.com', 10, '😶‍🌫️', 'emoji'),
('2024-01-25 18:02:07', 'm.grati@gmail.com', 8, '🩵', 'emoji'),
('2024-01-23 19:42:33', 'mollu@gmail.com', 1, '🐢', 'emoji'),
('2024-01-23 20:10:02', 'kuro.5@gmail.com', 1, '🐢', 'emoji'),
('2024-02-25 01:03:30', 'gianni84@alice.it', 11, '😂', 'emoji'),
('2024-01-20 16:33:53', 'pdor@tiscali.it', 12, '😆', 'emoji'),
('2024-01-24 23:35:31', 'boono18@gmail.com', 5, '🦃', 'emoji'),
('2024-01-23 21:15:00', 'giovanna.Grigi72@tiscali.it', 1, '😶‍🌫️', 'emoji'),
('2024-02-24 01:15:44', 'giacomina@gmail.com', 5, '😍', 'emoji'),
('2023-12-22 20:53:49', 'paolino95@gmail.com', 3, '🐢', 'emoji'),
('2023-12-31 18:32:06', 'simone.05@gmail.com', 4, '🐢', 'emoji'),
('2024-02-24 01:05:04', 'paolino95@gmail.com', 5, '😂', 'emoji'),
('2024-01-25 23:57:32', 'franz@gmail.com', 8, '😆', 'emoji'),
('2024-01-24 22:23:24', 'giancarletto@alice.it', 9, '🦃', 'emoji'),
('2024-02-25 04:12:41', 'giovanna.Grigi72@tiscali.it', 11, '😶‍🌫️', 'emoji'),
('2024-01-20 18:12:12', '2matteo@gmail.com', 12, '😍', 'emoji'),
('2023-06-20 19:21:06', 'rominaromea@gmail.com', 6, '#freeciccio', 'hashtag'),
('2023-06-20 19:23:42', 'pablo.Verdi@gmail.com', 6, '#freeciccio', 'hashtag'),
('2024-01-25 18:49:32', 'Ali.99@gmail.com', 8, '#wlf', 'hashtag'),
('2024-01-23 19:37:31', 'napl17@gmail.com', 1, '#wlc', 'hashtag'),
('2024-01-23 22:01:24', 'theGame@alice.it', 1, '#wlc', 'hashtag'),
('2024-01-25 16:23:10', 'Ali.99@gmail.com', 2, '#campionidelmondo', 'hashtag'),
('2024-01-20 18:32:13', 'prodiX@gmail.com', 7, '#campionidelmondo', 'hashtag'),
('2024-01-20 18:48:55', 'ajeje@tiscali.it', 7, '#campionidelmondo', 'hashtag'),
('2024-01-20 18:59:59', 'shugar@tiscali.it', 7, '#campionidelmondo', 'hashtag'),
('2024-01-24 22:55:21', 'luabin@gmail.com', 5, '#furry', 'hashtag'),
('2024-01-24 23:03:59', 'napl17@gmail.com', 5, '#furry', 'hashtag'),
('2024-01-24 23:48:08', 'fra.crimi@gmail.com', 5, '#furry', 'hashtag'),
('2024-01-23 22:13:46', 'xiuderone@gmail.com', 1, '#occhialiveloci', 'hashtag'),
('2024-01-23 22:16:23', 'elia91@gmail.com', 1, '#occhialiveloci', 'hashtag'),
('2024-01-23 23:13:02', 'shugar@tiscali.it', 1, '#occhialiveloci', 'hashtag'),
('2024-01-23 23:33:33', 'mrT@gmail.com', 1, '#occhialiveloci', 'hashtag'),
('2024-01-20 16:28:10', 'marza4@alice.it', 12, '#panicopaura', 'hashtag'),
('2024-01-20 20:55:49', 'gengis@gmail.com', 12, '#panicopaura', 'hashtag'),
('2024-01-25 20:21:23', 'pdor@tiscali.it', 8, '#freecicco', 'hashtag'),
('2023-12-12 18:01:55', 'blur69@gmail.com', 10, '#freecicco', 'hashtag'),
('2024-01-25 01:01:01', 'ilmasseo@gmail.com', 11, '#freecicco', 'hashtag');

-- cokmmenti alle live
INSERT INTO commento(dataora, mailutente, idlive, commento)
VALUES
('2024-01-23 19:03:20', 'gigi17@tiscali.it', 1, 'Secondo me è il marzone'),
('2024-01-23 19:41:55', 'alys@tiscali.it', 1, 'no, secondo me mollura'),
('2024-01-23 21:22:59', 'marcogeno@gmail.com', 1, 'XDXDXDXD'),
('2024-01-25 15:32:46', 'Ali.99@gmail.com', 2, 'fioiiiiiii'),
('2024-01-25 18:09:31', 'napl17@gmail.com', 2, 'hai sbagliato a pizzare il blocco di dirt'),
('2023-12-22 18:35:43', 'marcogeno@gmail.com'				, 3, 'WOW!!! PAZZESKOOOOO11!!1!!!1!'),
('2023-12-22 18:43:55', 'luabin@gmail.com', 3, 'NO WAYYY'),
('2023-12-22 20:05:02', 'mollu@gmail.com', 3, 'incredibile pazzo sgravato'),
('2023-12-22 21:00:09', 'rominaromea@gmail.com', 3, 'travissss <3'),
('2023-12-31 16:58:06', 'kdo@tiscali.it', 4, 'torna indietro che hai dimenticato la cassa leggendariaaa'),
('2023-12-31 18:43:23', 'giancarletto@alice.it', 4, 'ma quella è una nave che vola????'),
('2024-01-24 22:35:43', 'ernesto45@gmail.com', 5, 'disegna putin che cavalca lui'),
('2024-01-24 23:22:21', 'pdor@tiscali.it', 5, 'disegna una bottiglia di carta che prende acqua'),
('2024-01-24 23:58:08', 'claudio.denari12@alice.it', 5, 'disegna un profumo al sapore di strega con capelli di fata'),
('2023-06-20 19:12:53', 'mrT@gmail.com', 6, 'easy predictt'),
('2023-06-20 19:47:07', 'shugar@tiscali.it', 6, 'secondo me cheatti'),
('2024-01-20 20:02:10', 'ajeje@tiscali.it', 7, 'e mo rinizi daccaaaaapo'),
('2024-01-20 22:55:54', 'gigi17@tiscali.it', 7, 'oddio, salto epiko'),
('2024-01-25 16:50:02', 'pippo3@tiscali.it', 8, 'lucy sei la mia crush'),
('2024-01-25 17:34:47', 'maria.rissu@alice.it', 8, 'ti prego sposami'),
('2024-01-25 22:42:09', 'alys@tiscali.it', 8, 'fate obbligo o verità'),
('2024-01-25 23:04:23', 'ilmasseo@gmail.com', 8, 'content scarno'),
('2024-01-24 19:48:24', 'fra.crimi@gmail.com', 9, 'SIUUUUUUM'),
('2024-01-24 20:34:02', 'ilfranco@gmail.com', 9, '7373737373'),
('2024-01-24 19:45:00', 'giancarletto@alice.it', 9, 'eeeeeeasy win'),
('2023-12-12 16:28:35', 'elia91@gmail.com', 10, 'che enorme pacco'),
('2023-12-12 17:23:20', '2matteo@gmail.com', 10, 'er paccone'),
('2024-01-25 02:20:50', 'kratos11@tiscali.it', 11, 'cattura quel pokemon'),
('2024-01-20 16:34:02', 'm.grati@gmail.com', 12, 'oddioooooo, mi sono spaventato di brutto'),
('2024-01-20 17:59:40', 'boono18@gmail.com', 12, 'jumpscare inaspettato, me la sono fatta asdoosa');

-- messaggi privati (senza file multimediali)
insert into messaggioPrivato(mailMittente,mailDestinatario,dataInvio,testo)
values
('gigi17@tiscali.it','ernesto45@gmail.com','11/01/2024','ciao'),
('ernesto45@gmail.com','gigi17@tiscali.it','12/01/2024','ciao'),
('gigi17@tiscali.it','ernesto45@gmail.com','14/01/2024','come va?'),
('paolino95@gmail.com','rominaromea@gmail.com','24/01/2024 00:15:14','hai visto la live di Ciccio?'),
('rominaromea@gmail.com','paolino95@gmail.com','24/01/2024 00:15:37','Si, epico il ciccioBurgher fatto in live'),
('paolino95@gmail.com','rominaromea@gmail.com','24/01/2024 00:16:00','No way!'),
('rominaromea@gmail.com','paolino95@gmail.com','24/01/2024 00:25:30','Costa pure pochissimo'),
('paolino95@gmail.com','rominaromea@gmail.com','24/01/2024 00:29:45','Lui è proprio il capobranco dei suoi paguri'),
('theGame@alice.it','gigi17@tiscali.it','13/01/2024 14:36:00','AO, come va?'),
('gigi17@tiscali.it','theGame@alice.it','13/01/2024 14:36:34','tutto bene tu?'),
('theGame@alice.it','gigi17@tiscali.it','13/01/2024 14:36:48','tutto bene dai'),
('gigi17@tiscali.it','theGame@alice.it','13/01/2024 14:38:13','Come è andsato il game?'),
('gigi17@tiscali.it','theGame@alice.it','13/01/2024 14:38:56','*andato'),
('theGame@alice.it','gigi17@tiscali.it','13/01/2024 14:40:11','vicotry royale mate'),
('Ali.99@gmail.com','rominaromea@gmail.com','01/01/2024 15:02:13','Entra in live da Paolo'),
('rominaromea@gmail.com','Ali.99@gmail.com','01/01/2024 15:02:45','Arrivo'),
('Ali.99@gmail.com','rominaromea@gmail.com','01/01/2024 15:03:07','Muoviti'),
('blur69@gmail.com','marza4@alice.it','03/01/2024 19:30:12','Maestro ore 20 entra su TS'),
('marza4@alice.it','blur69@gmail.com','03/01/2024 19:30:47','TRM arrivo'),
('marza4@alice.it','blur69@gmail.com','03/01/2024 19:30:52','Sbrigate');


--sub canale 1
insert into sub(tipo,prezzo,data,mailUtente,idCanale)
values
('Tier 1',2.50,'25/01/2024','franz@gmail.com',1),
('Tier 2',3,'12/01/2024','kuro.5@gmail.com',1),
('aPrime',0,'11/01/2024','gigi17@tiscali.it',1),
('Tier 3',5,'03/01/2024','ajeje@tiscali.it',1);

--sub canale 9
insert into sub(tipo,prezzo,data,mailUtente,idCanale)
values
('Tier 1',2.50,'25/01/2024','gengis@gmail.com',9),
('Tier 2',3,'12/01/2024','rominaromea@gmail.com',9),
('aPrime',0,'11/01/2024','kdo@tiscali.it',9),
('Tier 3',5,'03/01/2024','ajeje@tiscali.it',9),
('Tier 2',3,'01/01/2024','kratos11@tiscali.it',9),
('Tier 2',3,'02/01/2024','ilmasseo@gmail.com',9),
('aPrime',0,'22/01/2024','ernesto45@gmail.com',9),
('Tier 3',5,'19/01/2024','blur69@gmail.com',9);

--sub canale 6
insert into sub(tipo,prezzo,data,mailUtente,idCanale)
values
('Tier 1',2.50,'12/12/2023','ilfranco@gmail.com',6),
('aPrime',0,'17/01/2024','paolino95@gmail.com',6),
('aPrime',0,'14/01/2024','giovanna.Grigi72@tiscali.it',6),
('Tier 3',5,'27/12/2023','ajeje@tiscali.it',6),
('Tier 1',2.50,'22/01/2024','pdor@tiscali.it',6),
('Tier 2',3,'11/01/2024','ale@gmail.com',6),
('Tier 1',2.50,'12/12/2023','ilfranco@gmail.com',6),
('Tier 1',2.50,'01/01/2024','giacomina@gmail.com',6),
('Tier 2',3,'20/12/2023','elia91@gmail.com',6);


-- inserimento visualizzazioni normai

insert into visualizza(mailUtente,idLive)
values
('ale@gmail.com',1),
('simone.05@gmail.com',1),
('gengis@gmail.com',1),
('annunziata@gmail.com',1),
('giacomina@gmail.com',1),
('laale@gmail.com',1),
('ernesto45@gmail.com',1),
('theGame@alice.it',1),
('Ali.99@gmail.com',1),
('paolino95@gmail.com',1),
('pablo.Verdi@gmail.com',1),
('pippo3@tiscali.it',1),
('giovanna.Grigi72@tiscali.it',1),
('ilmasseo@gmail.com',1),
('kuro.5@gmail.com',1),
('kratos11@tiscali.it',1),
('kdo@tiscali.it',3),
('boono18@gmail.com',3),
('marza4@alice.it',3),
('mrT@gmail.com',3),
('blur69@gmail.com',3),
('giaco.totti@alice.it',3),
('lorisbondo@gmail.com',3),
('elia91@gmail.com',3),
('fra.crimi@gmail.com',3),
('m.grati@gmail.com',3),
('claudio.denari12@alice.it',3),
('xiuderone@gmail.com',3),
('pdor@tiscali.it',3),
('giovanna.Grigi72@tiscali.it',3),
('pippo3@tiscali.it',3),
('rominaromea@gmail.com',3),
('gigi17@tiscali.it',3),
('theGame@alice.it',3),
('franz@gmail.com',3),
('giacomina@gmail.com',3),
('annunziata@gmail.com',3),
('gengis@gmail.com',3),
('marcogeno@gmail.com',3),
('ilfranco@gmail.com',3),
('2matteo@gmail.com',3),
('simone.05@gmail.com',3),
('ale@gmail.com',3),
('paolino95@gmail.com',3),
('marza4@alice.it',4),
('mrT@gmail.com',4),
('elia91@gmail.com',4),
('shugar@tiscali.it',4),
('prodiX@gmail.com',4),
('ale@gmail.com',6),
('kratos11@tiscali.it',6),
('pdor@tiscali.it',6),
('kdo@tiscali.it',9),
('kuro.5@gmail.com',9),
('mollu@gmail.com',9),
('elia91@gmail.com',9),
('giaco.totti@alice.it',9),
('alicemari@tiscali.it',9),
('mrT@gmail.com',9),
('prodiX@gmail.com',9),
('m.grati@gmail.com',9),
('shugar@tiscali.it',9),
('claudio.denari12@alice.it',9),
('pdor@tiscali.it',9),
('rominaromea@gmail.com',9),
('theGame@alice.it',9),
('laale@gmail.com',9),
('Ali.99@gmail.com',9),
('ale@gmail.com',10),
('simone.05@gmail.com',10),
('ernesto45@gmail.com',10),
('2matteo@gmail.com',10),
('gigi17@tiscali.it',10),
('ilfranco@gmail.com',10),
('rominaromea@gmail.com',10),
('marcogeno@gmail.com',10),
('franz@gmail.com',10),
('annunziata@gmail.com',10),
('theGame@alice.it',10),
('pdor@tiscali.it',10),
('Ali.99@gmail.com',10),
('ajeje@tiscali.it',10),
('Emi0217@mail.com',10),
('xiuderone@gmail.com',10),
('pippo3@tiscali.it',10),
('claudio.denari12@alice.it',10),
('elia91@gmail.com',10),
('alys@tiscali.it',10),
('maria.rissu@alice.it',10),
('m.grati@gmail.com',10),
('giancarletto@alice.it',10),
('lorisbondo@gmail.com',10),
('giaco.totti@alice.it',10),
('blur69@gmail.com',10),
('ilmasseo@gmail.com',10),
('kdo@tiscali.it',10),
('mollu@gmail.com',10),
('kuro.5@gmail.com',10),
('marza4@alice.it',10),
('kratos11@tiscali.it',10),
('boono18@gmail.com',10),
('mrT@gmail.com',10),
('lorisbondo@gmail.com',12),
('franz@gmail.com',12),
('ilfranco@gmail.com',12),
('giaco.totti@alice.it',12),
('marza4@alice.it',12);




-- inserimenti delle donazioni
insert into dona_a (mailUtente,mailStreamer,dataOra, bit)
values
('alicemari@tiscali.it','ilfranco@gmail.com','10/01/2024 00:10:10',100),
('alicemari@tiscali.it','annunziata@gmail.com','17/01/2024 15:27:56',50),
('alicemari@tiscali.it','laale@gmail.com','10/01/2024 20:02:11',200),
('alicemari@tiscali.it','paolino95@gmail.com','17/01/2024 23:26:52',50),
('alicemari@tiscali.it','Ali.99@gmail.com','10/01/2024 15:22:13',100),
('alicemari@tiscali.it','pippo3@tiscali.it','25/12/2023 23:10:23',1000),
('alicemari@tiscali.it','ajeje@tiscali.it','17/01/2024 09:53:14',50),
('alicemari@tiscali.it','shugar@tiscali.it','10/01/2024 15:48:04',50),
('alicemari@tiscali.it','boono18@gmail.com','25/12/2023 20:10:11',200),
('alicemari@tiscali.it','alicemari@tiscali.it','10/01/2024 09:15:07',100),
('lorisbondo@gmail.com','alys@tiscali.it','09/01/2023 15:13:04',100),
('lorisbondo@gmail.com','m.grati@gmail.com','13/12/2023 08:32:57',50),
('lorisbondo@gmail.com','napl17@gmail.com','09/01/2024 01:43:38',250),
('lorisbondo@gmail.com','giovanna.Grigi72@tiscali.it','28/12/2023 01:13:11',100),
('lorisbondo@gmail.com','pippo3@tiscali.it','28/12/2023 15:11:24',50),
('lorisbondo@gmail.com','rominaromea@gmail.com','09/01/2024 09:56:56',100),
('lorisbondo@gmail.com','Ali.99@gmail.com','09/01/2024 15:13:47',50),
('lorisbondo@gmail.com','pablo.Verdi@gmail.com','13/12/2023 15:13:01',500),
('lorisbondo@gmail.com','Ali.99@gmail.com','28/12/2023 08:48:07',50),
('lorisbondo@gmail.com','Ali.99@gmail.com','13/12/2023 17:32:08',250),
('lorisbondo@gmail.com','ernesto45@gmail.com','09/01/2024 15:17:44',100),
('blur69@gmail.com','pablo.Verdi@gmail.com','21/12/2023 15:34:00',200),
('blur69@gmail.com','pablo.Verdi@gmail.com','17/01/2024 15:56:11',100),
('blur69@gmail.com','mollu@gmail.com','31/12/2023 03:02:52',50),
('blur69@gmail.com','marza4@alice.it','26/01/2024 14:45:12',100),
('blur69@gmail.com','giancarletto@alice.it','21/12/2023 11:56:24',50),
('blur69@gmail.com','lorisbondo@gmail.com','31/12/2023 00:57:37',500),
('blur69@gmail.com','pablo.Verdi@gmail.com','21/12/2023 22:27:47',100),
('blur69@gmail.com','2matteo@gmail.com','08/01/2024 23:08:07',50),
('blur69@gmail.com','ilmasseo@gmail.com','31/12/2023 05:10:01',500),
('blur69@gmail.com','kdo@tiscali.it','31/12/2023 00:45:13',200),
('blur69@gmail.com','pdor@tiscali.it','26/01/2024 14:07:47',50),
('blur69@gmail.com','luabin@gmail.com','17/01/2024 14:50:25',50),
('blur69@gmail.com','pablo.Verdi@gmail.com','17/01/2024 05:49:59',1000),
('blur69@gmail.com','ernesto45@gmail.com','21/12/2023 22:22:45',100),
('blur69@gmail.com','pippo3@tiscali.it','08/01/2024 03:11:00',250),
('blur69@gmail.com','pablo.Verdi@gmail.com','26/01/2024 20:59:01',50),
('blur69@gmail.com','pablo.Verdi@gmail.com','31/12/2023 13:12:56',500),
('blur69@gmail.com','paolino95@gmail.com','31/12/2023 11:11:45',250),
('blur69@gmail.com','prodiX@gmail.com','21/12/2023 19:20:34',500),
('blur69@gmail.com','pdor@tiscali.it','31/12/2023 03:19:19',50),
('ilmasseo@gmail.com','napl17@gmail.com','15/12/2023 11:07:03',250),
('ilmasseo@gmail.com','xiuderone@gmail.com','10/01/2024 09:23:16',50),
('ilmasseo@gmail.com','m.grati@gmail.com','10/01/2024 10:39:57',50),
('ilmasseo@gmail.com','xiuderone@gmail.com','15/12/2023 12:45:28',50),
('ilmasseo@gmail.com','m.grati@gmail.com','21/01/2024 00:57:15',100),
('ilmasseo@gmail.com','napl17@gmail.com','24/01/2024 06:03:59',200),
('ilmasseo@gmail.com','xiuderone@gmail.com','15/12/2023 12:47:18',100),
('mrT@gmail.com','alys@tiscali.it','29/12/2023 15:56:12',50),
('mrT@gmail.com','kdo@tiscali.it','31/12/2023 20:34:01',50),
('mrT@gmail.com','maria.rissu@alice.it','04/01/2024 00:57:06',50),
('mrT@gmail.com','ilmasseo@gmail.com','08/01/2024 20:23:57',100),
('mrT@gmail.com','2matteo@gmail.com','31/12/2023 20:04:59',100),
('mrT@gmail.com','luabin@gmail.com','29/12/2023 15:08:42',1000),
('mrT@gmail.com','ilfranco@gmail.com','04/01/2024 00:48:26',50),
('mrT@gmail.com','elia91@gmail.com','29/12/2023 15:25:51',50),
('mrT@gmail.com','annunziata@gmail.com','29/12/2023 16:31:57',250),
('mrT@gmail.com','ilmasseo@gmail.com','04/01/2024 01:53:12',200),
('kratos11@tiscali.it','paolino95@gmail.com','19/12/2023 14:54:31',100),
('kratos11@tiscali.it','gigi17@tiscali.it','19/12/2023 14:12:46',50),
('kratos11@tiscali.it','marza4@alice.it','20/01/2024 23:07:31',100),
('kratos11@tiscali.it','marza4@alice.it','20/01/2024 00:45:43',50),
('kratos11@tiscali.it','giovanna.Grigi72@tiscali.it','19/12/2023 13:47:13',200),
('kratos11@tiscali.it','kdo@tiscali.it','20/01/2024 01:32:01',100),
('boono18@gmail.com','kdo@tiscali.it','16/12/2023 15:04:39',1000),
('boono18@gmail.com','kdo@tiscali.it','16/12/2023 15:09:17',50),
('mollu@gmail.com','marza4@alice.it','30/12/2023 16:15:52',50),
('mollu@gmail.com','giacomina@gmail.com','30/12/2023 16:36:59',100),
('mollu@gmail.com','m.grati@gmail.com','30/12/2023 17:57:09',50),
('mollu@gmail.com','franz@gmail.com','01/01/2024 22:11:05',250);


-- utenti seguaci del canale 1
insert into segue(idCanale,mailUtente)
values
(1,'ale@gmail.com'),
(1,'ilfranco@gmail.com'),
(1,'gengis@gmail.com'),
(1,'laale@gmail.com'),
(1,'franz@gmail.com'),
(1,'gigi17@tiscali.it'),
(1,'gianni84@alice.it'),
(1,'ajeje@tiscali.it'),
(1,'ilmasseo@gmail.com'),
(1,'mollu@gmail.com'),
(1,'kuro.5@gmail.com');

-- utenti seguaci del canale 2
insert into segue(idCanale,mailUtente)
values
(2,'ale@gmail.com'),
(2,'ilfranco@gmail.com'),
(2,'gengis@gmail.com'),
(2,'gianni84@alice.it'),
(2,'ajeje@tiscali.it'),
(2,'ilmasseo@gmail.com'),
(2,'kuro.5@gmail.com');

-- utenti seguaci del canale 3
insert into segue(idCanale,mailUtente)
values
(3,'gigi17@tiscali.it'),
(3,'ilfranco@gmail.com'),
(3,'gengis@gmail.com'),
(3,'laale@gmail.com'),
(3,'annunziata@gmail.com'),
(3,'gianni84@alice.it'),
(3,'ajeje@tiscali.it'),
(3,'ilmasseo@gmail.com'),
(3,'franz@gmail.com'),
(3,'kuro.5@gmail.com');

-- utenti seguaci del canale 4
insert into segue(idCanale,mailUtente)
values
(4,'marcogeno@gmail.com'),
(4,'rominaromea@gmail.com'),
(4,'ernesto45@gmail.com'),
(4,'pdor@tiscali.it'),
(4,'m.grati@gmail.com'),
(4,'fra.crimi@gmail.com'),
(4,'marza4@alice.it'),
(4,'mrT@gmail.com');

-- utenti seguaci del canale 5
insert into segue(idCanale,mailUtente)
values
(5,'laale@gmail.com'),
(5,'fra.crimi@gmail.com'),
(5,'elia91@gmail.com');

-- utenti seguaci del canale 6
insert into segue(idCanale,mailUtente)
values
(6,'ale@gmail.com'),
(6,'ilfranco@gmail.com'),
(6,'giacomina@gmail.com'),
(6,'rominaromea@gmail.com'),
(6,'ernesto45@gmail.com'),
(6,'paolino95@gmail.com'),
(6,'giovanna.Grigi72@tiscali.it'),
(6,'ajeje@tiscali.it'),
(6,'shugar@tiscali.it'),
(6,'pdor@tiscali.it'),
(6,'elia91@gmail.com');

-- utenti seguaci del canale 7
insert into segue(idCanale,mailUtente)
values
(7,'paolino95@gmail.com');

-- utenti seguaci del canale 8
insert into segue(idCanale,mailUtente)
values
(8,'kuro.5@gmail.com'),
(8,'mrT@gmail.com'),
(8,'Ali.99@gmail.com'),
(8,'alicemari@tiscali.it'),
(8,'shugar@tiscali.it'),
(8,'giovanna.Grigi72@tiscali.it'),
(8,'2matteo@gmail.com');

-- utenti seguaci del canale 9
insert into segue(idCanale,mailUtente)
values
(9,'marcogeno@gmail.com'),
(9,'rominaromea@gmail.com'),
(9,'giacomina@gmail.com'),
(9,'gengis@gmail.com'),
(9,'kdo@tiscali.it'),
(9,'luabin@gmail.com'),
(9,'blur69@gmail.com'),
(9,'kratos11@tiscali.it'),
(9,'lorisbondo@gmail.com'),
(9,'elia91@gmail.com'),
(9,'ernesto45@gmail.com'),
(9,'ilmasseo@gmail.com');

-- utenti seguaci del canale 10
insert into segue(idCanale,mailUtente)
values
(10,'simone.05@gmail.com'),
(10,'marcogeno@gmail.com'),
(10,'franz@gmail.com');

-- utenti seguaci del canale 11
insert into segue(idCanale,mailUtente)
values
(11,'pdor@tiscali.it'),
(11,'maria.rissu@alice.it'),
(11,'marza4@alice.it'),
(11,'blur69@gmail.com'),
(11,'giancarletto@alice.it'),
(11,'mrT@gmail.com'),
(11,'luabin@gmail.com'),
(11,'giovanna.Grigi72@tiscali.it'),
(11,'lorisbondo@gmail.com'),
(11,'ernesto45@gmail.com'),
(11,'simone.05@gmail.com'),
(11,'ilmasseo@gmail.com'),
(11,'giacomina@gmail.com'),
(11,'giaco.totti@alice.it'),
(11,'gianni84@alice.it'),
(11,'gigi17@tiscali.it'),
(11,'ajeje@tiscali.it'),
(11,'ale@gmail.com'),
(11,'gengis@gmail.com');

-- utenti seguaci del canale 12
insert into segue(idCanale,mailUtente)
values
(12,'mrT@gmail.com'),
(12,'lorisbondo@gmail.com'),
(12,'giaco.totti@alice.it'),
(12,'kuro.5@gmail.com'),
(12,'gengis@gmail.com'),
(12,'gigi17@tiscali.it');

insert into segue(idCanale,mailUtente)
values
(13,'provaAffiliate@gmail.com');

insert into segue(idCanale,mailUtente)
values
(13,'ale@gmail.com'),
(13,'simone.05@gmail.com'),
(13,'2matteo@gmail.com'),
(13,'ilfranco@gmail.com'),
(13,'marcogeno@gmail.com'),
(13,'gengis@gmail.com'),
(13,'annunziata@gmail.com'),
(13,'giacomina@gmail.com'),
(13,'laale@gmail.com'),
(13,'franz@gmail.com'),
(13,'rominaromea@gmail.com'),
(13,'gigi17@tiscali.it'),
(13,'ernesto45@gmail.com'),
(13,'theGame@alice.it'),
(13,'paolino95@gmail.com'),
(13,'Ali.99@gmail.com'),
(13,'Emi0217@mail.com'),
(13,'pablo.Verdi@gmail.com'),
(13,'giovanna.Grigi72@tiscali.it'),
(13,'pippo3@tiscali.it'),
(13,'gianni84@alice.it'),
(13,'prodiX@gmail.com'),
(13,'xiuderone@gmail.com'),
(13,'ajeje@tiscali.it'),
(13,'shugar@tiscali.it'),
(13,'pdor@tiscali.it'),
(13,'napl17@gmail.com'),
(13,'claudio.denari12@alice.it'),
(13,'maria.rissu@alice.it'),
(13,'m.grati@gmail.com'),
(13,'alys@tiscali.it'),
(13,'fra.crimi@gmail.com'),
(13,'giancarletto@alice.it'),
(13,'luabin@gmail.com'),
(13,'elia91@gmail.com'),
(13,'alicemari@tiscali.it'),
(13,'lorisbondo@gmail.com'),
(13,'giaco.totti@alice.it'),
(13,'blur69@gmail.com'),
(13,'ilmasseo@gmail.com'),
(13,'mrT@gmail.com'),
(13,'kratos11@tiscali.it'),
(13,'boono18@gmail.com'),
(13,'marza4@alice.it'),
(13,'mollu@gmail.com'),
(13,'kuro.5@gmail.com'),
(13,'kdo@tiscali.it'),
(13,'giulio@gmail.com'),
(13,'lisa@gmail.com');


INSERT INTO vota(mailutente, idcontenuto, likert)
VALUES
('ale@gmail.com', 1, 8),
('marcogeno@gmail.com', 2, 9),
('franz@gmail.com', 3, 4),
('simone.05@gmail.com', 4, 6),
('giacomina@gmail.com', 5, 7),
('rominaromea@gmail.com', 6, 8),
('gengis@gmail.com', 7, 4),
('paolino95@gmail.com', 8, 2),
('blur69@gmail.com', 9, 7),
('ilfranco@gmail.com', 1, 9),
('giaco.totti@alice.it', 1, 1),
('pdor@tiscali.it', 1, 5),
('claudio.denari12@alice.it', 2, 8),
('marza4@alice.it', 2, 9),
('mollu@gmail.com', 2, 5),
('kuro.5@gmail.com', 3, 6),
('shugar@tiscali.it', 4, 3),
('m.grati@gmail.com', 5, 3),
('boono18@gmail.com', 6, 7),
('prodiX@gmail.com', 7, 8),
('marcogeno@gmail.com', 4, 9),
('laale@gmail.com', 3, 7),
('ernesto45@gmail.com', 2, 8),
('giacomina@gmail.com', 4, 9),
('gigi17@tiscali.it', 5, 8),
('theGame@alice.it', 6, 7),
('alys@tiscali.it', 7, 6),
('pablo.Verdi@gmail.com', 8, 6),
('giancarletto@alice.it', 9, 5),
('Emi0217@mail.com', 8, 2),
('Ali.99@gmail.com', 8, 7),
('simone.05@gmail.com', 9, 9),
('ilmasseo@gmail.com', 9, 5),
('xiuderone@gmail.com', 8, 3),
('simone.05@gmail.com', 8, 8),
('m.grati@gmail.com', 7, 2),
('giaco.totti@alice.it', 8, 7),
('luabin@gmail.com', 9, 8),
('alys@tiscali.it', 10, 6),
('prodiX@gmail.com', 10, 5),
('lorisbondo@gmail.com', 10, 9),
('claudio.denari12@alice.it', 10, 4),
('shugar@tiscali.it', 10, 9),
('alicemari@tiscali.it', 9, 6),
('kdo@tiscali.it', 5, 3),
('giaco.totti@alice.it', 4, 8),
('prodiX@gmail.com', 6, 3),
('annunziata@gmail.com', 8, 4),
('pippo3@tiscali.it', 3, 8),
('ajeje@tiscali.it', 2, 9),
('ajeje@tiscali.it', 7, 6),
('elia91@gmail.com', 9, 4),
('laale@gmail.com', 2, 8),
('ale@gmail.com', 8, 9),
('2matteo@gmail.com', 7, 4);


-- inserisci le viusalizzazioni delle live esclusive

insert into visualizzaEsclusiva(mailUtente,idLive)
values
('elia91@gmail.com',2),
('fra.crimi@gmail.com',2),
('giancarletto@alice.it',2),
('luabin@gmail.com',2),
('alys@tiscali.it',2),
('fra.crimi@gmail.com',5),
('alys@tiscali.it',5),
('elia91@gmail.com',5),
('fra.crimi@gmail.com',7),
('elia91@gmail.com',7),
('luabin@gmail.com',7),
('alys@tiscali.it',7),
('fra.crimi@gmail.com',8),
('giancarletto@alice.it',8),
('luabin@gmail.com',8),
('elia91@gmail.com',8),
('alys@tiscali.it',8),
('elia91@gmail.com',11),
('giancarletto@alice.it',11);


INSERT INTO ha_accesso(mailUtenteFragile, idContenutoAccessibile)
VALUES
('gigi17@tiscali.it',	1),
('gigi17@tiscali.it' ,6),
('gigi17@tiscali.it' ,9),
('gigi17@tiscali.it' ,10),
('ernesto45@gmail.com',1),
('ernesto45@gmail.com',6),
('ernesto45@gmail.com',3),
('ernesto45@gmail.com',4),
('ernesto45@gmail.com',9),
('theGame@alice.it',1),
('theGame@alice.it',3),
('paolino95@gmail.com',1),
('paolino95@gmail.com',3),
('paolino95@gmail.com',4),
('paolino95@gmail.com',6),
('paolino95@gmail.com',9),
('paolino95@gmail.com',10),
('Ali.99@gmail.com',9),
('Emi0217@mail.com',1),
('Emi0217@mail.com',3),
('Emi0217@mail.com',9),
('pablo.Verdi@gmail.com',6),
('pablo.Verdi@gmail.com',10),
('giovanna.Grigi72@tiscali.it',1),
('giovanna.Grigi72@tiscali.it',3),
('giovanna.Grigi72@tiscali.it',4),
('giovanna.Grigi72@tiscali.it',6),
('giovanna.Grigi72@tiscali.it',9),
('alys@tiscali.it',6),
('alys@tiscali.it',9),
('fra.crimi@gmail.com',1),
('fra.crimi@gmail.com',3),
('fra.crimi@gmail.com',4),
('fra.crimi@gmail.com',6),
('fra.crimi@gmail.com',9),
('fra.crimi@gmail.com',10),
('giancarletto@alice.it',3),
('giancarletto@alice.it',9),
('luabin@gmail.com',3),
('elia91@gmail.com',1),
('elia91@gmail.com',3),
('elia91@gmail.com',4),
('elia91@gmail.com',6);
-- amministrazioni
insert into amministra(idCanale,mailAdmin)
values
(1,'nikko@gmail.com'),
(1,'ergiorgione@gmail.com'),
(1,'lukkagamerz@gmail.com'),
(1,'enriketto69@gmail.com'),
(2,'nikko@gmail.com'),
(2,'lukkagamer@gmail.com'),
(2,'ergiorgione@gmail.com'),
(2,'bossdizonami@gmail.com'),
(3,'nikko@gmail.com'),
(3,'lukkagamerz@gmail.com'),
(3,'stilchampion@gmail.com'),
(4,'nikko@gmail.com'),
(4,'enriketto69@gmail.com'),
(4,'stilchampion@gmail.com'),
(4,'lukkagamerz@gmail.com'),
(4,'ergiorgione@gmail.com'),
(4,'lukkagamer@gmail.com'),
(5,'nikko@gmail.com'),
(5,'enriketto69@gmail.com'),
(6,'ergiorgione@gmail.com'),
(6,'nikko@gmail.com'),
(6,'bossdizonami@gmail.com'),
(6,'stilchampion@gmail.com'),
(7,'enriketto69@gmail.com'),
(7,'nikko@gmail.com'),
(8,'enriketto69@gmail.com'),
(8,'stilchampion@gmail.com'),
(8,'lukkagamerz@gmail.com'),
(8,'ergiorgione@gmail.com'),
(8,'nikko@gmail.com'),
(9,'nikko@gmail.com'),
(9,'bossdizonami@gmail.com'),
(9,'ergiorgione@gmail.com'),
(9,'enriketto69@gmail.com'),
(9,'stilchampion@gmail.com'),
(10,'lukkagamer@gmail.com'),
(11,'ergiorgione@gmail.com'),
(11,'stilchampion@gmail.com'),
(11,'lukkagamerz@gmail.com'),
(11,'nikko@gmail.com'),
(12,'enriketto69@gmail.com'),
(12,'ergiorgione@gmail.com'),
(12,'lukkagamer@gmail.com'),
(12,'stilchampion@gmail.com');


-- associazione social ai canali
insert into associato(nomeSocial,idCanale,link)
values
('Instagram',1,'https://instagram.com/blurs7'),
('YouTube',1,'https://www.youtube.com/user/StallionsTV'),
('TikTok',1,'tiktokBlur.com'),
('Reddit',1,'reddit.com'),
('X',1,'xBlur.com'),
('YouTube',2,'youtubeMasseo.com'),
('TikTok',2,'tiktokMasseo.com'),
('Reddit',2,'RedditMasseo.com'),
('Instagram',3,'InstagramGiacoTotti.com'),
('Instagram',4,'InstagramLB.com'),
('YouTube',4,'youtubeLB.com'),
('Instagram',5,'InstagramAliceMarinata.com'),
('YouTube',5,'YouTubeAliceMarinata.com'),
('TikTok',5,'tiktokAliceMarinata.com'),
('Reddit',5,'RedditAliceMarinata.com'),
('X',5,'XAliceMarinata.com'),
('FaceBook',5,'FacebookAliceMarinata.com'),
('OnlyFans',5,'OnlyFansAliceMarinata.com'),
('YouTube',6,'YouTubeCiccio.com'),
('Instagram',7,'InstagramPoldo.com'),
('YouTube',7,'YouTubePoldo.com'),
('X',7,'XPoldo.com'),
('Instagram',9,'InstagramMarza.com'),
('YouTube',9,'YouTubeMarza.com'),
('TikTok',9,'tiktokMarza.com'),
('Reddit',9,'RedditMarza.com'),
('X',9,'XMollu.com'),
('Instagram',10,'InstagramMollu.com'),
('YouTube',10,'youtubeMollu.com'),
('TikTok',10,'tiktokMollu.com'),
('Reddit',10,'RedditMollu.com'),
('X',10,'XMollu.com'),
('FaceBook',10,'FacebookMollu.com'),
('Instagram',11,'InstagramKuro.com'),
('YouTube',11,'youtubeKuro.com'),
('Reddit',11,'RedditMollu.com'),
('Instagram',12,'InstagramKodo.com'),
('YouTube',12,'youtubeKodo.com'),
('TikTok',12,'tiktokKodo.com'),
('Reddit',12,'RedditKodo.com'),
('X',12,'XKodo.com');

INSERT INTO commenta(mailutente, idcontenuto, dataorainvio, commento)
VALUES
('ale@gmail.com', 1, NOW()::DATE, 'Grande clip!'),
('simone.05@gmail.com', 2, NOW()::DATE, 'Palworld è fantastico!'),
('2matteo@gmail.com', 3, NOW()::DATE, 'Molto divertente!'),
('ilfranco@gmail.com', 4, NOW()::DATE, 'Interessante contenuto.'),
('marcogeno@gmail.com', 5, NOW()::DATE, 'Mi piace molto!'),
('gengis@gmail.com', 6, NOW()::DATE, 'Grande Gengis!'),
('annunziata@gmail.com', 7, NOW()::DATE, 'Complimenti Annunziata!'),
('giacomina@gmail.com', 8, NOW()::DATE, 'Spettacolare!'),
('laale@gmail.com', 9, NOW()::DATE, 'Alessia sei la migliore!'),
('franz@gmail.com', 10, NOW()::DATE, 'Francesca blasi è top!'),
('rominaromea@gmail.com', 1, NOW()::DATE, 'Romi sei fantastica!'),
('gigi17@tiscali.it', 1, NOW()::DATE, 'Gigi è un grande gamer!'),
('ernesto45@gmail.com', 1, NOW()::DATE, 'Ernesto è una leggenda!'),
('theGame@alice.it', 1, NOW()::DATE, 'TheGame spettacolare!'),
('paolino95@gmail.com', 2, NOW()::DATE, 'Paolo è bravissimo!'),
('Ali.99@gmail.com', 2, NOW()::DATE, 'Alice è fantastica!'),
('Emi0217@mail.com', 2, NOW()::DATE, 'Emilia è una stella!'),
('pablo.Verdi@gmail.com', 2, NOW()::DATE, 'Pablo è un mito!'),
('giovanna.Grigi72@tiscali.it', 2, NOW()::DATE, 'Giovanna è super!'),
('alys@tiscali.it', 2, NOW()::DATE, 'Alysa è top!'),
('fra.crimi@gmail.com', 3, NOW()::DATE, 'Francesco è fantastico!'),
('giancarletto@alice.it', 3, NOW()::DATE, 'Giancarlo è un grande!'),
('luabin@gmail.com', 3, NOW()::DATE, 'Luca è unico!'),
('elia91@gmail.com', 3, NOW()::DATE, 'Elia è bravissimo!'),
('pippo3@tiscali.it', 3, NOW()::DATE, 'Pippino è il migliore!'),
('gianni84@alice.it', 3, NOW()::DATE, 'TheGiannix è top!'),
('prodiX@gmail.com', 4, NOW()::DATE, 'Mirko è fenomenale!'),
('xiuderone@gmail.com', 4, NOW()::DATE, 'Xiuder è incredibile!'),
('ajeje@tiscali.it', 4, NOW()::DATE, 'AjejeBrazorf è unico!'),
('shugar@tiscali.it', 4, NOW()::DATE, 'Shugar è fantastico!'),
('pdor@tiscali.it', 4, NOW()::DATE, 'PdorDiKmer è una leggenda!'),
('napl17@gmail.com', 4, NOW()::DATE, 'Niko è super!'),
('claudio.denari12@alice.it', 5, NOW()::DATE, 'Claudio è il migliore!'),
('maria.rissu@alice.it', 5, NOW()::DATE, 'Maria è fantastica!'),
('m.grati@gmail.com', 5, NOW()::DATE, 'MartyUWU è un mito!'),
('mrT@gmail.com', 5, NOW()::DATE, 'CicciGamer89 è il migliore!'),
('kratos11@tiscali.it', 5, NOW()::DATE, 'Poldo è fenomenale!'),
('boono18@gmail.com', 6, NOW()::DATE, 'MatteoHS è unico!'),
('marza4@alice.it', 6, NOW()::DATE, 'TheRealMarza è fantastico!'),
('mollu@gmail.com', 6, NOW()::DATE, 'Mollu è super!'),
('kuro.5@gmail.com', 7, NOW()::DATE, 'Kurolily è incredibile!'),
('kdo@tiscali.it', 7, NOW()::DATE, 'Kodomo è fantastica!'),
('giulio@gmail.com', 8, NOW()::DATE, 'Giulio è il migliore!'),
('lisa@gmail.com', 9, NOW()::DATE, 'Lisa è super!');