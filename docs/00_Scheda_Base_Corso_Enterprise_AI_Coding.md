# Scheda base corso — Enterprise AI Coding

## Stato

Documento di lavoro — in aggiornamento

## Titolo

Enterprise AI Coding

## Durata

24 ore

## Fonte di riferimento

Programma ufficiale Enterprise AI Coding.

Il programma prevede:

- Visual Studio Code + assistente AI, GitHub Copilot o Claude;
- AI Coding Foundations & Sicurezza;
- Engineering e Integrazione & Governance;
- Performance, Costi, Skills;
- repository di progetto con README;
- file istruzioni Markdown riutilizzabile;
- skill personale documentata;
- libreria di prompt strutturati.

## Target

Sviluppatori junior/intermedi o figure IT con basi di programmazione.

## Prerequisiti

- Basi di programmazione
- Uso base di Git
- Concetti base di API REST
- Concetti base di database relazionali
- Familiarità con un IDE/editor

## Stack tecnico scelto

Stack di lavoro per il project work:

- Java 21
- Spring Boot
- Spring Data JPA
- Maven
- JUnit
- H2 Database per demo
- PostgreSQL come alternativa enterprise
- Visual Studio Code
- Git/GitHub
- GitHub Codespaces

## Strumenti in aula

- Visual Studio Code
- GitHub Copilot
- Claude come supporto/confronto

## Strumenti per preparazione docente

- ChatGPT
- Claude
- NotebookLM
- Gemini

## Project work progressivo

Ticket Management API

## Principio guida del project work

Il project work Ticket Management API è un laboratorio di Enterprise AI Coding.  
Spring Boot è lo stack tecnico usato come contesto, non l’oggetto principale del corso.

Il focus didattico non è insegnare Spring Boot da zero, ma mostrare come usare GitHub Copilot e Claude per sviluppare, verificare, revisionare e documentare codice in modo sicuro e governato.

Ogni attività sul codice deve quindi essere collegata a uno o più aspetti del programma:

- prompt engineering avanzato;
- prompt injection e data leakage;
- generazione assistita di moduli applicativi;
- integrazione database e persistenza;
- pipeline dati ed error handling aziendale;
- code review umano vs AI;
- performance e costi;
- skill personale;
- libreria di prompt strutturati.

## Funzionalità minime del project work

- Creazione ticket
- Lettura ticket
- Aggiornamento stato ticket
- Ricerca ticket
- Persistenza su database
- Validazione input
- Error handling
- Code review AI + umana
- README finale
- Prompt library
- Skill personale

## Deliverable finali

- Repository di progetto
- README.md
- File istruzioni Markdown
- Skill personale documentata
- Libreria di prompt strutturati
- Checklist sicurezza AI coding

## Budget orario del corso

Il corso ha una durata complessiva dichiarata di 24 ore.

Questa sezione serve a controllare la densita didattica del percorso, evitando che gli esercizi pratici occupino tutto il tempo disponibile e lascino poco spazio a teoria, confronto, project finale e deliverable.

### Stima esercizi prodotti finora

| Area | Esercizi | Durata indicativa |
| --- | --- | --- |
| Blocco 1 - Foundations & Sicurezza | Esercizi 1, 2, 3 | 135-180 min |
| Blocco 2 - Generazione, persistenza, pipeline | Esercizi 4, 5, 6 | 195-240 min |
| Totale esercizi 1-6 |  | 330-420 min, cioe 5,5-7 ore |

L'Esercizio 7, dedicato alla code review umano vs AI, dovra essere piu snello rispetto all'Esercizio 6.

Durata target Esercizio 7:

- 45-60 minuti
- massimo operativo: 75 minuti

Stima esercizi 1-7:

- durata ordinaria: circa 6,25-8 ore
- durata massima operativa: circa 8,25 ore

### Budget operativo sulle 24 ore

| Area del corso | Budget orientativo | Nota |
| --- | --- | --- |
| Blocco 1 - metodo, sicurezza, prompt, design pattern | 6 ore | Include teoria, esercizi e confronto |
| Blocco 2 - engineering, persistenza, pipeline, code review | 8 ore | Include esercizi 4-7 e review guidata |
| Blocco 3 - performance, costi, skills | 4 ore | Da mantenere operativo e non sovraccaricato |
| Project finale e deliverable | 4 ore | Applicativo, prompt library, README, skill personale |
| Buffer, Q&A e riallineamenti | 2 ore | Margine per ritardi, setup o discussione |
| Totale | 24 ore | Budget da verificare durante la progettazione finale |

### Decisioni di gestione della densita

- L'Esercizio 6 e un esercizio ricco: alcune parti possono essere trattate come avanzate o opzionali.
- Il GlobalExceptionHandler esteso puo diventare un task avanzato per chi conclude prima.
- L'Esercizio 7 deve restare focalizzato sulla code review umano vs AI, senza trasformarsi in revisione completa di tutto il progetto.
- Il Blocco 3 deve restare concreto: performance, costi, skill personale e project finale.
- Ogni esercizio deve produrre valore didattico, ma non deve assorbire tutto il tempo disponibile.
- Il budget orario dovra essere ricontrollato dopo la produzione dell'Esercizio 7 e prima dell'avvio del Blocco 3.

## Nota su skills.sh

Nel programma originale compare il riferimento a skills.sh.

Per chiarezza didattica useremo come ipotesi di lavoro il formato skills.md, salvo richiesta esplicita del committente di mantenere o affiancare un file skills.sh eseguibile.

## Decisioni ancora da verificare

- I partecipanti conoscono Java/Spring?
- Hanno accesso a GitHub Copilot?
- Hanno accesso a Claude?
- Possono usare GitHub e Codespaces?
- Ci sono restrizioni aziendali su AI, codice o dati?
- Il deliverable finale deve essere skills.sh, skills.md o entrambi?
