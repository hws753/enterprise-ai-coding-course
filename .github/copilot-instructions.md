# Copilot Instructions — Enterprise AI Coding Course

Questo repository è usato per preparare e svolgere un corso didattico di 24 ore su Enterprise AI Coding.

## Contesto del corso

Il corso è pratico e rivolto a sviluppatori junior/intermedi o figure IT con basi di programmazione.

Il project work progressivo è:

**Ticket Management API**

## Principio guida del project work

Il project work Ticket Management API è un laboratorio di Enterprise AI Coding.  
Spring Boot è lo stack tecnico usato come contesto, non l’oggetto principale del corso.

Ogni attività sul codice deve servire a mostrare come usare un assistente AI per:

- progettare;
- generare;
- verificare;
- correggere;
- documentare;
- revisionare;
- migliorare codice applicativo in modo sicuro e controllato.

Non trasformare il project work in un corso teorico su Spring Boot.

## Obiettivo didattico

L’obiettivo non è solo creare codice funzionante, ma mostrare un metodo controllato per usare assistenti AI nel ciclo di sviluppo software.

Il codice generato dall’AI deve essere sempre:

- letto;
- compreso;
- verificato;
- testato;
- revisionato;
- documentato.

## Stack tecnico

Usa come riferimento:

- Java 21
- Spring Boot
- Spring Data JPA
- Maven
- JUnit
- H2 Database per demo
- PostgreSQL come possibile alternativa enterprise
- Visual Studio Code
- Git/GitHub

## Regole generali

Quando lavori su questo repository:

- mantieni un taglio didattico;
- privilegia codice semplice, leggibile e spiegabile;
- non usare dati reali, credenziali, token o riferimenti ad aziende reali;
- usa solo esempi fittizi;
- non generare codice inutilmente complesso;
- non introdurre dipendenze non necessarie;
- quando proponi modifiche importanti, spiega prima il piano;
- quando generi codice, segnala anche cosa va verificato manualmente;
- quando modifichi logica applicativa, suggerisci anche test coerenti.

## Architettura applicativa consigliata

Per il project work Ticket Management API mantieni una separazione chiara tra:

- Controller
- Service
- Repository
- Entity
- DTO
- Exception handling
- Test

Evita di inserire logica di business nei controller.

## Convenzioni didattiche

Quando produci materiali Markdown:

- usa titoli chiari;
- preferisci spiegazioni brevi e operative;
- collega ogni concetto al project work;
- inserisci esempi pratici;
- evidenzia errori comuni;
- segnala eventuali rischi di sicurezza;
- distingui sempre tra codice generato dall’AI, codice revisionato e codice da verificare.

## Sicurezza AI Coding

Presta attenzione a:

- prompt injection;
- data leakage;
- esposizione di dati sensibili;
- log con informazioni riservate;
- credenziali nei prompt;
- codice proprietario;
- output AI non verificato;
- gestione insicura degli errori.

Usa sempre dati fittizi negli esempi.

Quando serve, inserisci questa nota:

> Esempio didattico fittizio, non collegato a dati o codice reali.

## Code review

Quando ti viene chiesta una code review, valuta almeno:

- correttezza logica;
- sicurezza;
- leggibilità;
- manutenibilità;
- performance;
- gestione errori;
- test mancanti;
- coerenza con lo stack e con il project work.

Non riscrivere subito il codice se prima è più utile spiegare le criticità.

## Performance e costi

Quando analizzi performance e costi, distingui tra:

- performance del codice generato;
- complessità delle query;
- uso di memoria;
- tempi di risposta;
- costi di licenza degli strumenti AI;
- costi di token/API;
- costo di review umana;
- costo di manutenzione;
- debito tecnico prodotto da codice AI non verificato.

## Deliverable finali del corso

Tieni conto che il corso deve produrre:

- repository di progetto;
- README.md;
- file istruzioni Markdown riutilizzabile;
- skill personale documentata;
- libreria di prompt strutturati;
- checklist sicurezza AI coding;
- project work finale.
