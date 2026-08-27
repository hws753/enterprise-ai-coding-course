# Esercizio 5 - DTO, Repository e persistenza con AI

## Stato

Documento di lavoro - esercitazione operativa del corso Enterprise AI Coding.

## Blocco del programma

Engineering e Integrazione & Governance - Integrazione database e persistenza.

## Obiettivo didattico

Al termine di questo esercizio, il partecipante deve saper usare Copilot o Claude per completare in modo controllato la parte di persistenza del modulo Ticket.

L'obiettivo non e far generare codice JPA in modo automatico e non verificato, ma guidare l'assistente AI nella produzione di DTO, Repository e configurazione minima di persistenza, controllando ogni scelta tecnica.

Il project work resta un laboratorio di Enterprise AI Coding. Spring Boot, JPA e H2 sono il contesto tecnico usato per esercitarsi sul metodo.

## Durata indicativa

60-75 minuti:

- 10 minuti: verifica dello stato del progetto
- 15 minuti: analisi di pom.xml e application.properties
- 20-30 minuti: generazione controllata di DTO e Repository
- 10-15 minuti: configurazione H2/JPA e verifica
- 10 minuti: review e discussione guidata

## Prerequisiti

Prima di iniziare questo esercizio, devono essere stati completati i passaggi dell'Esercizio 4.

Devono quindi essere gia presenti e verificati:

- TicketStatus.java
- TicketPriority.java
- Ticket.java

Nel repository pubblico studenti questi file non sono presenti nello starter iniziale: vengono generati e verificati durante l'Esercizio 4. Nel repository privato docente, invece, la solution reference li contiene già e non va usata come base operativa dell'esercitazione.

## File coinvolti

- docs/01_AI_Coding_Project_Work_Brief.md
- docs/02_AI_Coding_Safety_Checklist.md
- exercises/04_assisted_ticket_module_generation.md
- exercises/05_repository_dto_persistence_ai.md
- prompts/05_repository_dto_persistence_prompt.md
- project/ticket-api/pom.xml
- project/ticket-api/src/main/resources/application.properties
- project/ticket-api/src/main/java/com/example/ticketapi/

## Stato iniziale del progetto

Il file pom.xml contiene gia le dipendenze necessarie per lavorare su persistenza e validazione:

- Spring Data JPA
- Validation
- Web MVC
- H2
- H2 Console
- dipendenze di test per JPA, Validation e Web MVC

Nel repository pubblico studenti, il file application.properties dello starter contiene inizialmente solo:

```properties
spring.application.name=ticket-api
```

Quindi H2 e JPA sono disponibili come dipendenze, ma nello starter studenti non sono ancora configurati esplicitamente. Nel repository privato docente, invece, la solution reference contiene gia la configurazione H2/JPA completa e non va usata come stato iniziale dell'esercitazione.

## Scenario

Dopo aver generato Entity ed Enum del modulo Ticket, il team deve completare la parte di persistenza e trasferimento dati.

In questa fase non bisogna ancora creare l'intero Controller REST.

L'obiettivo e generare e verificare:

- DTO di request
- DTO di response
- Repository JPA
- configurazione minima H2/JPA
- prime verifiche di build/test

## Principio operativo

Ogni richiesta all'AI deve essere incrementale.

Non chiedere:

```text
Crea tutta la persistenza del modulo Ticket.
```

Chiedere invece componenti piccoli, verificabili e coerenti:

1. analisi dello stato attuale del progetto
2. generazione del DTO di request
3. generazione del DTO di response
4. generazione del Repository
5. configurazione H2/JPA
6. review del codice prodotto
7. esecuzione della build/test

## Task 1 - Analisi dello stato del progetto

Prima di chiedere codice a Copilot o Claude, verifica lo stato del progetto.

Controlla:

- quali classi sono gia presenti
- se Ticket.java usa correttamente TicketStatus e TicketPriority
- se pom.xml contiene gia le dipendenze necessarie
- se application.properties deve essere aggiornato
- se ci sono dipendenze che Copilot non deve aggiungere

Domanda guida:

Perche e importante leggere pom.xml prima di chiedere all'AI di configurare la persistenza?

## Task 2 - Prompt per generare i DTO

Scrivi un prompt strutturato per chiedere a Copilot o Claude di generare i DTO del modulo Ticket.

DTO consigliati:

- CreateTicketRequest
- TicketResponse

Il prompt deve specificare:

- usare dati fittizi
- non inserire logica di business nei DTO
- usare validazioni solo dove coerenti
- non aggiungere dipendenze nuove
- mantenere nomi chiari
- distinguere input e output
- non esporre campi interni non necessari

Schema del prompt:

