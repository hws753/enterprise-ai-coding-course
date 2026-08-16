Nota didattica:
Questo file e un esempio di riferimento per docente/progettista.
Non e l'elaborato dello studente.
Durante l'esercizio, il partecipante dovra produrre il proprio file nella cartella prompts/.

# Prompt 10 - Project finale: applicativo + skill

## Scopo

Questo prompt serve a guidare Copilot o Claude nella chiusura del project work finale Ticket Management API.

L'obiettivo non e completare tutto il progetto in modo automatico, ma consolidare applicativo, skill personale, README, prompt library, test, rubrica e retrospettiva finale.

Il project finale deve dimostrare un metodo di Enterprise AI Coding governato, non solo quantita di codice generato.

## Contesto

Corso: Enterprise AI Coding
Project work: Ticket Management API
Stack: Java 21, Spring Boot, Maven, Spring Data JPA, H2
Ambiente: GitHub Codespaces
Tema: project finale, applicativo, skill personale, README, prompt library, rubrica finale

## Modalita di utilizzo consigliata

Non usare questo prompt come richiesta unica e monolitica.

Dividere il lavoro in due micro-step:

Micro-step A:
- Fase 1 - Definire il perimetro finale
- Fase 2 - Costruire il backlog minimo
- Fase 3 - Verificare skills.md e skills.sh
- Fase 4 - Completare una sola funzionalita, se necessario
- Fase 5 - Revisionare la modifica proposta

Micro-step B:
- Fase 6 - README finale
- Fase 7 - Prompt library finale
- Fase 8 - Rubrica di valutazione
- Fase 9 - Presentazione finale
- Fase 10 - Retrospettiva finale

Questa divisione serve a evitare risposte troppo lunghe, generiche o difficili da revisionare.

## Prompt strutturato

Ruolo:
Agisci come assistente AI per consolidamento finale di un project work Java/Spring Boot in un corso Enterprise AI Coding.

Contesto:
Sto lavorando al project work Ticket Management API.
Durante il corso ho prodotto componenti applicativi, esercizi, checklist, prompt strutturati, skills.md e skills.sh.
Ora devo preparare il project finale in modo coerente, verificabile e presentabile.

Obiettivo:
Aiutami a chiudere il project finale senza trasformarlo in uno sviluppo troppo grande.

Il risultato finale deve includere:

1. applicativo Ticket Management API consolidato
2. README finale
3. skills.md
4. skills.sh minimo obbligatorio, sicuro e non distruttivo
5. prompt library organizzata
6. test o verifica tecnica
7. rubrica di valutazione
8. checklist finale
9. presentazione o restituzione finale
10. retrospettiva individuale

## Micro-step A - Applicativo, perimetro e skill

### Fase 1 - Definire il perimetro finale

Prima di proporre modifiche, aiutami a definire il perimetro.

Analizza:

- funzionalita gia presenti
- funzionalita incomplete
- funzionalita essenziali per la demo
- funzionalita utili ma rimandabili
- funzionalita fuori scope
- file generati con AI
- file modificati manualmente
- test esistenti
- test mancanti
- rischi di sicurezza o governance ancora aperti

Output atteso:

- elenco delle parti gia pronte
- elenco delle parti da completare
- backlog minimo
- elementi fuori scope
- rischi da controllare
- proposta di priorita

### Fase 2 - Backlog minimo

Costruisci un backlog finale realistico.

Classifica ogni elemento come:

- obbligatorio
- utile
- opzionale
- fuori scope

Elementi da considerare:

- creazione ticket
- lettura ticket per id
- lista ticket
- aggiornamento stato ticket
- ricerca o filtro per stato/priorita
- validazione input
- error handling controllato
- README finale
- prompt library
- skills.md
- skills.sh minimo obbligatorio

Per ogni elemento indica:

- stato attuale
- decisione
- motivazione
- verifica richiesta

### Fase 3 - Usare skills.md e skills.sh

Prima di proporre nuove modifiche, verifica che skills.md e skills.sh siano coerenti.

Controlla skills.md rispetto a:

- scopo della skill
- project work Ticket Management API
- stack Java 21 / Spring Boot
- regole di sicurezza
- regole di generazione incrementale
- regole di review umano vs AI
- regole su performance e costi
- limiti dell'assistente AI
- criteri di accettazione

Controlla skills.sh rispetto a:

- presenza del file
- formato Bash/POSIX semplice
- sicurezza
- assenza di comandi distruttivi
- assenza di credenziali, token o chiavi API
- assenza di invio dati all'esterno
- assenza di installazioni automatiche non richieste
- coerenza con skills.md
- utilita didattica

skills.sh puo:

- stampare il nome della skill
- indicare che skills.md e il documento principale
- ricordare di usare la skill per prompt, review, sicurezza e governance
- eseguire controlli minimi non distruttivi, solo se motivati

skills.sh non deve:

- modificare file senza conferma
- installare dipendenze
- inviare dati all'esterno
- contenere credenziali, token o chiavi API
- automatizzare decisioni tecniche

Output atteso:

- punti corretti
- punti da correggere
- rischi
- modifiche minime consigliate
- decisione finale

