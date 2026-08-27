# Esercizio 6 - Pipeline dati ed error handling con AI

## Stato

Documento di lavoro - esercitazione operativa del corso Enterprise AI Coding.

## Blocco del programma

Engineering e Integrazione & Governance - Pipeline dati ed error handling aziendale.

## Obiettivo didattico

Al termine di questo esercizio, il partecipante deve saper usare Copilot o Claude per progettare e generare in modo controllato una pipeline applicativa completa per il modulo Ticket.

L'obiettivo non e chiedere all'AI di creare automaticamente tutto il backend, ma guidarla nella costruzione progressiva del flusso dati:

```text
request DTO -> Controller -> Service -> Repository -> Entity -> response DTO
```

Il partecipante deve inoltre saper introdurre un error handling coerente, leggibile e verificabile, evitando gestione errori improvvisata, messaggi troppo tecnici verso l'esterno o dettagli interni esposti nelle risposte API.

## Durata indicativa

75-90 minuti:

- 10 minuti: verifica dello stato del progetto
- 15 minuti: progettazione della pipeline dati
- 20-30 minuti: generazione controllata di Service e mapping DTO/Entity
- 20 minuti: generazione controllata di Controller ed error handling
- 10-15 minuti: test, review e discussione guidata

## Prerequisiti

Prima di iniziare questo esercizio, devono essere stati completati gli esercizi precedenti del Blocco 2.

Devono quindi essere gia presenti e verificati:

- TicketStatus.java
- TicketPriority.java
- Ticket.java
- CreateTicketRequest.java
- TicketResponse.java
- TicketRepository.java
- configurazione H2/JPA in application.properties

Nel repository pubblico studenti questi file non sono presenti nello starter iniziale: vengono generati e verificati durante gli Esercizi 4 e 5. Nel repository privato docente, invece, la solution reference li contiene già e non va usata come base operativa dell'esercitazione.

## File coinvolti

- docs/01_AI_Coding_Project_Work_Brief.md
- docs/02_AI_Coding_Safety_Checklist.md
- exercises/04_assisted_ticket_module_generation.md
- exercises/05_repository_dto_persistence_ai.md
- exercises/06_pipeline_error_handling_ai.md
- prompts/06_pipeline_error_handling_prompt.md
- project/ticket-api/src/main/java/com/example/ticketapi/
- project/ticket-api/src/main/resources/application.properties

## Scenario

Il modulo Ticket ha ora Entity, Enum, DTO, Repository e configurazione di persistenza.

Il passo successivo consiste nel collegare questi componenti in una pipeline applicativa controllata.

La pipeline deve gestire almeno:

- creazione di un ticket
- lettura di un ticket per id
- conversione tra request DTO, Entity e response DTO
- gestione dei casi di errore
- risposta API leggibile e non eccessivamente tecnica

L'AI deve essere usata per proporre una soluzione, ma ogni decisione su responsabilita, errori, validazioni e messaggi di risposta deve essere verificata dallo sviluppatore.

## Principio operativo

La pipeline non deve essere generata tutta in un'unica richiesta.

Ordine consigliato:

1. analisi del flusso dati
2. generazione del Service
3. mapping tra DTO ed Entity
4. generazione del Controller
5. definizione delle eccezioni applicative
6. definizione di un formato errore coerente
7. generazione di un GlobalExceptionHandler
8. test e review

## Task 1 - Analisi della pipeline dati

Prima di chiedere codice a Copilot o Claude, descrivi il flusso dati previsto.

Rispondi a queste domande:

- quali dati entrano nell'API?
- quali dati devono arrivare al Service?
- quali dati devono essere salvati tramite Repository?
- quali dati devono tornare al client?
- quali dettagli interni non devono essere esposti?
- quali errori possono verificarsi?
- quali errori devono diventare risposte controllate?

Esempio di flusso per creazione ticket:

```text
CreateTicketRequest
-> TicketController
-> TicketService
-> TicketRepository
-> Ticket Entity salvata
-> TicketResponse
```

## Task 2 - Prompt per generare il Service

Scrivi un prompt strutturato per chiedere a Copilot o Claude di generare il Service del modulo Ticket.

Il Service deve occuparsi della logica applicativa principale, non il Controller.

Funzionalita minime consigliate:

- createTicket
- getTicketById

Il prompt deve specificare:

- usare TicketRepository gia esistente
- ricevere CreateTicketRequest per la creazione
- restituire TicketResponse
- impostare uno stato iniziale coerente
- non inserire logica di business nel Controller
- non esporre Entity direttamente verso l'esterno
- non aggiungere dipendenze inutili
- mantenere codice semplice e leggibile

Schema del prompt:

```text
Ruolo:
Contesto:
Obiettivo:
Classi gia presenti:
Funzionalita richieste:
Vincoli architetturali:
Vincoli di sicurezza:
Cosa non fare:
Output atteso:
Verifiche richieste:
```

## Task 3 - Mapping DTO/Entity

Chiedi all'AI di proporre un mapping semplice tra DTO ed Entity.

In questa fase non introdurre librerie di mapping automatico, salvo motivazione esplicita e approvazione del docente.

