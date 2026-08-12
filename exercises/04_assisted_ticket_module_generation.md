# Esercizio 4 - Generazione assistita del modulo Ticket

## Stato

Documento di lavoro - prima bozza, da rivedere prima della pubblicazione definitiva.

## Blocco del programma

Engineering e Integrazione & Governance - Generazione assistita di moduli applicativi.

## Obiettivo didattico

Al termine di questo esercizio, il partecipante deve saper usare Copilot o Claude per generare un modulo applicativo in modo controllato, incrementale e verificabile.

L'obiettivo non e generare tutto il codice in un'unica richiesta, ma guidare l'assistente AI passo dopo passo, verificando ogni output prima di integrarlo nel progetto.

Il project work resta un laboratorio di Enterprise AI Coding. Spring Boot e il contesto tecnico, non l'oggetto principale del corso.

## Durata indicativa

60-75 minuti:

- 10 minuti: lettura del brief e richiamo della checklist
- 15 minuti: progettazione del prompt di generazione
- 25-35 minuti: generazione incrementale dei primi componenti
- 10-15 minuti: verifica, confronto e discussione

## File coinvolti

- docs/01_AI_Coding_Project_Work_Brief.md
- docs/02_AI_Coding_Safety_Checklist.md
- exercises/04_assisted_ticket_module_generation.md
- prompts/04_assisted_ticket_module_generation_prompt.md
- project/ticket-api/pom.xml
- project/ticket-api/src/main/java/com/example/ticketapi/TicketApiApplication.java

Nota: al momento lo starter Spring Boot contiene solo la classe principale dell'applicazione, il file application.properties e il test base. I componenti del modulo Ticket non sono ancora presenti e verranno generati in modo incrementale.

## Scenario

Dopo aver lavorato su prompt engineering, data leakage, prompt injection e design pattern, il team inizia a usare Copilot o Claude per generare il primo modulo applicativo reale della Ticket Management API.

Il modulo Ticket deve essere generato in modo progressivo, rispettando una separazione chiara tra responsabilita applicative.

Componenti previsti nel modulo completo:

- Entity Ticket
- Enum TicketStatus
- Enum TicketPriority
- DTO per richiesta di creazione
- DTO per risposta
- Repository
- Service
- Controller
- gestione base degli errori
- test minimi

In questo esercizio non bisogna chiedere all'AI di generare tutta l'applicazione in una volta sola.

L'attivita si concentra solo sui primi componenti del modulo:

- TicketStatus
- TicketPriority
- Ticket

Repository, Service, Controller, error handling e test applicativi saranno affrontati negli esercizi successivi del Blocco 2.

## Principio operativo

Ogni componente deve seguire questo ciclo:

1. chiedere all'AI un piano breve
2. generare un solo componente o un piccolo gruppo strettamente coerente
3. leggere il codice prodotto
4. verificare architettura, sicurezza e coerenza
5. eseguire test o build quando possibile
6. documentare cosa e stato accettato, modificato o scartato

## Task 1 - Preparare il prompt di generazione controllata

Scrivi un prompt strutturato per chiedere a Copilot o Claude di generare il modulo Ticket in modo incrementale.

Il prompt deve specificare:

- ruolo dell'assistente
- contesto del progetto
- stack tecnico
- componenti da generare
- ordine di generazione
- vincoli architetturali
- vincoli di sicurezza
- cosa non generare
- verifiche richieste

Usa questo schema:

```text
Ruolo:
Contesto:
Obiettivo:
Stack tecnico:
Componenti richiesti:
Ordine di generazione:
Vincoli architetturali:
Vincoli di sicurezza:
Cosa non fare:
Output atteso:
Verifiche richieste:
```

## Task 2 - Definire l'ordine di generazione

Prima di usare Copilot o Claude, definisci l'ordine in cui generare i componenti.

Ordine consigliato per il modulo completo:

1. Enum TicketStatus e TicketPriority
2. Entity Ticket
3. DTO di request e response
4. Repository
5. Service
6. Controller
7. gestione errori
8. test

In questo esercizio si completano solo i punti 1 e 2.

Motiva perche questo ordine e piu controllabile rispetto alla generazione completa in un'unica richiesta.

## Task 3a - Generazione degli Enum

Usa Copilot o Claude per generare, in una prima richiesta separata, solo i due Enum:

- TicketStatus
- TicketPriority

Valori consigliati:

```text
TicketStatus:
- OPEN
- IN_PROGRESS
- RESOLVED
- CLOSED

TicketPriority:
- LOW
- MEDIUM
- HIGH
```

