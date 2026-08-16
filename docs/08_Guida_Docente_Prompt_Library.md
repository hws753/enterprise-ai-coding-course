# Guida docente - Prompt Library

## Stato

Documento di lavoro - guida docente per l'uso della Prompt Library nel corso Enterprise AI Coding.

## Scopo del documento

Questa guida spiega come usare correttamente le due cartelle dedicate ai prompt:

- docs/reference_prompts/
- prompts/

L'obiettivo e mantenere separati:

- gli esempi di riferimento preparati dal docente/progettista
- gli elaborati prodotti dai partecipanti durante le esercitazioni

## Collegamento con il sillabus

Il sillabus prevede tra i deliverable finali una libreria di prompt strutturati.

Nel repository questa richiesta viene gestita con due livelli:

1. docs/reference_prompts/
   Contiene esempi di riferimento per docente/progettista.

2. prompts/
   Contiene la libreria di prompt prodotta dai partecipanti durante il corso.

## Regola principale

La cartella prompts/ non deve essere precompilata con soluzioni complete.

Deve restare lo spazio di lavoro degli studenti, che durante gli esercizi produrranno i propri prompt strutturati.

La cartella docs/reference_prompts/ contiene invece esempi risolti, utili al docente per:

- mostrare un modello di qualità
- confrontare gli elaborati degli studenti
- guidare la discussione in aula
- recuperare rapidamente un esempio coerente
- preparare eventuali slide o materiali di supporto

## Struttura attesa

docs/reference_prompts/ contiene esempi docente da 01 a 10:

- 01 - Struttura modulo Ticket
- 02 - Debug sicuro e protezione dati
- 03 - Design pattern e refactoring assistito
- 04 - Generazione assistita modulo Ticket
- 05 - Repository, DTO e persistenza
- 06 - Pipeline dati ed error handling
- 07 - Code review umano vs AI
- 08 - Performance e costi
- 09 - Skill personale e skills.sh
- 10 - Project finale: applicativo + skill

prompts/ deve invece contenere i file creati dai partecipanti, secondo le consegne degli esercizi.

## Uso in aula

Sequenza consigliata:

1. Presentare l'obiettivo dell'esercizio
2. Far creare agli studenti il proprio prompt nella cartella prompts/
3. Far usare il prompt con Copilot o Claude
4. Far revisionare criticamente l'output prodotto dall'AI
5. Solo dopo mostrare, se utile, il reference prompt corrispondente
6. Discutere differenze, punti forti e punti deboli
7. Far aggiornare il prompt dello studente

## Cosa evitare

- Non mostrare subito il reference prompt come soluzione iniziale
- Non copiare il reference prompt nella cartella prompts/ al posto del lavoro dello studente
- Non trattare i reference prompt come risposte definitive
- Non usare i prompt senza review umana
- Non trasformare il corso in una semplice esecuzione di prompt precompilati

## Criteri per valutare un prompt prodotto dagli studenti

Un prompt e valido se:

- ha uno scopo chiaro
- definisce il contesto tecnico
- indica il ruolo dell'assistente AI
- specifica input e output attesi
- contiene vincoli tecnici e di sicurezza
- indica cosa l'AI non deve fare
- richiede controlli umani
- resta coerente con il project work Ticket Management API
- non contiene credenziali, token, URL reali o dati sensibili

## Collegamento con il project finale

Nel project finale gli studenti devono organizzare la propria prompt library.

La prompt library finale deve includere almeno prompt relativi a:

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

## Checkpoint docente

Durante la valutazione finale, verificare che i partecipanti abbiano capito questi tre punti:

1. la Prompt Library e un deliverable operativo, non una raccolta casuale di prompt
2. i reference prompt sono esempi docente, non sostituti del lavoro dello studente
3. un buon prompt deve guidare l'AI, ma lasciare allo sviluppatore review, test e decisione finale