Non aggiungere Lombok, MapStruct, ModelMapper o altre dipendenze al pom.xml senza approvazione esplicita.

Il mapping puo essere gestito:

- nel Service, se il progetto resta piccolo e didattico
- in una classe mapper dedicata, se la separazione migliora leggibilita e testabilita

Il partecipante deve motivare la scelta.

Prima di accettare il mapping, verifica:

- non espone Entity verso il Controller
- non espone dettagli interni nella response
- non introduce librerie non necessarie
- non aggiunge dipendenze al pom.xml senza approvazione
- resta comprensibile per sviluppatori junior/intermedi
- non duplica logica in piu punti

## Task 4 - Prompt per generare il Controller

Scrivi un prompt per chiedere a Copilot o Claude di generare un Controller REST minimo.

Endpoint minimi consigliati:

```text
POST /tickets
GET /tickets/{id}
```

Il Controller deve:

- ricevere DTO di request
- delegare al Service
- restituire DTO di response
- non contenere logica di business
- usare validazione dove coerente
- non gestire manualmente tutti gli errori con try/catch generici
- non esporre stack trace o dettagli interni

## Task 5 - Error handling aziendale

Scrivi un prompt per chiedere all'AI di proporre una gestione errori coerente.

Componenti consigliati:

- TicketNotFoundException
- ErrorResponse
- GlobalExceptionHandler con RestControllerAdvice

La gestione errori deve coprire almeno:

- ticket non trovato
- errori di validazione input
- errore generico controllato

Il prompt deve chiedere esplicitamente di:

- non esporre stack trace
- non esporre dettagli interni del database
- usare messaggi comprensibili
- distinguere errori client ed errori server
- mantenere formato risposta coerente
- evitare gestione errori troppo complessa per il contesto didattico
- non aggiungere dipendenze non richieste

## Task 6 - Review della pipeline

Dopo la generazione, scrivi un prompt di review per chiedere all'AI di valutare l'intera pipeline.

La review deve verificare:

- separazione Controller / Service / Repository / DTO
- correttezza del mapping
- assenza di logica di business nel Controller
- assenza di Entity esposte direttamente verso l'esterno
- coerenza delle risposte di errore
- assenza di dati sensibili nei messaggi
- assenza di dipendenze non richieste
- test mancanti
- punti da verificare manualmente

## Task 7 - Verifica tecnica

Dopo le modifiche, esegui:

```bash
cd project/ticket-api
./mvnw test
```

Se il comando fallisce, non chiedere subito all'AI di correggere tutto.

Prima analizza:

- messaggio di errore
- classe coinvolta
- causa probabile
- modifica minima necessaria
- se il problema deriva da codice generato dall'AI o da integrazione manuale

## Output atteso

Al termine dell'esercizio devono essere presenti:

1. prompts/06_pipeline_error_handling_prompt.md
2. TicketService.java
3. TicketController.java
4. TicketNotFoundException.java
5. ErrorResponse.java
6. GlobalExceptionHandler.java
7. eventuale mapper, solo se motivato
8. esecuzione di ./mvnw test
9. nota finale su cosa e stato generato dall'AI, cosa e stato modificato manualmente e cosa resta da verificare

Il file prompts/06_pipeline_error_handling_prompt.md deve contenere:

- prompt per analisi pipeline
- prompt per generare il Service
- prompt per mapping DTO/Entity
- prompt per generare il Controller
- prompt per error handling
- prompt per review AI
- checklist personale di verifica

## Criteri di valutazione / autoverifica

- [ ] Ho descritto la pipeline dati prima di generare codice
- [ ] Il Controller delega al Service
- [ ] Il Service usa il Repository
- [ ] I DTO sono usati per input e output
- [ ] Le Entity non vengono esposte direttamente all'esterno
- [ ] Gli errori sono gestiti con risposte coerenti
- [ ] Non vengono esposti stack trace o dettagli interni
- [ ] Non sono state introdotte dipendenze inutili
- [ ] Non sono state aggiunte librerie di mapping senza approvazione
- [ ] La review AI e stata affiancata da controllo umano
- [ ] ./mvnw test e stato eseguito dopo le modifiche

## Errori comuni da evitare

- Chiedere all'AI di generare Controller, Service, Repository ed error handling tutti insieme
- Inserire logica di business nel Controller
- Esporre direttamente Entity nelle risposte API
- Gestire errori con try/catch generici in ogni metodo
- Restituire messaggi tecnici o stack trace al client
- Aggiungere Lombok, MapStruct, ModelMapper o librerie di mapping non necessarie
- Non verificare il formato delle risposte di errore
- Trattare la review AI come validazione definitiva
- Non eseguire i test dopo la modifica della pipeline

## Checkpoint docente

Durante il confronto in aula, verificare che i partecipanti abbiano capito questi tre punti:

1. una pipeline applicativa deve rendere chiaro il passaggio request -> Controller -> Service -> Repository -> response
2. l'error handling deve proteggere dettagli interni e rendere gli errori comprensibili
3. l'AI puo generare componenti utili, ma la qualita della pipeline dipende dalla review umana e dai test
