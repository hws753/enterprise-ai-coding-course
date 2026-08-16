Nota didattica:
Questo file e un esempio di riferimento per docente/progettista.
Non e l'elaborato dello studente.
Durante l'esercizio, il partecipante dovra produrre il proprio file nella cartella prompts/.

# Prompt 07 - Code review umano vs AI

## Scopo

Questo prompt serve a guidare Copilot o Claude in una code review mirata del modulo Ticket, distinguendo chiaramente tra supporto AI, verifica umana e decisione tecnica finale.

L'obiettivo non e far approvare il codice dall'AI, ma usare l'AI come supporto alla lettura critica del codice.

## Contesto

Corso: Enterprise AI Coding
Project work: Ticket Management API
Stack: Java 21, Spring Boot, Maven, Spring Data JPA, H2
Tema: code review umano vs AI, governance tecnica, sicurezza e test

## Prompt strutturato

Ruolo:
Agisci come assistente AI per code review tecnica in un progetto Java/Spring Boot.

Contesto:
Sto lavorando al project work Ticket Management API.
Il codice e stato generato in parte con assistenza AI e in parte modificato manualmente.
Voglio una review mirata e verificabile, non una valutazione generica di tutto il progetto.

Perimetro della review:
Analizza solo i componenti indicati.
Non revisionare tutto il repository.

Classi da analizzare:
- TicketService
- TicketController
- GlobalExceptionHandler
- DTO di request e response
- eventuale mapper, se presente

Aspetti da verificare:
- correttezza logica
- separazione Controller / Service / Repository / DTO
- uso corretto dei DTO
- assenza di Entity esposte direttamente verso l'esterno
- gestione errori
- assenza di stack trace o dettagli interni nelle risposte
- assenza di dipendenze non richieste
- test mancanti
- possibili rischi di sicurezza
- parti da verificare manualmente

Vincoli:
- non proporre refactoring massivi
- non modificare architettura senza motivo
- non aggiungere dipendenze
- non introdurre Lombok, MapStruct o ModelMapper
- non considerare la review AI come validazione finale
- distinguere problemi reali, ipotesi e suggerimenti

Output atteso:
1. Problemi certi
2. Rischi potenziali
3. Suggerimenti di miglioramento
4. Test mancanti
5. Parti da verificare manualmente
6. Modifiche da non fare senza conferma umana

Cosa non fare:
- non dire genericamente che il codice va bene
- non inventare problemi non supportati dal codice
- non proporre modifiche non richieste
- non aggiungere dipendenze o pattern senza motivazione
- non suggerire di esporre Entity direttamente
- non trattare preferenze stilistiche come errori certi

## Checklist di review umana

Dopo la review AI, verificare manualmente:

- il Controller delega al Service
- il Controller non contiene logica di business
- il Service usa il Repository in modo coerente
- i DTO sono usati per input e output
- le Entity non sono esposte direttamente
- gli errori restituiti al client non contengono stack trace
- i messaggi di errore non espongono dettagli interni
- non sono state aggiunte dipendenze non richieste
- il codice generato e comprensibile
- i test coprono i casi principali
- le modifiche suggerite dall'AI sono motivate

## Confronto AI vs umano

Classificare ogni punto emerso in una delle seguenti categorie:

- da correggere subito
- da verificare meglio
- da rimandare
- suggerimento non necessario
- falso positivo dell'AI
- rischio non rilevato dall'AI ma individuato dalla review umana

Domande guida:

- l'AI ha individuato problemi reali?
- l'AI ha inventato problemi non presenti?
- l'AI ha ignorato rischi importanti?
- la review umana ha confermato o corretto la review AI?
- quali decisioni finali prende il team?

## Schema decisionale

Per ogni modifica accettata, documentare:

Problema:
Segnalato da:
Decisione:
Motivazione:
Verifica richiesta:

## Limiti della review AI

La review AI non sostituisce:

- lettura umana del codice
- responsabilita tecnica del team
- test automatici
- verifica manuale delle modifiche
- controllo di sicurezza
- decisione finale dello sviluppatore

## Decisione finale

Dopo il confronto tra review AI e review umana, classificare ogni proposta come:

- accettare
- modificare
- rifiutare
- rimandare
- verificare con test

Motivare sempre la decisione prima di applicare modifiche al codice.
