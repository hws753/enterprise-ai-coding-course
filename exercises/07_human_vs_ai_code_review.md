# Esercizio 7 - Code review umano vs AI

## Stato

Documento di lavoro - esercitazione operativa del corso Enterprise AI Coding.

## Blocco del programma

Engineering e Integrazione & Governance - Code review umano vs AI.

## Obiettivo didattico

Al termine di questo esercizio, il partecipante deve saper usare Copilot o Claude per supportare una code review, distinguendo chiaramente tra revisione automatizzata, valutazione umana e decisione finale.

L'obiettivo non e far revisionare all'AI tutto il progetto in modo generico, ma imparare a costruire una review mirata, verificabile e limitata a un perimetro tecnico preciso.

La review AI deve essere considerata un supporto alla lettura critica del codice, non una validazione definitiva.

## Durata indicativa

45-60 minuti.

Massimo operativo: 75 minuti.

Questo esercizio deve restare piu snello rispetto all'Esercizio 6, per rispettare il budget orario del corso.

## Prerequisiti

Prima di iniziare questo esercizio, devono essere stati completati gli esercizi precedenti del Blocco 2.

Devono quindi essere gia presenti e verificati:

- Entity ed Enum del modulo Ticket
- DTO di request e response
- Repository JPA
- Service
- Controller
- gestione errori
- configurazione H2/JPA
- esecuzione di ./mvnw test

Nel repository pubblico studenti questi file non sono presenti nello starter iniziale: vengono generati e verificati durante gli Esercizi 4, 5 e 6. Nel repository privato docente, invece, la solution reference li contiene già e non va usata come base operativa dell'esercitazione.

## File coinvolti

- docs/01_AI_Coding_Project_Work_Brief.md
- docs/02_AI_Coding_Safety_Checklist.md
- docs/00_Scheda_Base_Corso_Enterprise_AI_Coding.md
- exercises/04_assisted_ticket_module_generation.md
- exercises/05_repository_dto_persistence_ai.md
- exercises/06_pipeline_error_handling_ai.md
- exercises/07_human_vs_ai_code_review.md
- prompts/07_human_vs_ai_code_review_prompt.md
- project/ticket-api/src/main/java/com/example/ticketapi/

## Scenario

Il team ha completato una prima versione del modulo Ticket.

Il codice e stato generato in parte con l'assistenza dell'AI e in parte modificato manualmente.

Prima di considerarlo pronto per il project work finale, il team deve eseguire una review mirata per verificare:

- correttezza logica
- separazione delle responsabilita
- sicurezza
- gestione errori
- test mancanti
- dipendenze non richieste
- parti generate dall'AI che richiedono ulteriore verifica

## Principio operativo

La review non deve essere generica.

Non chiedere:

```text
Controlla tutto il progetto e dimmi se va bene.
```

Chiedere invece una review limitata e guidata:

1. definire il perimetro della review
2. chiedere all'AI una review tecnica strutturata
3. confrontare la review AI con una checklist umana
4. distinguere problemi certi, ipotesi e suggerimenti
5. decidere quali modifiche accettare
6. documentare le decisioni prese

## Task 1 - Definire il perimetro della review

Prima di usare Copilot o Claude, scegli cosa revisionare.

Perimetro consigliato:

- TicketService
- TicketController
- GlobalExceptionHandler
- DTO di request e response
- eventuale mapper

Non revisionare tutto il progetto in una sola richiesta.

Rispondi a queste domande:

- quali classi voglio revisionare?
- quali rischi voglio controllare?
- quali vincoli architetturali devono essere rispettati?
- quali parti sono state generate dall'AI?
- quali parti sono state modificate manualmente?
- quali test sono gia presenti?
- quali test mancano?

## Task 2 - Prompt per code review AI

Scrivi un prompt strutturato per chiedere a Copilot o Claude una code review mirata.

Il prompt deve chiedere di valutare:

- correttezza logica
- separazione Controller / Service / Repository / DTO
- uso corretto dei DTO
- assenza di Entity esposte direttamente verso l'esterno
- gestione errori
- assenza di stack trace o dettagli interni nelle risposte
- assenza di dipendenze non richieste
- test mancanti
- possibili rischi di sicurezza
- parti da verificare manualmente

Schema del prompt:

```text
Ruolo:
Contesto:
Perimetro della review:
Classi da analizzare:
Vincoli architetturali:
Vincoli di sicurezza:
Cosa non fare:
Output atteso:
Verifiche richieste:
```

## Task 3 - Output richiesto alla review AI

Chiedi all'AI di restituire la review in forma strutturata.

