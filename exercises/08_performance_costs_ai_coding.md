# Esercizio 8 - Performance e costi nell'AI Coding

## Stato

Documento di lavoro - prima bozza, da rivedere prima della pubblicazione definitiva.

## Blocco del programma

Performance, Costi, Skills - Performance e costi.

## Obiettivo didattico

Al termine di questo esercizio, il partecipante deve saper usare Copilot o Claude per analizzare il codice generato dal punto di vista di performance, sostenibilita tecnica e costi operativi.

L'obiettivo non e fare ottimizzazione prematura, ma imparare a riconoscere dove il codice AI-generated puo introdurre inefficienze, complessita inutile, query non necessarie o scelte costose da mantenere.

Il focus resta Enterprise AI Coding: l'AI aiuta ad analizzare e proporre miglioramenti, ma le decisioni finali devono essere motivate dallo sviluppatore.

## Durata indicativa

45-60 minuti.

Massimo operativo: 75 minuti.

Questo esercizio deve restare operativo e non trasformarsi in una lezione teorica completa su performance engineering.

## Prerequisiti

Prima di iniziare questo esercizio, devono essere stati completati i blocchi precedenti.

Devono quindi essere gia presenti e verificati:

- modulo Ticket generato in modo incrementale
- DTO di request e response
- Repository JPA
- Service
- Controller
- error handling
- review umano vs AI
- esecuzione di ./mvnw test

Nel repository docente questi file non sono presenti di default: vengono generati dagli studenti durante gli esercizi precedenti.

## File coinvolti

- docs/00_Scheda_Base_Corso_Enterprise_AI_Coding.md
- docs/01_AI_Coding_Project_Work_Brief.md
- docs/02_AI_Coding_Safety_Checklist.md
- docs/05_AI_Coding_Engineering_Governance_Checklist.md
- exercises/07_human_vs_ai_code_review.md
- exercises/08_performance_costs_ai_coding.md
- prompts/08_performance_costs_prompt.md
- project/ticket-api/src/main/java/com/example/ticketapi/
- project/ticket-api/pom.xml

## Scenario

Il modulo Ticket e stato generato, collegato, revisionato e verificato.

Prima di passare alla skill personale e al project finale, il team deve analizzare il codice dal punto di vista di:

- performance applicativa
- query e accesso ai dati
- complessita introdotta dall'AI
- costi di manutenzione
- costi di utilizzo degli assistenti AI
- sostenibilita delle scelte tecniche

In questo esercizio non si usano prezzi reali di provider o tariffe aggiornate. L'analisi resta qualitativa e metodologica.

## Principio operativo

Non chiedere all'AI:

```text
Ottimizza tutto il progetto.
```

Chiedere invece una review mirata e controllata:

1. definire il perimetro dell'analisi
2. individuare rischi di performance
3. distinguere problemi reali da ottimizzazioni premature
4. valutare costi di manutenzione e complessita
5. valutare l'uso consapevole degli assistenti AI
6. decidere quali miglioramenti sono davvero necessari

## Task 1 - Definire il perimetro dell'analisi

Prima di usare Copilot o Claude, scegli cosa analizzare.

Perimetro consigliato:

- TicketService
- TicketRepository
- TicketController
- eventuale mapper
- configurazione applicativa
- test esistenti

Non analizzare tutto il progetto in modo generico.

Domande guida:

- quali parti possono influire sulle performance?
- quali parti possono generare query inutili o ripetute?
- quali parti sono semplici e non richiedono ottimizzazione?
- quali scelte aumentano la manutenzione futura?
- quali parti sono state suggerite dall'AI senza motivazione sufficiente?

## Task 2 - Prompt per review performance

Scrivi un prompt strutturato per chiedere a Copilot o Claude una review mirata sulle performance.

Il prompt deve chiedere di valutare:

- accesso ai dati
- uso del Repository
- eventuali query non necessarie
- complessita del Service
- mapping DTO/Entity
- gestione degli errori
- dipendenze non necessarie
- test mancanti
- ottimizzazioni premature

Schema del prompt:

```text
Ruolo:
Contesto:
Perimetro dell'analisi:
Classi da analizzare:
Aspetti performance da controllare:
Vincoli:
Cosa non fare:
Output atteso:
Verifiche richieste:
```

## Task 3 - Distinguere performance reale e ottimizzazione prematura

Dopo la review AI, classifica ogni suggerimento in una delle seguenti categorie:

- problema reale da correggere
- rischio da monitorare
- ottimizzazione prematura
- suggerimento non necessario
- scelta accettabile nel contesto didattico
- punto da verificare con test o misurazioni

Domande guida:

