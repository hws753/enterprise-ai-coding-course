# Enterprise AI Coding Skill

## Stato

Documento operativo - template didattico riutilizzabile per il project work Ticket Management API.

Questo file rappresenta il riferimento Markdown principale della skill personale.

Il file skills.sh lo affianca come script minimo obbligatorio, sicuro e non distruttivo.

## Scopo

Questo file contiene istruzioni operative riutilizzabili per lavorare con un assistente AI nel project work Ticket Management API.

La skill serve a guidare l'AI durante sviluppo, review, documentazione e verifica del codice.

Non sostituisce la responsabilita tecnica dello sviluppatore.

## Contesto

Corso: Enterprise AI Coding
Project work: Ticket Management API
Stack: Java 21, Spring Boot, Maven, Spring Data JPA, H2
Ambiente: GitHub Codespaces
Assistenti AI: GitHub Copilot o Claude

## Come usare questa skill

Prima di chiedere supporto all'AI:

- leggere il perimetro del task
- indicare il file o componente coinvolto
- specificare output atteso e vincoli
- richiamare esplicitamente le regole di questo file
- chiedere modifiche piccole e verificabili
- chiedere sempre cosa va controllato manualmente

Se il prompt e lungo o complesso, ripetere i vincoli principali nel prompt stesso.

## Regole generali per l'assistente AI

L'assistente deve:

- lavorare in modo incrementale
- rispettare il perimetro richiesto
- proporre modifiche piccole e verificabili
- spiegare le scelte tecniche
- indicare rischi e punti da verificare
- distinguere problemi reali da preferenze stilistiche
- richiedere conferma prima di modifiche ampie

L'assistente non deve:

- completare tutto il progetto in un unico passaggio
- introdurre dipendenze non richieste
- usare Lombok, MapStruct o ModelMapper senza richiesta esplicita
- esporre Entity direttamente verso l'esterno
- inserire credenziali, token, URL reali o dati sensibili
- sostituire review umana, test e decisione finale

## Regole di sicurezza

Non condividere con l'AI:

- credenziali
- token
- chiavi API
- stringhe di connessione reali
- dati personali
- dati cliente
- log sensibili non anonimizzati
- URL interni o aziendali reali

Prima di inviare un prompt, verificare che le informazioni siano minime, pertinenti e anonimizzate.

## Regole di generazione codice

Quando si chiede codice all'AI:

- specificare il file o componente coinvolto
- indicare il comportamento atteso
- indicare vincoli tecnici e di sicurezza
- chiedere una modifica alla volta
- chiedere spiegazione delle scelte
- chiedere test o controlli da eseguire

Nel project work mantenere separati:

- Controller
- Service
- Repository
- DTO
- Entity
- gestione errori

## Esempi di richieste corrette

Esempio corretto:

Chiedi una modifica limitata al TicketService per aggiornare lo stato di un ticket, senza modificare Controller, Repository o DTO se non necessario.

Esempio da evitare:

Completa tutto il modulo Ticket e sistema eventuali errori.

## Regole di review

Ogni output AI deve essere revisionato manualmente.

La review deve verificare:

- correttezza logica
- sicurezza
- manutenibilita
- coerenza con il project work
- assenza di dipendenze non motivate
- assenza di dati reali
- presenza di test o verifiche
- leggibilita per sviluppatori junior/intermedi

## Performance e costi

L'AI non deve ottimizzare senza evidenze.

Prima di accettare un suggerimento su performance o costi, valutare:

- beneficio reale
- costo tecnico
- complessita introdotta
- impatto sulla manutenzione
- test o misurazioni necessarie
- rischio di overengineering

Esempio di ottimizzazione prematura:

- introdurre caching, async o parallelismo senza un problema misurato

Esempio di costo tecnico non necessario:

- aggiungere una libreria di mapping per pochi DTO semplici

## Relazione con skills.sh

skills.sh e il file eseguibile minimo della skill.

skills.sh deve:

- essere semplice
- essere sicuro
- essere non distruttivo
- richiamare skills.md come riferimento principale
- non contenere credenziali, token o chiavi API
- non installare dipendenze
- non inviare dati all'esterno
- non modificare file senza conferma

skills.md resta il documento principale. skills.sh e solo un supporto operativo minimo.

## Decisioni finali

Ogni proposta AI deve essere classificata come:

- accettare
- modificare
- rifiutare
- rimandare
- verificare con test

La decisione finale deve essere motivata dallo sviluppatore, non delegata all'AI.

## Uso nel project finale

Nel project finale usare questa skill per:

- definire il perimetro
- completare una sola funzionalita alla volta
- revisionare codice AI-generated
- aggiornare README
- organizzare la prompt library
- verificare skills.sh
- preparare retrospettiva e presentazione finale
