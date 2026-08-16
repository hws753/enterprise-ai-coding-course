# Enterprise AI Coding Course

Materiale didattico per il corso Enterprise AI Coding.

Il repository raccoglie esercitazioni, checklist, outline per slide, prompt di riferimento docente e materiali di supporto per un percorso pratico di AI-assisted coding orientato a contesti enterprise.

## Obiettivo del corso

Il corso mostra come usare strumenti di AI Coding, come GitHub Copilot o Claude, in modo controllato, sicuro e verificabile.

Il focus non e imparare un framework da zero, ma sviluppare un metodo di lavoro che integri:

- prompt engineering applicato allo sviluppo software
- sicurezza e prevenzione del data leakage
- generazione assistita di codice
- review umano vs AI
- governance tecnica
- performance e costi
- skill personale riutilizzabile
- project work finale

## Sillabus di riferimento

Il percorso e organizzato in tre blocchi principali:

1. AI Coding Foundations & Sicurezza
2. Engineering e Integrazione & Governance
3. Performance, Costi, Skills

## Stack didattico scelto

Per rendere operativo il corso e stato scelto un project work basato su:

- Java 21
- Spring Boot
- Maven
- Spring Data JPA
- H2 Database
- JUnit
- Visual Studio Code
- GitHub Codespaces
- GitHub Copilot o Claude

Lo stack Java/Spring Boot e usato come contesto applicativo per esercitare l'AI Coding, non come oggetto teorico principale del corso.

## Project work

Il project work progressivo e una Ticket Management API.

Durante il corso i partecipanti lavorano in modo incrementale su:

- struttura del modulo Ticket
- Entity ed Enum
- DTO di request e response
- Repository JPA
- Service
- Controller
- error handling
- review del codice
- performance e costi
- skill personale
- project finale

## Struttura del repository

- docs/: documentazione didattica, checklist, outline slide e guide docente
- docs/reference_prompts/: esempi di prompt strutturati per docente/progettista
- exercises/: esercitazioni progressive del corso
- prompts/: spazio di lavoro dei partecipanti per la propria prompt library
- project/ticket-api/: project work applicativo usato durante le esercitazioni

## Esercitazioni

Blocco 1 - AI Coding Foundations & Sicurezza:

- Esercizio 01 - Prompt engineering per AI Coding
- Esercizio 02 - Data leakage e prompt injection
- Esercizio 03 - Design pattern e refactoring assistito

Blocco 2 - Engineering e Integrazione & Governance:

- Esercizio 04 - Generazione assistita modulo Ticket
- Esercizio 05 - Repository, DTO e persistenza
- Esercizio 06 - Pipeline dati ed error handling
- Esercizio 07 - Code review umano vs AI

Blocco 3 - Performance, Costi, Skills:

- Esercizio 08 - Performance e costi nell'AI Coding
- Esercizio 09 - Skill personale e skills.sh
- Esercizio 10 - Project finale: applicativo + skill

## Prompt Library

Il corso prevede una libreria di prompt strutturati.

Nel repository sono presenti due aree distinte:

- docs/reference_prompts/: esempi di riferimento per docente/progettista
- prompts/: spazio di lavoro degli studenti

I reference prompt non sostituiscono il lavoro dei partecipanti. Servono come esempi di qualità, confronto e supporto alla conduzione didattica.

## Skill personale

Il percorso prevede la produzione di una skill personale composta da:

- skills.md: documento principale, leggibile e riutilizzabile
- skills.sh: script minimo obbligatorio, sicuro e non distruttivo

La skill deve aiutare l'assistente AI a rispettare contesto, vincoli, sicurezza, review umana, test e governance tecnica.

## Sicurezza e governance

Durante tutto il corso valgono alcune regole di base:

- non condividere credenziali, token o chiavi API
- non usare dati reali di clienti o aziende
- non incollare log sensibili senza anonimizzazione
- non accettare codice AI-generated senza review
- non introdurre dipendenze non motivate
- non esporre Entity direttamente nelle API
- non delegare all'AI decisioni tecniche finali

## Uso del repository in aula

Sequenza consigliata:

1. leggere il brief del project work
2. svolgere gli esercizi in ordine progressivo
3. produrre i prompt nella cartella prompts/
4. usare Copilot o Claude per generare o revisionare codice
5. applicare review umana
6. eseguire test o verifiche tecniche
7. documentare decisioni accettate, rifiutate o rimandate
8. consolidare README, skill personale e prompt library nel project finale

## Test del project work

Quando il project work applicativo e disponibile, i test possono essere eseguiti con:

cd project/ticket-api
./mvnw test

Se i test falliscono, non chiedere subito all'AI di correggere tutto. Prima analizzare:

- messaggio di errore
- classe coinvolta
- modifica recente collegata
- causa probabile
- modifica minima necessaria

## Deliverable finali attesi

Al termine del percorso i partecipanti devono produrre:

- repository di progetto con README
- file Markdown riutilizzabile con istruzioni operative
- skill personale documentata con skills.md e skills.sh
- libreria di prompt strutturati
- project work applicativo consolidato
- note sulle decisioni tecniche
- retrospettiva finale sull'uso dell'AI nel processo di sviluppo

## Nota didattica

Questo repository e pensato come materiale di supporto alla docenza.

Gli esempi presenti in docs/reference_prompts/ sono modelli di riferimento per il docente/progettista. Gli studenti devono produrre i propri elaborati nelle cartelle indicate dagli esercizi.
