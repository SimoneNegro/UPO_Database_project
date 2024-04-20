# 0. Testo esame

- Requisiti consegna

    Consegnare una relazione che illustri il lavoro effettuato per la progettazione della base di dati derivante dai requisiti indicati nella sezione “Requisiti iniziali” e che segua rigorosamente lo schema guida indicato nei file “2 Schema progettazione concettuale”, “3 Schema progettazione logica”, “4 DDL e DML”. Nella prima pagina della relazione devono essere riportati i nomi, cognomi, numeri di matricola e indirizzi e-mail dei componenti del gruppo.
    Supponendo che un gruppo sia composto dagli studenti di cognome A, B, C, si consegnino i
    seguenti file:

  - Un file “A_B_C_Relazione” contenente la relazione (unione dei file “2 Schema
    progettazione concettuale”, “3 Schema progettazione logica”, “4 DDL e DML”, che non
    dovete consegnare separatamente).
  - Tre file “A_B_C_DDL.sql”, “A_B_C_DMLPOP.sql”, “A_B_C_DMLUPD.sql”
    contenenti gli script SQL indicati nel file “4 DDL e DML”.

    Tali file dovranno essere consegnati in una cartella compressa “A_B_C.zip” insieme al file contenente le query della parte di SQL.

Schema guida

