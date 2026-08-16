Nota didattica:
Questo file e un esempio di riferimento per docente/progettista.
Non e l'elaborato dello studente.
Durante l'esercizio, il partecipante dovra produrre il proprio file nella cartella prompts/.

# Prompt 03 - Design pattern e refactoring assistito

## Scopo

Questo prompt serve a chiedere supporto a Copilot o Claude per analizzare una parte di codice e valutare se un design pattern o un refactoring siano davvero utili.

L'obiettivo non e applicare pattern a tutti i costi, ma distinguere tra miglioramento reale, complessita inutile e refactoring prematuro.

## Contesto

Corso: Enterprise AI Coding
Project work: Ticket Management API
Stack: Java 21, Spring Boot, Maven, JPA/H2
Tema: design pattern, refactoring assistito, review umana

## Prompt strutturato

Ruolo:
Agisci come assistente AI per code review e refactoring in un progetto Java/Spring Boot.

Contesto:
Sto lavorando al project work Ticket Management API.
Voglio valutare se una porzione di codice puo essere migliorata con un refactoring o con un design pattern, senza introdurre complessita non necessaria.

Codice o componente da analizzare:
[indicare classe, metodo o responsabilita da valutare]

Obiettivo:
Aiutami a capire se il codice attuale e gia sufficientemente semplice oppure se esiste un refactoring utile e proporzionato.

Valuta:
- leggibilita
- separazione delle responsabilita
- duplicazione
- testabilita
- sicurezza
- manutenibilita
- coerenza con Controller, Service, Repository, DTO ed Entity

Output atteso:
1. valutazione del codice attuale
2. eventuali problemi reali
3. refactoring consigliato, se necessario
4. design pattern applicabile, solo se motivato
5. rischi di overengineering
6. test o controlli da eseguire
7. parti da verificare manualmente

Vincoli:
- non proporre pattern se non sono necessari
- non introdurre dipendenze non richieste
- non riscrivere tutto il progetto
- non modificare architettura senza motivo
- non esporre Entity direttamente verso l'esterno
- mantenere codice comprensibile per sviluppatori junior/intermedi
- distinguere miglioramenti reali da preferenze stilistiche

Cosa non fare:
- non applicare pattern solo per rendere il codice piu sofisticato
- non introdurre classi astratte o gerarchie complesse senza motivo
- non proporre refactoring massivi
- non aggiungere Lombok, MapStruct, ModelMapper o librerie simili
- non inserire dati reali, credenziali o configurazioni aziendali

## Controlli umani necessari

Prima di accettare la proposta dell'AI, verificare:

- il refactoring risolve un problema reale
- il codice resta leggibile
- la complessita non aumenta inutilmente
- non sono state introdotte dipendenze non richieste
- la modifica e coerente con il project work
- i test necessari sono chiari
- la decisione finale e motivata dallo sviluppatore
