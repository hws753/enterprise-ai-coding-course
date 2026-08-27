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
- skill personale documentata (skills.sh);
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
- Skill personale documentata (skills.sh)
- Libreria di prompt strutturati
- Checklist sicurezza AI coding

## Convenzione terminologica

Convenzione terminologica: nel progetto, "Blocco" indica una macro-area tematica del sillabus ufficiale; "Sessione" indica un incontro didattico da 4 ore; "Fase" indica un segmento temporale interno a una Sessione; "Modulo" indica un componente software/applicativo del project work, ad esempio il Modulo Ticket. Nei nuovi materiali evitare l'uso di "Modulo N" come sinonimo di "Sessione N".

## Budget orario del corso

Il corso ha una durata complessiva dichiarata di 24 ore.

Questa sezione serve a controllare la densita didattica del percorso, evitando che gli esercizi pratici occupino tutto il tempo disponibile e lascino poco spazio a teoria, confronto, project finale e deliverable.

### Stima storica degli esercizi prodotti nella fase iniziale

| Area | Esercizi | Durata indicativa |
| --- | --- | --- |
| Blocco 1 - Foundations & Sicurezza | Esercizi 1, 2, 3 | 135-180 min |
| Blocco 2 - Generazione, persistenza, pipeline | Esercizi 4, 5, 6 | 195-240 min |
| Totale esercizi 1-6 |  | 330-420 min, cioe 5,5-7 ore |

Questa stima documenta una fase iniziale della progettazione e non rappresenta il timing operativo definitivo del corso. La scansione temporale attuale e consolidata nei 6 outline di Sessione e in docs/09_Guida_Docente_Erogazione_Corso.md, dove ogni Sessione e verificata su 240 minuti complessivi.

### Budget operativo sulle 24 ore

Formato interno adottato: 24 ore totali, ripartite in 6 sessioni da 4 ore ciascuna.

| Sessione | Blocco collegato | Titolo | Durata |
| --- | --- | --- | --- |
| Sessione 1 | Blocco 1 | Setup e prompt engineering | 4 ore |
| Sessione 2 | Blocco 1 | Sicurezza, Prompt Injection e Data Leakage | 4 ore |
| Sessione 3 | Blocco 1 | Design Pattern e integrazione assistita in progetti esistenti | 4 ore |
| Sessione 4 | Blocco 2 | Generazione assistita di moduli applicativi e persistenza | 4 ore |
| Sessione 5 | Blocco 2 | Pipeline dati, error handling e code review umano vs AI | 4 ore |
| Sessione 6 | Blocco 3 | Performance, costi, skills.sh, project finale e chiusura | 4 ore |
| **Totale** | | | **24 ore** |

| Blocco | Sessioni | Durata |
| --- | --- | --- |
| Blocco 1 - AI Coding Foundations & Sicurezza | Sessioni 1-3 | 12 ore |
| Blocco 2 - Engineering e Integrazione & Governance | Sessioni 4-5 | 8 ore |
| Blocco 3 - Performance, Costi, Skills | Sessione 6 | 4 ore |
| **Totale** | 6 sessioni | **24 ore** |

Project finale, deliverable, buffer e Q&A non sono segmenti orari separati: sono attivita integrate all'interno delle singole sessioni. Ogni sessione da 4 ore include gia una propria fase di confronto/Q&A al proprio interno (come mostrato negli outline delle 6 Sessioni), e il project finale e trattato all'interno della Sessione 6.

Questa ripartizione e una scelta didattica interna del repository: il sillabus ufficiale conferma 24 ore totali e i tre blocchi tematici, ma non assegna esplicitamente una durata in ore a ciascun blocco o sessione.

### Decisioni di gestione della densita

- L'Esercizio 6 e un esercizio ricco: alcune parti possono essere trattate come avanzate o opzionali.
- Il GlobalExceptionHandler esteso puo diventare un task avanzato per chi conclude prima.
- L'Esercizio 7 deve restare focalizzato sulla code review umano vs AI, senza trasformarsi in revisione completa di tutto il progetto.
- Il Blocco 3 deve restare concreto: performance, costi, skill personale e project finale.
- Ogni esercizio deve produrre valore didattico, ma non deve assorbire tutto il tempo disponibile.

## Nota su skills.sh

Il sillabus ufficiale richiede la skill personale documentata come skills.sh.

Nel repository, skills.sh e il deliverable obbligatorio della skill personale richiesto esplicitamente dal sillabus; skills.md e il file Markdown riutilizzabile adottato internamente dal progetto e affianca skills.sh senza sostituirlo.

## Decisioni ancora da verificare

- I partecipanti conoscono Java/Spring?
- Hanno accesso a GitHub Copilot?
- Hanno accesso a Claude?
- Possono usare GitHub e Codespaces?
- Ci sono restrizioni aziendali su AI, codice o dati?