1. [Progettazione concettuale](https://www.notion.so/1-Progettazione-concettuale-3c4546b550a14cbb9234df96908e5411?pvs=21)
    1. Requisiti iniziali (testo integrato con osservazioni fatte a partire dai file forniti)
    2. Glossario dei termini
    3. Requisiti riscritti
    4. Requisiti strutturati in gruppi di frasi omogenee
    5. Schema E-R + regole aziendali

Come auto-valutare il proprio schema E-R (+ business rules):

- Correttezza: controllare se i costrutti sono usati propriamente. Inoltre nella stesura dello schema E-R non bisogna considerare come verrà tradotto in relazionale (evitate errori come: omettere gli identificatori delle entità, aggiungere identificatori alle associazioni, aggiungere alle associazioni gli identificatori delle entità coinvolte, non indicare il tipo di generalizzazione, dare lo stesso nome a due entità o associazioni, usare un identificatore esterno basato su associazioni non (1,1) o un identificatore basato su attributi opzionali o multivalore)
- Completezza: rileggere i requisiti iniziali e considerare se ogni informazione rilevante è stata rappresentata nelle entità, associazioni, attributi, identificatori, cardinalità dell’E-R o nelle business rules. Verificare la coerenza degli identificatori delle entità e delle sottoentità gerarchiche con i requisiti riscritti.
- Leggibilità: L’E-R è intuitivo? I nomi dati alle entità/associazioni sono facilmente comprensibili? È chiaro cosa rappresentano?
- Minimalità: Sono presenti ridondanze indesiderate? È possibile rappresentare le
stesse informazioni in modo più semplice.

1. [Progettazione logica](https://www.notion.so2-Progettazione-logica-34f1fe676fa247c0a47575ad5ee789bd?pvs=21)
    1. Compilare una tavola dei volumi (motivare le scelte effettuate)
    2. Compilare una tavola delle operazioni (basandosi anche sui requisiti, includere le operazioni più rilevanti e le scelte effettuate)
    3. Ristrutturazione dello schema E-R
        1. Analisi delle ridondanze
        Per ogni ridondanza:
        Per ogni operazione significativa su cui la presenza/assenza della ridondanza può avere effetto:
            - Tavola degli accessi in presenza e in assenza di ridondanza
            - Confronto in spazio e tempo tra presenza e assenza di ridondanza
            - Scelta se introdurre o non introdurre la ridondanza con motivazione
        2. Eliminazione delle generalizzazioni (motivare le scelte effettuate)
        3. Eventuale partizionamento/accorpamento di entità e associazioni (motivare le scelte effettuate)
    4. Eventuale scelta degli identificatori principali (motivare le scelte effettuate)
    5. Schema E-R ristrutturato + regole aziendali
    6. Schema relazionale (indicare anche i vincoli di integrità referenziale)
2. DDL di creazione del database
3. DML di popolamento di tutte le tabelle del database (se popolate il database con dati verosimili, potreste rendervi conto di errori commessi nella fase di progettazione concettuale e di cui avreste dovuto rendervi conto prima)
4. Qualche operazione di cancellazione e modifica per verificare i vincoli e effetti causati da operazioni su chiavi esterne.

## Requisiti iniziali: Piattaforma di live streaming

Si vuole realizzare una base di dati per un servizio che permette di fare live streaming su vari argomenti. Il live streaming (o, più sinteticamente, la live) permette di interagire con il pubblico in tempo reale grazie a feed video, chat e altro.

Ogni utente può essere spettatore o streamer, o entrambi. Gli spettatori possono essere registrati al
servizio oppure possono guardare le live in modo anonimo (guest). Per registrarsi, gli utenti devono
indicare nome utente, password, data di nascita, numero di telefono o indirizzo mail. Gli utenti iscritti possono chattare, seguire lo streamer, creare dirette. Gli utenti registrati possono abbonarsi
(diventando utenti “premium”) ed avere così accesso a contenuti extra come interviste esclusive,
podcast e chattare direttamente con i conduttori/artisti protagonisti dei film/concerti etc..

Gli streamer hanno ciascuno un canale, che può essere caratterizzato tramite una descrizione. Per
ogni canale, è possibile specificare una lista di social associati (ad esempio Instagram, YouTube,
ecc.), un’immagine profilo e anche un trailer (Figura 1(a)). In ogni canale possono esserci live, video
(live passate) e clip (video di durata breve). Le live possono anche non diventare video del canale ma ad ogni diretta live, viene inviata una notifica agli utenti che seguono il canale. Ognuno ha un titolo, una durata, appartiene a una categoria (Figura 1(b)) e può essere associato a diversi hashtags/emojis etc..). Per ogni live, viene memorizzato il numero medio di spettatori, i commenti e le reazioni (emojis, hashtags etc..) mentre per i video e le clip il numero di visualizzazioni.

![Untitled](/Exam/Images/Untitled.png)

Il servizio descritto è liberamente ispirato a Twitch ([https://www.twitch.tv](https://www.twitch.tv/)) a cui è possibile fare riferimento per completare e disambiguare i requisiti.
Per ogni creatore di contenuti, si memorizzano il numero di live effettuate, il numero di minuti trasmessi (in diretta e non) e il numero medio di spettatori/utenti simultanei (sia premium che guest). Inoltre, sulla pagina del canale viene visualizzato il numero di followers.

Quando uno streamer rispetta determinati parametri di performance (un minimo di 500 minuti trasmessi, una media di tre o più spettatori simultanei, almeno 50 followers), può diventare affiliate. Le stream hanno degli orari. Ogni streamer ha un calendario in cui può dire quando farà stream e indicare il titolo delle prossime live. Inoltre, ogni streamer può anche decidere di trasmettere dirette live solo agli utenti premium (che hanno accesso a contenuti esclusivi).

I viewer possono diventare follower del canale degli streamer che preferiscono, e le loro preferenze sono raccolte in un elenco di follower a cui possono accedere dal loro profilo. I viewer possono inoltre supportare gli streamer tramite la subscription (a pagamento) al loro canale, ottenendo dei privilegi (emoticon personalizzate, nessun limite di caratteri nella lunghezza dei commenti, ecc.). Inoltre, gli utenti hanno un portafoglio di bit (moneta virtuale che possono acquistare tramite la piattaforma), utilizzabile per effettuare donazioni agli streamer tramite differenti metodi di pagamento elettronici.

Una volta che i viewer diventano follower, possono votare i contenuti multimediali degli streamer, esprimendosi tramite l’utilizzo di un voto su scala likert (nel range [1,10]). Oltre a chattare pubblicamente, gli utenti – attraverso un sistema di messaggistica privato embedded nella piattaforma - possono scambiarsi messaggi e contenuti multimediali privati.

Gli utenti (sia guest che registrati), possono cercare i contenuti multimediali per hashtag o per categorie (ad es. Musica, Sport, Personaggi famosi, Arte, Talk-show, Games, Simulation, food&drinks, Creative, Strategy, Technology, etc…). Ogni utente registrato, in base ai contenuti/pagine/streamer che segue, ha una lista di contenuti multimediali suggeriti.

Infine, gli utenti fragili, possono registrarsi al servizio avendo però a disposizione contenuti multimediali più inclusivi e accessibili (ad es. contenuti in LIS – Lingua Italiana dei Segni per le persone non udenti), oppure una versione delle pagine ad accesso facilitato (caratteri aumentati, stile delle pagine dei canali in b/w).

La base di dati deve supportare le seguenti operazioni:

- Una volta al giorno si controllano le condizioni per la qualifica di affiliate
- Una volta a settimana viene calcolata la classifica degli streamer più seguiti
- Una volta al giorno, viene calcolata la media dei like per ogni contenuto multimediale (per ogni streamer)
- Una volta al giorno, gli amministratori, per ogni contenuto multimediale di ogni streamer, stilano il rating dei video più votati (quelli che, in media, hanno ricevuto una votazione maggiore rispetto agli altri)
- Dieci volte al giorno, vengono controllati ed eliminati tutti i commenti con contenuti offensivi fatti dagli utenti per ogni contenuto multimediale (per ogni streamer), nelle categorie, nei canali e durante le dirette live
- Due volte al giorno vengono controllati i nuovi utenti registrati (sia premium – nuovi abbonati – sia utenti appartenenti a categorie fragili)
- Cinque volte al giorno, gli amministratori delle pagine degli streamer segnalano agli amministratori della base di dati, i profili fake che seguono i loro streamer
- Una volta ogni 6 mesi, gli amministratori possono visualizzare lo storico degli utenti premium (quelli storici (dato un range di date) che quelli recenti (relativi all’ultimo mese)).

Qualsiasi altra operazione/funzionalità del sistema e/o modellazione di requisiti non descritti, purché motivata, è ben accetta! (… un po' di fantasia!!!)

Si può assumere che i contenuti multimediali vengano gestiti da una piattaforma/server di video hosting esterna (e che quindi sia sufficiente memorizzare solo un URL o indirizzo IP).

Per il servizio di hosting, gli amministratori delle pagine, devono pagare un corrispettivo mensile di 50$ al provider che fornisce il servizio di hosting. Se si verificano ritardi per un massimo di 15 giorni a partire dalla data di acquisto/rinnovo dell’hosting, il profilo/canale dello streamer verrà sospeso fino alla data di rinnovo (data di accredito) del pagamento del servizio di hosting.
