Nota didattica:
Questo file e un esempio di riferimento per docente/progettista.
Non e l'elaborato dello studente.
Durante l'esercizio, il partecipante dovra produrre il proprio file nella cartella prompts/.

# Prompt 09 - Skill personale e skills.sh

## Scopo

Questo prompt serve a guidare Copilot o Claude nella progettazione di una skill personale riutilizzabile per il project work Ticket Management API.

L'obiettivo non e creare una skill generica, ma trasformare le regole del corso in istruzioni operative chiare, verificabili e riutilizzabili.

La skill deve aiutare l'assistente AI a rispettare metodo, sicurezza, governance, stile del progetto e limiti di intervento.

## Contesto

Corso: Enterprise AI Coding
Project work: Ticket Management API
Stack: Java 21, Spring Boot, Maven, Spring Data JPA, H2
Tema: skill personale, istruzioni Markdown riutilizzabili, skills.sh sicuro

## Prompt strutturato

Ruolo:
Agisci come assistente AI per progettare una skill personale per sviluppo AI-assisted in un progetto Java/Spring Boot.

Contesto:
Sto lavorando al project work Ticket Management API.
Durante il corso ho prodotto esercizi, checklist, prompt strutturati e decisioni tecniche.
Ora devo trasformare questo metodo in una skill personale riutilizzabile.

Obiettivo:
Aiutami a progettare una skill personale composta da:

1. skills.md come documento principale, leggibile e didattico
2. skills.sh come deliverable minimo obbligatorio, sicuro e non distruttivo

La skill deve guidare l'AI durante sviluppo, review, documentazione e project finale.

Fonti da sintetizzare:
- project work brief
- safety checklist
- engineering governance checklist
- esercizi su generazione assistita
- esercizi su persistenza e DTO
- esercizi su pipeline ed error handling
- esercizi su review umano vs AI
- esercizio su performance e costi

Sezioni richieste per skills.md:
- scopo
- contesto del project work
- stack tecnico
- comportamento atteso dell'assistente AI
- regole di sicurezza
- regole di generazione codice
- regole di review
- regole su performance e costi
- criteri di accettazione
- cosa l'AI non deve fare
- limiti della skill

Vincoli per skills.md:
- deve essere chiaro e riutilizzabile
- deve essere collegato al Ticket Management API
- deve citare Java 21 e Spring Boot
- deve includere sicurezza, review umana, test e governance
- deve indicare esplicitamente i limiti dell'assistente AI
- non deve contenere credenziali, token, URL reali o dati aziendali

Vincoli per skills.sh:
- deve essere minimo
- deve essere sicuro
- deve essere non distruttivo
- deve essere coerente con skills.md
- non deve modificare file senza conferma
- non deve installare dipendenze
- non deve inviare dati all'esterno
- non deve contenere credenziali, token o chiavi API

Esempio di comportamento accettabile per skills.sh:
- stampare il nome della skill
- indicare che skills.md e il documento principale
- ricordare di usare la skill per prompt, review, sicurezza e governance
- eseguire solo controlli semplici e non distruttivi, se motivati

Output atteso:
1. proposta di struttura per skills.md
2. contenuto iniziale di skills.md
3. proposta minima e sicura di skills.sh
4. controlli da eseguire su skills.sh
5. checklist di accettazione della skill
6. limiti da dichiarare nella skill

Cosa non fare:
- non creare una skill generica
- non trasformare skills.sh nel file principale
- non inserire comandi rischiosi
- non inserire credenziali, token o dati reali
- non delegare all'AI decisioni tecniche finali
- non sostituire review umana, test e responsabilita tecnica

## Prompt per review della skill

Ruolo:
Agisci come revisore tecnico e didattico della skill personale.

Contesto:
Ho prodotto skills.md e skills.sh per il project work Ticket Management API.
Devo verificare che siano coerenti, sicuri e utilizzabili nel project finale.

Verifica:
- chiarezza dello scopo
- coerenza con il project work
- coerenza con Java 21 e Spring Boot
- presenza di regole di sicurezza
- presenza di regole di review umano vs AI
- presenza di attenzione a performance e costi
- presenza di limiti espliciti
- assenza di dati sensibili
- assenza di istruzioni rischiose
- coerenza tra skills.md e skills.sh

Output atteso:
1. punti corretti
2. punti da migliorare
3. rischi presenti
4. parti troppo generiche
5. parti non sicure, se presenti
6. modifiche consigliate
7. decisione finale motivata

## Checklist di accettazione

Prima di considerare valida la skill, verificare:

- skills.md esiste
- skills.md ha uno scopo chiaro
- skills.md e collegato al Ticket Management API
- skills.md cita Java 21 e Spring Boot
- skills.md include regole di sicurezza
- skills.md include regole di generazione incrementale
- skills.md include regole di review umano vs AI
- skills.md include attenzione a performance e costi
- skills.md indica cosa l'AI non deve fare
- skills.sh esiste
- skills.sh e minimo, sicuro e non distruttivo
- skills.sh e coerente con skills.md
- skills.sh non contiene credenziali, token o chiavi API
- skills.sh non esegue comandi rischiosi
- la skill non sostituisce test, review umana e responsabilita tecnica

## Decisione finale

Dopo la review umana, classificare la skill come:

- accettare
- modificare
- rifiutare
- rimandare
- verificare con test

Motivare sempre la decisione prima di usare la skill nel project finale.
