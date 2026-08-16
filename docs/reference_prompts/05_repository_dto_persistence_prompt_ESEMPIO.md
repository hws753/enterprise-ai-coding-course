Nota didattica:
Questo file e un esempio di riferimento per docente/progettista.
Non e l'elaborato dello studente.
Durante l'esercizio, il partecipante dovra produrre il proprio file nella cartella prompts/.

Nota organizzativa:
I file in docs/reference_prompts/ sono esempi risolti per il docente.
La cartella prompts/ resta lo spazio di lavoro dei partecipanti.

# Prompt 05 - Repository, DTO e persistenza

## Scopo

Questo prompt serve a guidare Copilot o Claude nella generazione controllata di Repository, DTO e configurazione di persistenza per il modulo Ticket.

L'obiettivo non e generare tutta la pipeline applicativa, ma introdurre persistenza e DTO in modo incrementale, verificabile e coerente con il project work Ticket Management API.

## Contesto

Corso: Enterprise AI Coding
Project work: Ticket Management API
Stack: Java 21, Spring Boot, Maven, Spring Data JPA, H2
Tema: integrazione database, persistenza, DTO e separazione input/output

## Prompt strutturato

Ruolo:
Agisci come assistente AI per sviluppo Java/Spring Boot in un contesto enterprise didattico.

Contesto:
Sto lavorando al project work Ticket Management API.
Sono gia presenti gli Enum TicketStatus e TicketPriority e la Entity Ticket.
Ora voglio introdurre Repository, DTO e configurazione H2/JPA in modo controllato.

Obiettivo:
Aiutami a generare i componenti necessari per gestire la persistenza e separare input/output tramite DTO.

Componenti richiesti:
1. TicketRepository
2. CreateTicketRequest
3. TicketResponse
4. eventuali indicazioni minime per configurazione H2/JPA
5. controlli o test consigliati

Vincoli architetturali:
- il Repository deve estendere JpaRepository
- i DTO devono essere separati dalla Entity
- CreateTicketRequest deve contenere solo i dati necessari alla creazione
- TicketResponse deve esporre solo i dati necessari verso l'esterno
- la Entity non deve essere esposta direttamente nelle risposte API
- il Controller non deve ancora essere generato se non richiesto
- il Service non deve ancora essere generato se non richiesto

Vincoli tecnici:
- usare Java 21
- usare Spring Data JPA
- usare H2 solo come database didattico/dimostrativo
- non aggiungere dipendenze non richieste
- non usare Lombok
- non usare MapStruct
- non usare ModelMapper
- non introdurre query complesse senza necessita

Vincoli di sicurezza:
- non inserire credenziali reali
- non inserire URL aziendali reali
- non inserire dati personali o dati cliente
- non esporre dettagli interni non necessari nei DTO
- non proporre configurazioni enterprise non motivate

Output atteso:
1. proposta di TicketRepository
2. proposta di CreateTicketRequest
3. proposta di TicketResponse
4. spiegazione sintetica delle scelte
5. eventuali metodi repository motivati
6. configurazione H2/JPA solo se necessaria e didattica
7. controlli umani da eseguire

Cosa non fare:
- non generare tutto il backend
- non generare Controller e Service senza richiesta esplicita
- non esporre Entity direttamente verso l'esterno
- non introdurre librerie di mapping
- non creare query complesse non necessarie
- non inserire credenziali, token, URL reali o dati sensibili

## Controlli umani necessari

Prima di accettare la proposta dell'AI, verificare:

- TicketRepository usa Spring Data JPA in modo semplice
- non sono state create implementazioni manuali non richieste
- CreateTicketRequest non contiene campi non necessari
- TicketResponse non espone dettagli interni
- DTO ed Entity restano separati
- non sono state aggiunte dipendenze non richieste
- la configurazione H2/JPA e chiaramente didattica
- non sono presenti credenziali o URL reali
- il codice resta comprensibile per sviluppatori junior/intermedi

## Decisione finale

Dopo la review umana, classificare la proposta AI come:

- accettare
- modificare
- rifiutare
- rimandare
- verificare con test

Motivare sempre la decisione prima di procedere alla pipeline Service/Controller.
