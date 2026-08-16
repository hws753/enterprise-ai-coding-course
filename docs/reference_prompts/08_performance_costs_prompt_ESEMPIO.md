Nota didattica:
Questo file e un esempio di riferimento per docente/progettista.
Non e l'elaborato dello studente.
Durante l'esercizio, il partecipante dovra produrre il proprio file nella cartella prompts/.

# Prompt 08 - Performance e costi nell'AI Coding

## Scopo

Questo prompt serve a guidare Copilot o Claude in una review mirata su performance, costi tecnici, costi operativi e sostenibilita del codice generato con AI.

L'obiettivo non e ottimizzare tutto il progetto, ma distinguere problemi reali, rischi da monitorare, ottimizzazioni premature e complessita non necessaria.

## Contesto

Corso: Enterprise AI Coding
Project work: Ticket Management API
Stack: Java 21, Spring Boot, Maven, Spring Data JPA, H2
Tema: performance, costi tecnici, costi operativi dell'AI Coding

## Prompt strutturato

Ruolo:
Agisci come assistente AI per review tecnica orientata a performance e sostenibilita in un progetto Java/Spring Boot.

Contesto:
Sto lavorando al project work Ticket Management API.
Il codice e stato generato in parte con assistenza AI e revisionato manualmente.
Voglio analizzare il codice dal punto di vista di performance, costi tecnici, manutenzione e uso consapevole dell'AI.

Perimetro dell'analisi:
Analizza solo i componenti indicati.
Non revisionare tutto il repository.
Se il perimetro e troppo ampio, proponi una sequenza di analisi per priorita.

Componenti da analizzare:
- TicketService
- TicketRepository
- TicketController
- DTO di request e response
- eventuale mapper
- configurazione H2/JPA
- test esistenti

Obiettivo:
Aiutami a individuare problemi reali, rischi da monitorare e ottimizzazioni premature.

Aspetti da verificare:
- accesso ai dati
- uso del Repository
- query non necessarie
- complessita del Service
- mapping DTO/Entity
- gestione degli errori
- dipendenze non necessarie
- test mancanti
- possibili ottimizzazioni premature
- costo di manutenzione delle modifiche proposte

Vincoli:
- non proporre ottimizzazioni senza evidenza
- non proporre caching, async o parallelismo senza motivo
- non aggiungere dipendenze
- non introdurre Lombok, MapStruct o ModelMapper
- non proporre refactoring massivi
- non trasformare codice semplice in codice complesso
- mantenere il progetto comprensibile per sviluppatori junior/intermedi
- distinguere problemi reali da preferenze stilistiche

Output atteso:
1. problemi reali da correggere
2. rischi da monitorare
3. ottimizzazioni premature da evitare
4. suggerimenti non necessari
5. scelte accettabili nel contesto didattico
6. punti da verificare con test o misurazioni
7. costi tecnici delle modifiche proposte
8. parti da verificare manualmente

## Prompt per review cost-aware

Ruolo:
Agisci come assistente AI per valutare il costo tecnico e operativo delle modifiche proposte.

Contesto:
Sto valutando suggerimenti generati dall'AI sul project work Ticket Management API.
Devo decidere quali modifiche accettare, modificare, rimandare o rifiutare.

Valuta ogni suggerimento rispetto a:
- beneficio reale
- costo tecnico
- complessita introdotta
- impatto sulla manutenzione
- impatto sulla testabilita
- impatto sulla spiegabilita in aula
- rischio di overengineering
- proporzionalita rispetto al project work

Output atteso per ogni suggerimento:
- suggerimento AI
- categoria
- beneficio
- costo tecnico
- rischio
- decisione consigliata
- motivazione
- verifica richiesta

Categorie:
- problema reale da correggere
- rischio da monitorare
- ottimizzazione prematura
- suggerimento non necessario
- scelta accettabile nel contesto didattico
- punto da verificare con test o misurazioni

## Verifiche pratiche leggere

Quando proponi verifiche o misurazioni, privilegia controlli semplici e adatti a un corso di 24 ore.

Esempi accettabili:
- leggere i test esistenti
- aggiungere test mirati se mancano casi importanti
- controllare se vengono eseguite query non necessarie
- osservare i log SQL solo in ambiente didattico
- verificare che una modifica non aumenti complessita o dipendenze
- confrontare comportamento prima/dopo con casi semplici

Cosa evitare:
- micro-benchmark non necessari
- tuning prematuro
- strumenti di profiling complessi non previsti dal corso
- misurazioni non spiegabili in aula
- ottimizzazioni non collegate a un problema reale

## Costi operativi dell'AI Coding

Analizza anche il processo di lavoro con l'assistente AI.

Domande guida:
- quante iterazioni sono state necessarie?
- quali prompt hanno prodotto risultati utili?
- quali prompt hanno prodotto risultati troppo generici?
- quante risposte AI sono state scartate?
- quanto tempo umano e stato necessario per verificare gli output?
- quali vincoli hanno ridotto correzioni successive?
- dove l'AI ha accelerato il lavoro?
- dove l'AI ha creato lavoro aggiuntivo?

Vincoli:
- non usare tariffe reali
- non usare prezzi aggiornati di provider
- non calcolare costi commerciali
- ragionare sul costo operativo del processo, non sul prezzo economico

## Decisione finale

Per ogni punto emerso, classificare la decisione come:

- accettare
- modificare
- rifiutare
- rimandare
- verificare con test

Per ogni decisione indicare:

Problema o suggerimento:
Categoria:
Decisione umana:
Motivazione:
Verifica richiesta:

## Controlli umani necessari

Prima di applicare modifiche proposte dall'AI, verificare:

- il problema e realmente presente nel codice
- il suggerimento non aumenta complessita inutile
- la modifica e proporzionata al project work
- la modifica e comprensibile per sviluppatori junior/intermedi
- non sono state introdotte dipendenze non richieste
- non sono state introdotte ottimizzazioni premature
- la modifica e collegata a test o controlli manuali
- la decisione finale e motivata dallo sviluppatore
