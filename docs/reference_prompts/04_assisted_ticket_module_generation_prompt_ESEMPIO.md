Nota didattica:
Questo file e un esempio di riferimento per docente/progettista.
Non e l'elaborato dello studente.
Durante l'esercizio, il partecipante dovra produrre il proprio file nella cartella prompts/.

# Prompt 04 - Generazione assistita modulo Ticket

## Scopo

Questo prompt serve a guidare Copilot o Claude nella generazione incrementale dei primi componenti del modulo Ticket.

L'obiettivo non e generare tutto il backend in una sola risposta, ma costruire il modulo in fasi controllate, verificabili e coerenti con il project work Ticket Management API.

## Contesto

Corso: Enterprise AI Coding
Project work: Ticket Management API
Stack: Java 21, Spring Boot, Maven, JPA/H2
Tema: generazione assistita di moduli applicativi

## Prompt strutturato

Ruolo:
Agisci come assistente AI per sviluppo Java/Spring Boot in un contesto enterprise didattico.

Contesto:
Sto lavorando al project work Ticket Management API.
Il progetto usa Java 21, Spring Boot, Maven, Spring Data JPA e H2 per ambiente dimostrativo.
Il focus del corso e usare l'AI per generare codice in modo incrementale, sicuro, revisionabile e documentato.

Obiettivo:
Aiutami a generare il modulo Ticket in modo incrementale.

Fase 1:
Proponi solo gli Enum TicketStatus e TicketPriority.
Non generare ancora la Entity.
Dopo la proposta degli Enum, fermati e attendi review umana.

Fase 2:
Solo dopo conferma esplicita, proponi la Entity Ticket.
Non generare Controller, Service, Repository, DTO o mapper in questa fase.

Modello concettuale:
Il Ticket deve includere almeno:
- id
- title
- description
- status
- priority
- createdAt
- updatedAt

Convenzione:
Nel brief didattico alcuni campi possono essere descritti in italiano, ma nel codice Java usare nomi inglesi coerenti con le convenzioni tecniche del progetto.

Vincoli per la Entity:
- usare JPA standard
- gestire createdAt con @PrePersist
- gestire updatedAt con @PreUpdate
- non usare Spring Data Auditing
- non aggiungere dipendenze al pom.xml
- non usare Lombok
- non usare MapStruct
- non usare ModelMapper
- mantenere codice semplice e leggibile per sviluppatori junior/intermedi

Output atteso per la Fase 1:
1. proposta di TicketStatus
2. proposta di TicketPriority
3. spiegazione sintetica delle scelte
4. punti da verificare manualmente
5. richiesta esplicita di conferma prima della Entity

Output atteso per la Fase 2:
1. proposta della Entity Ticket
2. spiegazione delle annotazioni JPA usate
3. gestione di createdAt e updatedAt con @PrePersist e @PreUpdate
4. rischi o punti da verificare
5. controlli tecnici consigliati

Cosa non fare:
- non generare tutta l'applicazione
- non generare Controller, Service, Repository o DTO senza richiesta esplicita
- non aggiungere librerie non richieste
- non introdurre configurazioni enterprise non necessarie
- non inserire credenziali, token, URL reali o dati sensibili
- non esporre Entity direttamente verso l'esterno

## Controlli umani necessari

Dopo la Fase 1, verificare:

- gli Enum sono semplici e coerenti
- i valori sono adatti al contesto didattico
- non sono state aggiunte dipendenze
- la risposta AI non ha generato componenti non richiesti

Dopo la Fase 2, verificare:

- la Entity usa correttamente TicketStatus e TicketPriority
- i nomi dei campi sono coerenti con la convenzione del progetto
- createdAt e updatedAt sono gestiti con @PrePersist e @PreUpdate
- non e stato introdotto Spring Data Auditing
- non sono state introdotte dipendenze non richieste
- il codice e leggibile
- il codice non contiene dati reali

## Decisione finale

Dopo la review umana, classificare la proposta AI come:

- accettare
- modificare
- rifiutare
- rimandare
- verificare con test

Motivare sempre la decisione prima di procedere al componente successivo.
