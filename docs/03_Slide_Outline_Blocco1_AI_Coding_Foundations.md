# Slide outline - Blocco 1 - AI Coding Foundations & Sicurezza

## Stato

Documento di lavoro - raccolta progressiva dei punti da trasformare in slide.

## Scopo del file

Questo file raccoglie i nuclei teorici, le scelte didattiche e i messaggi chiave emersi dai materiali del Blocco 1.

Non e ancora una presentazione definitiva.

Servira piu avanti per costruire le slide del corso, mantenendo coerenza tra:

- sillabus ufficiale
- repository GitHub
- esercitazioni
- project work Ticket Management API
- metodo Enterprise AI Coding

## Fonti gia analizzate

- exercises/01_prompt_engineering_ai_coding.md

## Blocco 1 - Obiettivo generale

Il Blocco 1 introduce il metodo di lavoro dell'Enterprise AI Coding prima della generazione di codice applicativo.

Il focus non e usare l'AI per produrre codice velocemente, ma imparare a guidare, vincolare, verificare e documentare il lavoro svolto con Copilot o Claude.

## Sezione slide 1 - Perche partire dal prompt engineering

Messaggio chiave:

Prima di generare codice con l'AI, bisogna imparare a formulare richieste tecniche chiare, contestualizzate e verificabili.

Punti da spiegare:

- un prompt tecnico generico produce output generici
- l'AI non conosce automaticamente il contesto del progetto
- il contesto va reso esplicito
- i vincoli architetturali vanno dichiarati
- l'output atteso va definito prima
- la review preventiva riduce errori e overengineering

Esempio di prompt debole da mostrare:

Crea un modulo Ticket in Spring Boot.

Perche e debole:

- non specifica il ruolo dell'assistente
- non descrive il project work
- non indica vincoli architetturali
- non distingue piano, codice e review
- non chiarisce cosa non deve essere generato
- non chiede verifiche manuali
- rischia di trasformare il corso in un esercizio Spring Boot invece che AI Coding

## Sezione slide 2 - Struttura di un prompt tecnico efficace

Elementi da introdurre:

- Ruolo
- Contesto
- Obiettivo
- Stack tecnico
- Vincoli
- Output atteso
- Casi limite
- Cosa non fare
- Verifiche richieste

Messaggio chiave:

Un prompt efficace non chiede solo una soluzione, ma definisce il perimetro entro cui l'AI deve lavorare.

## Sezione slide 3 - Prompt engineering come controllo del processo

Punti da spiegare:

- il prompt non serve solo a generare codice
- il prompt serve anche a far analizzare un problema
- il prompt serve a far proporre un piano
- il prompt serve a far fare una review preventiva
- il prompt serve a rendere tracciabili le decisioni

Messaggio chiave:

Nel corso, l'AI non viene usata solo come generatore di codice, ma come assistente tecnico da guidare e verificare.

## Sezione slide 4 - Review preventiva

Punti da spiegare:

- prima di scrivere codice si puo chiedere all'AI di valutare il piano
- la review preventiva aiuta a individuare componenti mancanti
- puo far emergere rischi di overengineering
- puo evidenziare rischi di sicurezza
- non sostituisce il controllo umano

Messaggio chiave:

La review non arriva solo dopo il codice. Nel metodo AI Coding puo arrivare anche prima, sul piano di lavoro.

## Sezione slide 5 - Controllo umano

Punti da spiegare:

- l'AI puo proporre struttura e codice
- lo sviluppatore deve leggere e capire l'output
- lo sviluppatore deve verificare vincoli, sicurezza e test
- nessun output AI va accettato automaticamente

Messaggio chiave:

Il controllo umano resta obbligatorio prima di accettare qualsiasi output generato dall'AI.

## Collegamento al project work

La Ticket Management API viene usata come contesto concreto.

In questa fase non si genera ancora codice applicativo.

Si preparano invece i prompt che, nelle fasi successive, guideranno Copilot o Claude nella generazione controllata del modulo Ticket.

## Da completare dopo la lettura degli altri file

- esercizio 2: data leakage e prompt injection
- esercizio 3: design pattern e refactoring assistito
- checklist finale del Blocco 1