Prima di accettare il codice, verifica:

- nomi chiari e coerenti con il brief
- valori coerenti con il ciclo di vita del ticket
- nessuna logica non necessaria dentro gli Enum
- nessun dato reale
- nessuna dipendenza inutile

## Task 3b - Generazione dell'Entity Ticket

Solo dopo aver verificato gli Enum, chiedi la generazione dell'Entity Ticket.

Il prompt deve specificare che l'Entity deve usare gli Enum gia creati nel passaggio precedente.

Campi consigliati:

- id
- title
- description
- status
- priority
- createdAt
- updatedAt

Prima di accettare il codice, verifica:

- campi coerenti con lo schema dati del brief
- tipi corretti
- uso corretto degli Enum
- assenza di logica applicativa nell'Entity
- assenza di dipendenze inutili
- nessun dato reale negli esempi o nei commenti
- nessuna logica di business inserita impropriamente nella classe Entity

## Task 4 - Review del codice generato

Dopo la generazione, scrivi un prompt di review per chiedere all'AI di analizzare il codice prodotto.

Il prompt deve chiedere di valutare:

- correttezza logica
- separazione delle responsabilita
- leggibilita
- sicurezza
- validazioni mancanti
- test necessari
- possibili problemi di manutenibilita
- eventuale overengineering

La review AI deve essere considerata un supporto, non una validazione definitiva.

## Task 5 - Verifica manuale

Prima di procedere oltre, il partecipante deve rispondere:

- Ho capito ogni classe generata?
- Ci sono parti che l'AI ha inventato senza richiesta?
- Sono state introdotte dipendenze inutili?
- Il codice e coerente con il brief?
- Il codice e coerente con la checklist di sicurezza?
- Il codice compila?
- Quali test devo scrivere o far generare nella fase successiva?

## Comandi di verifica

Quando il codice viene modificato, eseguire dal progetto applicativo:

```bash
cd project/ticket-api
./mvnw test
```

Se il comando fallisce, non chiedere subito all'AI di correggere tutto.

Prima analizza:

- messaggio di errore
- file coinvolto
- causa probabile
- modifica minima necessaria

## Output atteso

Al termine dell'esercizio devono essere presenti:

1. il file prompts/04_assisted_ticket_module_generation_prompt.md
2. TicketStatus.java
3. TicketPriority.java
4. Ticket.java
5. esecuzione di ./mvnw test
6. nota finale su cosa e stato generato dall'AI, cosa e stato modificato manualmente e cosa resta da verificare

Il file prompts/04_assisted_ticket_module_generation_prompt.md deve contenere:

- prompt per la generazione incrementale del modulo Ticket
- ordine di generazione scelto
- prompt di review del codice generato
- checklist personale di verifica prima dell'accettazione del codice
- nota su cosa e stato generato dall'AI e cosa resta da verificare manualmente

## Criteri di valutazione / autoverifica

- [ ] Il prompt non chiede di generare tutta l'applicazione in una volta sola
- [ ] L'ordine di generazione e motivato
- [ ] Gli Enum sono stati generati e verificati prima dell'Entity
- [ ] I vincoli architetturali sono espliciti
- [ ] I vincoli di sicurezza sono espliciti
- [ ] Il codice generato viene letto prima di essere accettato
- [ ] La review AI viene affiancata da controllo umano
- [ ] I test vengono considerati parte del processo, non come fase opzionale
- [ ] ./mvnw test e stato eseguito dopo le modifiche
- [ ] Il partecipante distingue codice generato, codice revisionato e codice da verificare

## Errori comuni da evitare

- Chiedere all'AI di creare tutto il modulo in un'unica risposta
- Generare troppe classi insieme senza revisione intermedia
- Accettare codice solo perche compila
- Non leggere il codice generato
- Inserire logica di business nel Controller
- Inserire logica applicativa eccessiva nell'Entity
- Saltare DTO e validazioni nelle fasi successive
- Non chiedere test coerenti
- Non eseguire la build dopo le modifiche
- Trattare la review AI come definitiva
- Lasciare che Copilot aggiunga dipendenze non richieste

## Checkpoint docente

Durante il confronto in aula, verificare che i partecipanti abbiano capito questi tre punti:

1. la generazione assistita deve essere incrementale e verificabile
2. l'AI puo accelerare la produzione di codice, ma non sostituisce progettazione, test e review
3. ogni output AI deve essere letto, compreso, testato e documentato prima di diventare parte del project work
