Nota didattica:
Questo file e un esempio di riferimento per docente/progettista.
Non e l'elaborato dello studente.
Durante l'esercizio, il partecipante dovra produrre il proprio file nella cartella prompts/.

# Prompt 02 - Debug sicuro e protezione dati

## Scopo

Questo prompt serve a chiedere supporto a Copilot o Claude per analizzare errori, log o comportamenti anomali senza esporre dati sensibili.

L'obiettivo non e incollare log reali o configurazioni aziendali, ma costruire una richiesta sicura, minimizzata e verificabile.

## Contesto

Corso: Enterprise AI Coding
Project work: Ticket Management API
Stack: Java 21, Spring Boot, Maven, JPA/H2
Tema: data leakage, prompt injection e debug sicuro

## Prompt strutturato

Ruolo:
Agisci come assistente AI per debug sicuro in un progetto Java/Spring Boot.

Contesto:
Sto lavorando al project work Ticket Management API.
Devo analizzare un errore o un comportamento anomalo senza condividere dati sensibili, credenziali, token, URL reali, nomi di clienti o dettagli interni aziendali.

Dati forniti:
Usero solo informazioni anonimizzate e ridotte al minimo necessario.

Errore o comportamento osservato:
[descrivere qui il problema in modo sintetico]

Contesto tecnico:
- componente coinvolto:
- operazione eseguita:
- messaggio di errore anonimizzato:
- ultima modifica effettuata:
- risultato atteso:
- risultato ottenuto:

Obiettivo:
Aiutami a formulare ipotesi sulla causa del problema e una sequenza di verifica sicura.

Output atteso:
1. possibili cause
2. controlli da fare in ordine
3. informazioni mancanti da raccogliere
4. modifica minima consigliata, se motivata
5. rischi da evitare
6. cosa verificare manualmente

Vincoli:
- non chiedere dati reali
- non chiedere credenziali, token o chiavi API
- non chiedere log completi se non necessari
- non proporre modifiche massive
- non generare codice distruttivo
- non suggerire di disabilitare controlli di sicurezza
- non inventare dettagli non presenti

Cosa non fare:
- non incollare stack trace completi con dati reali
- non condividere stringhe di connessione reali
- non condividere hostname o URL interni
- non condividere dati personali o aziendali
- non chiedere all'AI di correggere tutto automaticamente

## Controlli umani necessari

Prima di inviare il prompt all'AI, verificare:

- i dati sono anonimizzati
- non ci sono credenziali o token
- non ci sono URL o hostname reali
- il problema e descritto in modo minimo ma sufficiente
- il prompt chiede analisi e non correzione automatica totale

Dopo la risposta dell'AI, verificare:

- le ipotesi sono plausibili
- la modifica proposta e minima
- non vengono indeboliti controlli di sicurezza
- non vengono introdotte dipendenze non richieste
- la soluzione va testata prima di essere accettata
