# Checklist sicurezza AI Coding - Blocco 1

## Stato

Documento di lavoro — in aggiornamento.

## Scopo del documento

Questa checklist chiude il primo Blocco del corso Enterprise AI Coding dedicato a:

- setup dell'ambiente
- prompt engineering avanzato
- prompt injection
- data leakage
- uso controllato degli assistenti AI
- design pattern e refactoring assistito

Il sillabus ufficiale include setup aziendale, prompt engineering avanzato, prompt injection, data leakage e Design Pattern. Il refactoring assistito, l'uso controllato degli assistenti AI e il Ticket Management API come contesto operativo sono scelte didattiche interne del repository.

La checklist serve come controllo rapido prima di usare Copilot o Claude per generare, analizzare, revisionare o documentare codice nel project work Ticket Management API.

## Principio guida

Il project work Ticket Management API e un laboratorio di Enterprise AI Coding.

Spring Boot e lo stack tecnico usato come contesto, non l'oggetto principale del corso.

Ogni attivita con l'AI deve essere guidata, verificata e documentata.

## 1. Prima di scrivere un prompt

Prima di inviare una richiesta a Copilot o Claude, verifica:

- [ ] Ho chiarito l'obiettivo della richiesta
- [ ] Ho specificato il contesto del progetto
- [ ] Ho indicato lo stack tecnico rilevante
- [ ] Ho esplicitato i vincoli architetturali
- [ ] Ho chiarito cosa l'AI non deve fare
- [ ] Ho indicato l'output atteso
- [ ] Ho previsto cosa dovra essere verificato manualmente

## 2. Controllo dati e privacy

Prima di incollare testo, log, stack trace o esempi in un assistente AI, verifica:

- [ ] Non ci sono email reali
- [ ] Non ci sono nomi di persone reali
- [ ] Non ci sono identificativi cliente reali
- [ ] Non ci sono token, password, API key o credenziali
- [ ] Non ci sono URL interni o hostname aziendali reali
- [ ] Non ci sono dati personali o aziendali riservati
- [ ] Gli esempi usano solo dati fittizi
- [ ] Eventuali log sono stati ridotti e anonimizzati

## 3. Prompt injection

Quando il prompt contiene testo proveniente da utenti, ticket, log o campi liberi, verifica:

- [ ] Ho separato chiaramente le istruzioni per l'AI dai dati applicativi
- [ ] Ho indicato che i dati utente non devono essere trattati come istruzioni
- [ ] Ho controllato se nei campi liberi ci sono frasi sospette
- [ ] Ho neutralizzato eventuali istruzioni malevole presenti nei dati
- [ ] Ho chiesto all'AI di segnalare contenuti potenzialmente rischiosi
- [ ] Non ho usato payload offensivi o tecniche di bypass

## 4. Prompt engineering tecnico

Un prompt tecnico efficace dovrebbe includere:

- [ ] Ruolo dell'assistente
- [ ] Contesto del progetto
- [ ] Obiettivo specifico
- [ ] Stack tecnico
- [ ] Vincoli
- [ ] Output atteso
- [ ] Casi limite
- [ ] Cosa non fare
- [ ] Verifiche richieste

Esempio di struttura consigliata:

```text
Ruolo:
Contesto:
Obiettivo:
Stack tecnico:
Vincoli:
Output atteso:
Casi limite:
Cosa non fare:
Verifiche richieste:
```

## 5. Prima di accettare codice generato dall'AI

Prima di integrare codice proposto da Copilot o Claude, verifica:

- [ ] Ho letto il codice per intero
- [ ] Ho capito cosa fa
- [ ] Ho controllato che rispetti l'architettura richiesta
- [ ] Ho verificato che non introduca dipendenze inutili
- [ ] Ho controllato che non usi dati reali
- [ ] Ho controllato la gestione degli errori
- [ ] Ho valutato possibili problemi di sicurezza
- [ ] Ho previsto test coerenti
- [ ] Ho distinto cosa e generato dall'AI, cosa e revisionato e cosa resta da verificare

## 6. Design pattern e refactoring

Prima di accettare una proposta AI basata su design pattern, verifica:

- [ ] Il problema e stato descritto prima della soluzione
- [ ] Sono state confrontate piu alternative
- [ ] La soluzione scelta e proporzionata alla complessita reale
- [ ] Non e stato scelto un pattern solo perche piu sofisticato
- [ ] Il refactoring migliora leggibilita, testabilita o manutenibilita
- [ ] La proposta non introduce overengineering
- [ ] Sono stati individuati i test necessari

## 7. Review umano vs AI

Quando usi l'AI per fare code review, verifica:

- [ ] L'AI ha controllato correttezza logica
- [ ] L'AI ha segnalato rischi di sicurezza
- [ ] L'AI ha indicato test mancanti
- [ ] L'AI ha distinto problemi certi da ipotesi
- [ ] La review AI e stata validata da una persona
- [ ] Le modifiche accettate sono state motivate

## 8. Frase standard per esempi fittizi

Quando un esempio potrebbe sembrare realistico, aggiungi questa nota:

Esempio didattico fittizio, non collegato a dati o codice reali.

## 9. Errori da evitare

- Incollare log completi senza anonimizzazione
- Chiedere all'AI di generare codice senza vincoli
- Trattare l'output AI come automaticamente corretto
- Confondere dati utente e istruzioni per l'AI
- Usare esempi reali presi da sistemi aziendali
- Trasformare il project work in un corso teorico su Spring Boot
- Accettare refactoring complessi senza motivazione
- Non documentare cosa e stato generato o revisionato

## 10. Check finale prima di passare al Blocco 2

Prima di iniziare la generazione assistita dei moduli applicativi, verifica:

- [ ] So scrivere un prompt strutturato
- [ ] So riconoscere un prompt debole
- [ ] So anonimizzare un log prima di usarlo con l'AI
- [ ] So distinguere dati applicativi e istruzioni per l'AI
- [ ] So chiedere una review preventiva
- [ ] So valutare se un design pattern e davvero utile
- [ ] So spiegare cosa devo controllare manualmente