Formato consigliato:

```text
1. Problemi certi
2. Rischi potenziali
3. Suggerimenti di miglioramento
4. Test mancanti
5. Parti da verificare manualmente
6. Modifiche da non fare senza conferma umana
```

La review AI deve distinguere chiaramente:

- errori certi
- ipotesi da verificare
- preferenze stilistiche
- miglioramenti opzionali
- modifiche rischiose

## Task 4 - Checklist di review umana

Esegui una review umana usando questa checklist.

Controlla:

- il Controller delega al Service
- il Controller non contiene logica di business
- il Service usa il Repository in modo coerente
- i DTO sono usati per input e output
- le Entity non sono esposte direttamente
- gli errori restituiti al client non contengono stack trace
- i messaggi di errore non espongono dettagli interni
- non sono state aggiunte dipendenze non richieste
- il codice generato e comprensibile
- i test coprono i casi principali
- le modifiche suggerite dall'AI sono motivate

## Task 5 - Confronto tra review AI e review umana

Confronta la review AI con la checklist umana.

Classifica ogni punto emerso in una delle seguenti categorie:

- da correggere subito
- da verificare meglio
- da rimandare
- suggerimento non necessario
- falso positivo dell'AI
- rischio non rilevato dall'AI ma individuato dalla review umana

Domande guida:

- l'AI ha individuato problemi reali?
- l'AI ha inventato problemi non presenti?
- l'AI ha ignorato rischi importanti?
- la review umana ha confermato o corretto la review AI?
- quali decisioni finali prende il team?

## Task 6 - Decisione e documentazione

Per ogni modifica accettata, scrivi una breve motivazione.

La nota finale deve indicare:

- problema individuato
- fonte della segnalazione: AI, umano o entrambi
- decisione presa
- motivazione
- test o verifica necessari

Esempio di struttura:

```text
Problema:
Segnalato da:
Decisione:
Motivazione:
Verifica richiesta:
```

## Task 7 - Verifica tecnica finale

Dopo eventuali modifiche, esegui:

```bash
cd project/ticket-api
./mvnw test
```

Se il comando fallisce, non chiedere subito all'AI di correggere tutto.

Prima analizza:

- messaggio di errore
- classe coinvolta
- modifica recente collegata
- causa probabile
- modifica minima necessaria

## Output atteso

Al termine dell'esercizio devono essere presenti:

1. prompts/07_human_vs_ai_code_review_prompt.md
2. una review AI strutturata
3. una checklist di review umana compilata
4. un confronto tra review AI e review umana
5. una lista di decisioni motivate
6. esecuzione di ./mvnw test dopo eventuali modifiche
7. nota finale su cosa e stato corretto, cosa e stato rimandato e cosa resta da verificare

Il file prompts/07_human_vs_ai_code_review_prompt.md deve contenere:

- prompt per code review AI
- checklist di review umana
- schema di confronto AI vs umano
- schema decisionale per accettare o rifiutare modifiche
- nota finale sui limiti della review AI

## Criteri di valutazione / autoverifica

- [ ] Ho definito un perimetro chiaro per la review
- [ ] Non ho chiesto all'AI di revisionare tutto in modo generico
- [ ] La review AI distingue problemi certi, ipotesi e suggerimenti
- [ ] La review umana verifica architettura, sicurezza e test
- [ ] Ho confrontato review AI e review umana
- [ ] Ho individuato eventuali falsi positivi dell'AI
- [ ] Ho individuato eventuali rischi non rilevati dall'AI
- [ ] Ho motivato le modifiche accettate
- [ ] Ho evitato modifiche automatiche non comprese
- [ ] ./mvnw test e stato eseguito dopo eventuali modifiche

## Errori comuni da evitare

- Chiedere all'AI una review generica di tutto il progetto
- Accettare tutti i suggerimenti dell'AI senza valutarli
- Confondere preferenze stilistiche con errori reali
- Ignorare rischi non rilevati dall'AI
- Non distinguere problemi certi e ipotesi
- Applicare refactoring non necessari
- Non motivare le decisioni prese
- Non rieseguire i test dopo eventuali modifiche
- Considerare la review AI come approvazione finale

## Checkpoint docente

Durante il confronto in aula, verificare che i partecipanti abbiano capito questi tre punti:

1. la review AI aiuta a individuare rischi e miglioramenti, ma non sostituisce la responsabilita tecnica umana
2. una review efficace deve avere perimetro, criteri e output strutturato
3. ogni modifica accettata deve essere motivata, verificata e collegata a test o controlli manuali