### Fase 4 - Completare una sola funzionalita

Se serve completare codice, scegli una sola funzionalita.

Esempi:

- aggiornamento stato ticket
- lista ticket
- ricerca per stato
- filtro per priorita
- miglioramento validazioni
- test di un endpoint esistente

Vincoli:

- non riscrivere tutto il progetto
- non introdurre dipendenze non richieste
- non usare Lombok
- non usare MapStruct
- non usare ModelMapper
- non esporre Entity direttamente
- non esporre stack trace o dettagli interni
- mantenere separazione Controller / Service / Repository / DTO
- proporre modifiche piccole e verificabili

Output atteso:

1. file coinvolti
2. modifica proposta
3. motivazione
4. rischi
5. test o controlli richiesti
6. cosa verificare manualmente

### Fase 5 - Review della modifica

Prima di applicare la modifica, valuta:

- rispetta skills.md?
- rispetta il project work brief?
- e proporzionata?
- introduce complessita non necessaria?
- introduce dipendenze?
- espone dati interni?
- richiede test aggiuntivi?
- e comprensibile per sviluppatori junior/intermedi?

Classifica l'esito come:

- accettare
- modificare
- rifiutare
- rimandare
- verificare con test

## Micro-step B - Documentazione, valutazione e restituzione

### Fase 6 - README finale

Aiutami a preparare o revisionare il README finale.

Il README deve spiegare:

- obiettivo del project work
- stack tecnico
- funzionalita implementate
- come avviare il progetto
- come eseguire i test
- come e stata usata l'AI
- quali prompt sono stati utili
- quali controlli di sicurezza sono stati applicati
- cosa resta da migliorare

Il README non deve contenere:

- credenziali
- token
- URL aziendali reali
- dati sensibili
- dettagli non verificati

### Fase 7 - Prompt library finale

Aiutami a verificare la prompt library finale prodotta dallo studente.

La prompt library deve includere prompt per:

- struttura modulo Ticket
- debug sicuro
- design pattern e refactoring
- generazione assistita modulo Ticket
- Repository, DTO e persistenza
- pipeline dati ed error handling
- code review umano vs AI
- performance e costi
- skill personale
- project finale

Per ogni prompt verifica:

- scopo
- contesto
- input richiesti
- output atteso
- vincoli
- controlli umani necessari

### Fase 8 - Rubrica di valutazione

Valuta il project finale usando una rubrica strutturata.

Per ogni criterio indica:

- evidenza richiesta
- valutazione
- note del docente

Criteri:

1. Perimetro realistico
   Evidenza: backlog minimo con elementi obbligatori, utili, opzionali e fuori scope.

2. Applicativo
   Evidenza: funzionalita implementate e verificabili.

3. Uso dell'AI
   Evidenza: prompt mirati, vincoli chiari, output revisionati.

4. Skill personale
   Evidenza: skills.md completo e skills.sh minimo obbligatorio.

5. Sicurezza
   Evidenza: assenza di credenziali, dati reali e dettagli interni esposti.

6. Review
   Evidenza: review AI affiancata da review umana.

7. Test
   Evidenza: ./mvnw test eseguito o problemi documentati.

8. Documentazione
   Evidenza: README aggiornato e prompt library organizzata.

9. Decisioni tecniche
   Evidenza: scelte accettate, rifiutate o rimandate motivate.

10. Presentazione finale
    Evidenza: restituzione chiara del lavoro svolto e dei limiti.

### Fase 9 - Presentazione finale

Aiutami a preparare una restituzione finale breve.

La presentazione deve coprire:

1. obiettivo del progetto
2. stack e project work
3. uso dell'AI
4. controlli di sicurezza e governance
5. funzionalita completate
6. prompt e skill personale
7. test e verifiche
8. limiti e miglioramenti futuri

### Fase 10 - Retrospettiva finale

Guidami nella retrospettiva individuale.

Domande:

- dove l'AI ha accelerato davvero il lavoro?
- dove l'AI ha prodotto output da correggere?
- quali prompt hanno funzionato meglio?
- quali rischi sono stati piu evidenti?
- quali controlli umani sono stati indispensabili?
- cosa cambierei nel mio modo di usare l'AI per sviluppare codice?
- come userei la skill personale in un nuovo progetto?

## Cosa non fare

- non completare tutto il project finale in un unico passaggio
- non proporre una lista infinita di funzionalita
- non ignorare skills.md
- non considerare skills.sh facoltativo
- non inserire comandi rischiosi in skills.sh
- non accettare modifiche senza review
- non aggiornare README con informazioni non verificate
- non inserire credenziali, token, URL reali o dati sensibili
- non presentare come completato cio che e solo progettato

## Decisione finale

Alla fine, produci una sintesi con:

- cosa e pronto
- cosa e stato completato
- cosa e stato rimandato
- cosa resta fuori scope
- quali verifiche sono state eseguite
- quali decisioni tecniche sono state prese
- quali rischi restano aperti
- se il project finale e presentabile

La decisione finale deve essere motivata dal partecipante, non delegata all'AI.
