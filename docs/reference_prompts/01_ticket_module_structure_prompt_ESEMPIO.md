Nota didattica:
Questo file e un esempio di riferimento per docente/progettista.
Non e l'elaborato dello studente.
Durante l'esercizio, il partecipante dovra produrre il proprio file nella cartella prompts/.

# Prompt 01 - Struttura modulo Ticket

## Scopo

Questo prompt serve a chiedere a Copilot o Claude una proposta iniziale per strutturare il modulo Ticket del project work Ticket Management API.

L'obiettivo non e generare tutto il codice, ma ottenere una proposta ragionata di struttura, responsabilita e ordine di lavoro.

## Contesto

Corso: Enterprise AI Coding  
Project work: Ticket Management API  
Stack: Java 21, Spring Boot, Maven, JPA/H2  
Target: sviluppatori junior/intermedi

## Prompt strutturato

Ruolo:
Agisci come assistente AI per sviluppo enterprise Java/Spring Boot.

Contesto:
Sto lavorando al project work Ticket Management API per un corso Enterprise AI Coding.
Il focus non e imparare Spring Boot da zero, ma usare l'AI per progettare, generare, verificare e documentare codice in modo sicuro e governato.

Obiettivo:
Proponi una struttura iniziale del modulo Ticket senza generare ancora tutto il codice.

Il modulo dovra gestire:
- creazione ticket
- lettura ticket
- aggiornamento stato
- ricerca o filtro
- validazione input
- error handling

Output atteso:
1. componenti principali da creare
2. responsabilita di ogni componente
3. ordine consigliato di generazione
4. rischi da controllare
5. test o verifiche consigliate

Vincoli:
- non generare tutta l'applicazione in una sola risposta
- non introdurre dipendenze non richieste
- non usare dati reali
- non esporre Entity direttamente verso l'esterno
- mantenere separazione tra Controller, Service, Repository, DTO ed Entity
- indicare cosa deve essere verificato manualmente

Cosa non fare:
- non creare codice completo non richiesto
- non aggiungere Lombok, MapStruct, ModelMapper o librerie simili
- non proporre configurazioni enterprise non necessarie
- non inserire credenziali, token o URL reali

## Controlli umani necessari

Dopo la risposta dell'AI, verificare:

- la proposta e incrementale
- la separazione delle responsabilita e chiara
- non sono state introdotte dipendenze non richieste
- non vengono esposte Entity direttamente
- i rischi di sicurezza sono esplicitati
- l'ordine di generazione e sostenibile per il corso