```text
Ruolo:
Contesto:
Obiettivo:
Classi gia presenti:
DTO richiesti:
Vincoli di validazione:
Vincoli di sicurezza:
Cosa non fare:
Output atteso:
Verifiche richieste:
```

## Task 3 - Review dei DTO

Dopo la generazione, verifica:

- CreateTicketRequest contiene solo i campi necessari per creare un ticket
- TicketResponse non espone dettagli interni non necessari
- le validazioni sono sensate
- non sono presenti dati reali
- non e stata introdotta logica di business
- i nomi sono coerenti con il project work

Esempi di campi plausibili per CreateTicketRequest:

- title
- description
- priority

Esempi di campi plausibili per TicketResponse:

- id
- title
- description
- status
- priority
- createdAt
- updatedAt

## Task 4 - Prompt per generare il Repository

Scrivi un prompt per chiedere a Copilot o Claude di generare il Repository JPA per Ticket.

Il prompt deve specificare:

- usare Spring Data JPA
- estendere JpaRepository
- non aggiungere implementazioni manuali non richieste
- proporre solo metodi di query semplici e motivati
- non creare query complesse se non necessarie
- non modificare l'Entity senza motivazione

Repository consigliato:

```text
TicketRepository
```

Metodi opzionali da valutare:

- findByStatus
- findByPriority

Il partecipante deve motivare se questi metodi servono subito oppure se e meglio rimandarli.

## Task 5 - Configurazione H2/JPA

Scrivi un prompt per chiedere all'AI di proporre una configurazione minima per application.properties.

La configurazione deve essere adatta a un ambiente didattico con H2.

Il prompt deve chiedere di:

- usare database H2 in memoria
- abilitare H2 console solo per demo didattica
- mostrare SQL solo se utile alla didattica
- evitare credenziali reali
- spiegare ogni proprieta proposta
- non introdurre configurazioni enterprise non richieste

Prima di accettare la configurazione, verifica:

- non contiene credenziali reali
- non contiene URL aziendali
- e coerente con H2
- e comprensibile per studenti junior/intermedi
- non introduce complessita inutile

## Task 6 - Verifica tecnica

Dopo aver generato DTO, Repository e configurazione, esegui:

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

## Task 7 - Review AI + controllo umano

Scrivi un prompt di review per chiedere a Copilot o Claude di controllare il lavoro svolto.

La review deve verificare:

- coerenza tra Entity, DTO e Repository
- correttezza delle validazioni
- assenza di dati reali o sensibili
- assenza di dipendenze inutili
- correttezza della configurazione H2/JPA
- rischi di overengineering
- test mancanti
- parti da verificare manualmente

## Output atteso

Al termine dell'esercizio devono essere presenti:

1. prompts/05_repository_dto_persistence_prompt.md
2. CreateTicketRequest.java
3. TicketResponse.java
4. TicketRepository.java
5. application.properties aggiornato per H2/JPA
6. esecuzione di ./mvnw test
7. nota finale su cosa e stato generato dall'AI, cosa e stato modificato manualmente e cosa resta da verificare

Il file prompts/05_repository_dto_persistence_prompt.md deve contenere:

- prompt per generare i DTO
- prompt per generare il Repository
- prompt per configurare H2/JPA
- prompt per review AI
- checklist personale di verifica

## Criteri di valutazione / autoverifica

- [ ] Ho verificato lo stato del progetto prima di chiedere codice all'AI
- [ ] Ho controllato il pom.xml prima di aggiungere o accettare dipendenze
- [ ] I DTO distinguono chiaramente input e output
- [ ] I DTO non contengono logica di business
- [ ] Il Repository usa Spring Data JPA in modo semplice
- [ ] La configurazione H2/JPA usa solo dati fittizi
- [ ] Non sono state introdotte dipendenze inutili
- [ ] Il codice generato e stato letto e compreso
- [ ] La review AI e stata affiancata da controllo umano
- [ ] ./mvnw test e stato eseguito dopo le modifiche

## Errori comuni da evitare

- Chiedere all'AI di generare DTO, Repository, Service e Controller tutti insieme
- Aggiungere dipendenze gia presenti nel pom.xml
- Esporre troppi campi nel DTO di response
- Inserire logica applicativa nei DTO
- Creare query JPA non necessarie
- Copiare configurazioni database prese da ambienti reali
- Accettare configurazioni H2 senza capirle
- Ignorare il risultato dei test
- Trattare la review AI come validazione definitiva

## Checkpoint docente

Durante il confronto in aula, verificare che i partecipanti abbiano capito questi tre punti:

1. la persistenza va introdotta in modo incrementale e verificabile
2. l'AI puo proporre DTO, Repository e configurazioni, ma ogni scelta deve essere letta e motivata
3. prima di passare a Service e Controller bisogna verificare coerenza tra Entity, DTO, Repository e configurazione del database