- il problema e realmente presente nel codice?
- l'AI sta ipotizzando un problema senza evidenza?
- il miglioramento aumenta la complessita?
- il miglioramento e utile per un progetto didattico?
- la modifica richiede test aggiuntivi?
- la modifica e comprensibile per sviluppatori junior/intermedi?

## Task 4 - Costi tecnici e manutenzione

Analizza i costi tecnici delle scelte proposte dall'AI.

Per costo non si intende solo costo economico, ma anche:

- complessita del codice
- tempo di manutenzione
- dipendenze aggiunte
- difficolta di test
- difficolta di spiegazione in aula
- rischio di overengineering

Scrivi una breve valutazione per almeno tre scelte tecniche emerse nel modulo Ticket.

Esempio di struttura:

```text
Scelta tecnica:
Beneficio:
Costo tecnico:
Rischio:
Decisione:
Motivazione:
```

## Task 5 - Costi di utilizzo degli assistenti AI

Rifletti sull'uso degli assistenti AI durante lo sviluppo.

Valuta:

- quante richieste sono state necessarie per generare una soluzione accettabile
- quante richieste sono state usate per review e correzioni
- quante risposte AI sono state scartate
- quanto tempo umano e stato necessario per verificare gli output
- quali prompt hanno ridotto iterazioni inutili
- quali prompt hanno prodotto output troppo generici

Non usare tariffe reali o stime economiche aggiornate.

L'obiettivo e ragionare sul costo operativo del processo AI-assisted, non calcolare un prezzo commerciale.

## Task 6 - Prompt per review cost-aware

Scrivi un prompt per chiedere all'AI una review orientata a costi e sostenibilita.

Il prompt deve chiedere di:

- evitare refactoring non necessari
- segnalare complessita non giustificata
- distinguere miglioramenti utili da preferenze stilistiche
- indicare quali modifiche hanno impatto reale
- indicare quali modifiche aumentano manutenzione
- proporre solo interventi proporzionati al progetto

## Task 7 - Decisione finale

Produci una tabella di decisione con almeno cinque punti emersi dalla review.

Per ogni punto indica:

- suggerimento AI
- categoria
- decisione umana
- motivazione
- verifica richiesta

Categorie consigliate:

- accettare
- modificare
- rimandare
- rifiutare
- verificare con test

## Task 8 - Verifica tecnica

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

1. prompts/08_performance_costs_prompt.md
2. review AI sulle performance
3. classificazione dei suggerimenti ricevuti
4. analisi dei costi tecnici di almeno tre scelte
5. riflessione sui costi operativi dell'uso degli assistenti AI
6. tabella decisionale finale
7. esecuzione di ./mvnw test dopo eventuali modifiche
8. nota finale su cosa e stato accettato, rimandato o rifiutato

Il file prompts/08_performance_costs_prompt.md deve contenere:

- prompt per review performance
- prompt per review cost-aware
- schema di classificazione dei suggerimenti AI
- schema decisionale finale
- nota sui limiti dell'analisi senza misurazioni reali

## Criteri di valutazione / autoverifica

- [ ] Ho definito un perimetro chiaro per l'analisi
- [ ] Non ho chiesto all'AI di ottimizzare tutto il progetto
- [ ] Ho distinto problemi reali e ottimizzazioni premature
- [ ] Ho valutato i costi tecnici delle modifiche proposte
- [ ] Ho valutato il costo operativo dell'uso degli assistenti AI
- [ ] Ho evitato refactoring non necessari
- [ ] Ho motivato le decisioni accettate o rifiutate
- [ ] Ho indicato cosa richiede test o misurazioni
- [ ] ./mvnw test e stato eseguito dopo eventuali modifiche
- [ ] Ho mantenuto il focus sul metodo Enterprise AI Coding

## Errori comuni da evitare

- Chiedere all'AI di ottimizzare tutto senza perimetro
- Accettare ogni suggerimento come miglioramento reale
- Confondere performance con complessita
- Introdurre caching, async o librerie non necessarie senza motivo
- Aggiungere dipendenze solo per seguire un suggerimento AI
- Ottimizzare codice che non presenta problemi reali
- Ignorare il costo di manutenzione
- Ignorare il tempo umano di verifica
- Usare tariffe reali non verificate o non aggiornate
- Non rieseguire i test dopo modifiche

## Checkpoint docente

Durante il confronto in aula, verificare che i partecipanti abbiano capito questi tre punti:

1. performance e costi devono essere valutati con perimetro, evidenze e proporzionalita
2. l'AI puo suggerire miglioramenti, ma puo anche proporre ottimizzazioni premature o complessita inutile
3. il costo dell'AI Coding include anche iterazioni, verifica umana, manutenzione e decisioni tecniche motivate
