# Slide outline - Blocco 2 - Engineering e Integrazione & Governance

## Stato

Documento di lavoro - raccolta progressiva dei punti da trasformare in slide.

## Scopo del file

Questo file raccoglie i nuclei teorici, le scelte didattiche e i messaggi chiave emersi dai materiali del Blocco 2.

Non e ancora una presentazione definitiva.

Servira piu avanti per costruire le slide del corso, mantenendo coerenza tra:

- sillabus ufficiale
- repository GitHub
- esercitazioni
- project work Ticket Management API
- metodo Enterprise AI Coding

## Fonti gia analizzate

- exercises/04_assisted_ticket_module_generation.md

## Blocco 2 - Obiettivo generale

Il Blocco 2 porta il metodo costruito nel Blocco 1 dentro la produzione controllata di codice applicativo.

Il focus non e usare l'AI per generare rapidamente un'intera applicazione, ma imparare a guidare Copilot o Claude nella generazione incrementale, verificabile e documentata dei componenti del project work.

## Sezione slide 1 - Dal prompt al codice applicativo

Messaggio chiave:

Nel Blocco 2 si passa dalla progettazione del prompt alla generazione assistita di componenti reali, mantenendo il controllo umano.

Punti da spiegare:

- il Blocco 1 ha preparato metodo, sicurezza e controllo
- il Blocco 2 applica quel metodo al codice
- la Ticket Management API diventa il laboratorio tecnico
- Spring Boot resta il contesto, non l'oggetto principale del corso
- Copilot o Claude vengono usati come assistenti, non come sostituti dello sviluppatore

## Sezione slide 2 - Generazione assistita incrementale

Messaggio chiave:

Non bisogna chiedere all'AI di generare tutta l'applicazione in una sola richiesta.

Punti da spiegare:

- la generazione monolitica riduce il controllo
- generare troppi file insieme rende piu difficile la review
- la generazione incrementale permette di verificare ogni passaggio
- ogni output deve essere letto prima di essere accettato
- ogni modifica deve essere collegata al brief e alla checklist di sicurezza

Esempio di scelta didattica:

Nell'Esercizio 4 si generano prima TicketStatus e TicketPriority, poi l'Entity Ticket.

## Sezione slide 3 - Ciclo operativo AI Coding

Messaggio chiave:

Ogni componente generato con l'AI deve seguire un ciclo controllato.

Ciclo operativo:

1. chiedere all'AI un piano breve
2. generare un componente o un piccolo gruppo coerente
3. leggere il codice prodotto
4. verificare architettura, sicurezza e coerenza
5. eseguire test o build quando possibile
6. documentare cosa e stato accettato, modificato o scartato

Punti da spiegare:

- il piano viene prima del codice
- la lettura del codice e obbligatoria
- i test fanno parte del processo
- la documentazione serve a rendere tracciabile il lavoro svolto con l'AI

## Sezione slide 4 - Ordine di generazione del modulo Ticket

Messaggio chiave:

L'ordine di generazione influenza la qualita e la controllabilita del lavoro.

Ordine consigliato nel modulo completo:

- Enum TicketStatus e TicketPriority
- Entity Ticket
- DTO di request e response
- Repository
- Service
- Controller
- gestione errori
- test

Punti da spiegare:

- gli Enum definiscono valori controllati
- l'Entity usa gli Enum gia verificati
- DTO, Repository, Service e Controller verranno affrontati progressivamente
- test ed error handling non sono elementi opzionali

## Sezione slide 5 - Review del codice generato

Messaggio chiave:

La review AI e un supporto, non una validazione definitiva.

Punti da spiegare:

- l'AI puo aiutare a controllare correttezza logica
- l'AI puo segnalare problemi di leggibilita
- l'AI puo evidenziare rischi di sicurezza
- l'AI puo suggerire test mancanti
- la validazione finale resta umana
- il codice non va accettato solo perche compila

## Sezione slide 6 - Verifica tecnica e test

Messaggio chiave:

Ogni modifica al codice deve essere verificata tecnicamente.

Comando previsto nell'esercizio:

```bash
cd project/ticket-api
./mvnw test
```

Punti da spiegare:

- i test non sono una fase opzionale
- se la build fallisce non bisogna chiedere subito all'AI di correggere tutto
- prima bisogna leggere il messaggio di errore
- bisogna individuare file coinvolto, causa probabile e modifica minima necessaria

## Sezione slide 7 - Errori da evitare nella generazione assistita

Messaggio chiave:

Usare l'AI per generare codice richiede disciplina tecnica.

Errori da discutere:

- chiedere all'AI di creare tutto il modulo in una sola risposta
- generare troppe classi insieme senza review intermedia
- accettare codice solo perche compila
- non leggere il codice generato
- inserire logica di business nel Controller
- inserire logica applicativa eccessiva nell'Entity
- non chiedere test coerenti
- non eseguire la build dopo le modifiche
- trattare la review AI come definitiva
- lasciare che Copilot aggiunga dipendenze non richieste

## Sezione slide 8 - Checkpoint docente dell'Esercizio 4

Messaggio chiave:

La generazione assistita deve essere incrementale, verificabile e documentata.

Punti da verificare in aula:

- i partecipanti hanno capito che l'AI accelera, ma non sostituisce progettazione, test e review
- i partecipanti sanno distinguere codice generato, codice revisionato e codice ancora da verificare
- i partecipanti hanno compreso che ogni output AI deve essere letto, compreso, testato e documentato

## Da completare dopo la produzione degli altri materiali del Blocco 2

- esercizio 5: integrazione database e persistenza
- esercizio successivo: pipeline dati ed error handling aziendale
- esercizio successivo: code review umano vs AI
- eventuale checklist di chiusura del Blocco 2
