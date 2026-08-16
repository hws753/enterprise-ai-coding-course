Nota didattica:
Questo file e un esempio di riferimento per docente/progettista.
Non e l'elaborato dello studente.
Durante l'esercizio, il partecipante dovra produrre il proprio file nella cartella prompts/.

Nota organizzativa:
I file in docs/reference_prompts/ sono esempi risolti per il docente.
La cartella prompts/ resta lo spazio di lavoro dei partecipanti.

# Prompt 06 - Pipeline dati ed error handling

## Scopo

Questo prompt serve a guidare Copilot o Claude nella costruzione controllata della pipeline applicativa del modulo Ticket.

L'obiettivo non e generare tutto il backend in una sola risposta, ma collegare DTO, Service, Controller, mapping ed error handling in modo incrementale, sicuro e verificabile.

## Contesto

Corso: Enterprise AI Coding
Project work: Ticket Management API
Stack: Java 21, Spring Boot, Maven, Spring Data JPA, H2
Tema: pipeline dati, Service, Controller, mapping DTO/Entity ed error handling aziendale

## Prompt strutturato

Ruolo:
Agisci come assistente AI per sviluppo Java/Spring Boot in un contesto enterprise didattico.

Contesto:
Sto lavorando al project work Ticket Management API.
Sono gia presenti:
- Entity Ticket
- Enum TicketStatus e TicketPriority
- TicketRepository
- CreateTicketRequest
- TicketResponse
- configurazione H2/JPA didattica

Ora voglio costruire la pipeline dati applicativa in modo controllato.

Obiettivo:
Aiutami a collegare request DTO, Controller, Service, Repository, Entity e response DTO, mantenendo separazione delle responsabilita e gestione sicura degli errori.

Fase 1:
Proponi il TicketService con logica applicativa minima.

Il Service deve:
- ricevere dati dal Controller tramite DTO
- usare TicketRepository
- creare o leggere Ticket
- convertire Entity in TicketResponse
- non esporre Entity verso l'esterno
- mantenere logica comprensibile per sviluppatori junior/intermedi

Fase 2:
Solo dopo review umana del Service, proponi il TicketController.

Il Controller deve:
- ricevere request DTO
- delegare al Service
- restituire response DTO
- non contenere logica di business
- non esporre Entity direttamente

Fase 3:
Solo dopo review umana di Service e Controller, proponi l'error handling.

Componenti suggeriti:
- TicketNotFoundException
- ErrorResponse
- GlobalExceptionHandler con RestControllerAdvice

Vincoli architetturali:
- mantenere separazione Controller / Service / Repository / DTO / Entity
- non inserire logica di business nel Controller
- non esporre Entity nelle risposte API
- non duplicare mapping in troppi punti
- motivare eventuale mapper dedicato
- mantenere una soluzione semplice per il contesto didattico

Vincoli tecnici:
- usare Java 21
- usare Spring Boot
- usare Spring Data JPA
- non aggiungere dipendenze non richieste
- non usare Lombok
- non usare MapStruct
- non usare ModelMapper
- non introdurre architetture complesse non necessarie

Vincoli di sicurezza:
- non esporre stack trace
- non esporre dettagli interni del database
- non esporre credenziali, token o URL reali
- non restituire messaggi di errore con informazioni sensibili
- mantenere risposte di errore semplici e coerenti

Output atteso:
1. proposta incrementale del TicketService
2. proposta del TicketController solo dopo conferma
3. proposta dell'error handling solo dopo conferma
4. spiegazione sintetica delle responsabilita
5. rischi o punti da verificare manualmente
6. test o controlli tecnici consigliati

Cosa non fare:
- non generare tutto il backend in una sola risposta
- non riscrivere componenti gia presenti senza motivo
- non introdurre dipendenze non richieste
- non esporre Entity direttamente
- non aggiungere librerie di mapping
- non creare error handling troppo complesso
- non inserire dati reali o dettagli aziendali

## Controlli umani necessari

Dopo la Fase 1, verificare:

- il Service usa il Repository in modo coerente
- il Service contiene la logica applicativa principale
- il mapping Entity/DTO e comprensibile
- non sono state introdotte dipendenze non richieste

Dopo la Fase 2, verificare:

- il Controller delega al Service
- il Controller non contiene logica di business
- il Controller riceve DTO di request
- il Controller restituisce DTO di response
- le Entity non sono esposte direttamente

Dopo la Fase 3, verificare:

- gli errori sono gestiti in modo coerente
- non vengono esposti stack trace
- non vengono esposti dettagli interni del database
- i messaggi di errore sono comprensibili
- la gestione errori resta proporzionata al contesto didattico

## Verifica tecnica consigliata

Dopo eventuali modifiche, eseguire:

cd project/ticket-api
./mvnw test

Se i test falliscono, analizzare prima:
- messaggio di errore
- classe coinvolta
- modifica recente collegata
- causa probabile
- modifica minima necessaria

## Decisione finale

Dopo la review umana, classificare la proposta AI come:

- accettare
- modificare
- rifiutare
- rimandare
- verificare con test

Motivare sempre la decisione prima di procedere alla fase successiva.
