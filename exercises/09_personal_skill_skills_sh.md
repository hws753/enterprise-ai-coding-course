# Esercizio 9 - Skill personale e skills.sh

## Stato

Documento di lavoro - esercitazione operativa del corso Enterprise AI Coding.

## Blocco del programma

Performance, Costi, Skills - Skill personale (skills.sh).

## Obiettivo didattico

Al termine di questo esercizio, il partecipante deve saper progettare una skill personale riutilizzabile per guidare l'assistente AI nello sviluppo, nella review e nella documentazione del project work.

L'obiettivo non e creare uno script generico, ma trasformare le regole emerse durante il corso in istruzioni operative chiare, verificabili e riutilizzabili.

La skill deve aiutare l'assistente AI a rispettare metodo, vincoli tecnici, sicurezza, governance, stile del progetto e limiti di intervento.

## Durata indicativa

45-60 minuti.

Massimo operativo: 75 minuti.

Questo esercizio deve restare pratico e focalizzato sulla costruzione della skill personale, senza trasformarsi in una lezione teorica sugli agenti AI.

## Prerequisiti

Prima di iniziare questo esercizio, devono essere stati completati:

- Blocco 1 - AI Coding Foundations & Sicurezza
- Blocco 2 - Engineering e Integrazione & Governance
- Esercizio 8 - Performance e costi nell'AI Coding
- checklist sicurezza AI Coding
- checklist Engineering e Governance
- budget orario del corso
- review umano vs AI
- riflessione su performance, costi tecnici e costi operativi

## File coinvolti

- docs/00_Scheda_Base_Corso_Enterprise_AI_Coding.md
- docs/01_AI_Coding_Project_Work_Brief.md
- docs/02_AI_Coding_Safety_Checklist.md
- docs/05_AI_Coding_Engineering_Governance_Checklist.md
- exercises/08_performance_costs_ai_coding.md
- exercises/09_personal_skill_skills_sh.md
- prompts/09_personal_skill_prompt.md
- skills.sh
- skills.md

## Scenario

Il team ha ormai costruito un metodo di lavoro per usare l'AI nel project work Ticket Management API.

Questo metodo include:

- prompt engineering strutturato
- protezione da data leakage e prompt injection
- generazione incrementale del codice
- separazione delle responsabilita applicative
- uso controllato di DTO, Repository, Service e Controller
- error handling sicuro
- code review umano vs AI
- valutazione di performance e costi

Ora il team deve trasformare queste regole in una skill personale, cioe in un insieme di istruzioni riutilizzabili che l'assistente AI dovra seguire durante il project finale.

## Principio operativo

Non chiedere all'AI:

```text
Crea una skill per programmare meglio.
```

Chiedere invece una skill con perimetro, regole e vincoli chiari:

1. definire lo scopo della skill
2. indicare lo stack tecnico
3. indicare il project work
4. specificare cosa l'AI puo fare
5. specificare cosa l'AI non deve fare
6. inserire regole di sicurezza
7. inserire regole di review
8. inserire criteri di accettazione degli output

## Task 1 - Definire lo scopo della skill

Prima di generare il file skills.sh o skills.md, descrivi lo scopo della skill.

Rispondi a queste domande:

- quale problema deve risolvere la skill?
- in quale contesto verra usata?
- quale stack tecnico deve considerare?
- quali file del progetto deve rispettare?
- quali comportamenti deve incoraggiare nell'assistente AI?
- quali comportamenti deve impedire?
- quali controlli deve richiedere prima di accettare codice?

## Task 2 - Estrarre le regole dai materiali del corso

Raccogli le regole principali emerse nei blocchi precedenti.

Fonti consigliate:

- project work brief
- safety checklist
- engineering governance checklist
- esercizi 4, 5, 6 e 7
- esercizio 8 su performance e costi

Categorie da estrarre:

- regole di prompt engineering
- regole di sicurezza
- regole architetturali
- regole di generazione incrementale
- regole di persistenza
- regole di error handling
- regole di review
- regole su performance e costi
- regole sui test

## Task 3 - Prompt per generare una bozza di skill

Scrivi un prompt strutturato per chiedere a Copilot o Claude di proporre una bozza di skill personale.

Il prompt deve specificare:

- contesto del corso
- project work Ticket Management API
- stack Java 21 / Spring Boot
- obiettivo della skill
- vincoli di sicurezza
- vincoli architetturali
- regole di review
- regole su performance e costi
- formato atteso

Schema del prompt:

```text
Ruolo:
Contesto:
Project work:
Stack tecnico:
Obiettivo della skill:
Regole da includere:
Vincoli di sicurezza:
Vincoli architetturali:
Cosa non fare:
Formato atteso:
Verifiche richieste:
```

## Task 4 - Struttura minima della skill

La skill deve contenere almeno queste sezioni:

- scopo
- contesto del progetto
- stack tecnico
- comportamento atteso dell'assistente AI
- regole di sicurezza
- regole di generazione codice
- regole di review
- regole su performance e costi
- criteri di accettazione
- limiti della skill

Esempio di struttura Markdown:

```text
# Enterprise AI Coding Skill

## Scopo
## Contesto
## Stack tecnico
## Regole operative
## Regole di sicurezza
## Regole di review
## Performance e costi
## Criteri di accettazione
## Cosa non fare
```

## Task 5 - Skills.md e skills.sh

Nel programma ufficiale compare skills.sh come deliverable della skill personale.

Per chiarezza didattica e piena aderenza al sillabus, il partecipante deve produrre entrambi i file:

- skills.md come file Markdown riutilizzabile, leggibile e documentato, complementare a skills.sh
- skills.sh come script minimo obbligatorio, sicuro, non distruttivo e privo di credenziali

Il file skills.md contiene le istruzioni riutilizzabili e affianca il deliverable obbligatorio skills.sh senza sostituirlo.

Il file skills.sh deve essere semplice e dimostrativo: puo stampare un riferimento a skills.md, verificare prerequisiti minimi o mostrare come richiamare la skill, senza automatizzare operazioni rischiose.

Non inserire nel file skills.sh:

- credenziali
- token
- chiavi API
- percorsi aziendali reali
- comandi distruttivi
- automazioni non comprese
- download o installazioni non necessarie

## Task 6 - Esempio minimo di skills.sh sicuro

Il file skills.sh deve essere semplice, leggibile, obbligatorio e non distruttivo.

Esempio didattico minimo:

```bash
#!/usr/bin/env bash
set -euo pipefail

echo "Enterprise AI Coding Skill"
echo "Usa skills.md come riferimento operativo per prompt, review, sicurezza e governance."
```

Prima di accettare lo script, verifica:

- non contiene credenziali
- non esegue comandi distruttivi
- non modifica file senza conferma
- non installa dipendenze
- non invia dati all'esterno
- e comprensibile per studenti junior/intermedi

## Task 7 - Review della skill

Chiedi all'AI di revisionare la skill prodotta.

La review deve verificare:

- chiarezza dello scopo
- coerenza con il project work
- coerenza con lo stack Spring Boot
- presenza di regole di sicurezza
- presenza di regole di review
- presenza di limiti espliciti
- assenza di dati sensibili
- assenza di istruzioni rischiose
- riutilizzabilita nel project finale

## Task 8 - Checklist di accettazione della skill

Prima di considerare valida la skill, verifica:

- [ ] La skill ha uno scopo chiaro
- [ ] La skill e collegata al project work Ticket Management API
- [ ] La skill cita lo stack Java/Spring Boot
- [ ] La skill include regole di sicurezza
- [ ] La skill include regole di generazione incrementale
- [ ] La skill include regole di review umano vs AI
- [ ] La skill include attenzione a performance e costi
- [ ] La skill indica cosa l'AI non deve fare
- [ ] La skill non contiene credenziali o dati reali
- [ ] La skill e comprensibile e riutilizzabile

## Task 9 - Verifica tecnica

Per verificare skills.sh, esegui:

```bash
chmod +x skills.sh
./skills.sh
```

Se il comando fallisce, non chiedere subito all'AI di correggere tutto.

Prima analizza:

- messaggio di errore
- riga coinvolta
- causa probabile
- modifica minima necessaria
- se lo script resta minimo, sicuro e coerente con skills.md

## Output atteso

Al termine dell'esercizio devono essere presenti:

1. prompts/09_personal_skill_prompt.md
2. skills.md
3. skills.sh minimo obbligatorio, sicuro e non distruttivo
4. review AI della skill
5. checklist di accettazione compilata
6. nota finale su cosa e stato incluso, escluso o rimandato

Il file prompts/09_personal_skill_prompt.md deve contenere:

- prompt per generare la skill
- prompt per revisionare la skill
- checklist di accettazione
- criteri per mantenere coerenti skills.md e skills.sh
- nota sui limiti della skill personale

## Criteri di valutazione / autoverifica

- [ ] Ho definito lo scopo della skill prima di generarla
- [ ] Ho estratto regole dai materiali del corso
- [ ] Ho distinto istruzioni documentali e script eseguibile
- [ ] Non ho inserito segreti o dati reali
- [ ] Non ho inserito comandi rischiosi
- [ ] La skill guida l'AI senza sostituire la review umana
- [ ] La skill e coerente con il project work
- [ ] La skill e riutilizzabile nel project finale
- [ ] Ho prodotto sia skills.md sia skills.sh minimo e sicuro

## Errori comuni da evitare

- Creare una skill troppo generica
- Copiare regole senza adattarle al project work
- Inserire comandi shell non necessari
- Inserire credenziali o token
- Trattare skills.md come sostitutivo di skills.sh
- Trattare skills.sh come facoltativo nonostante sia richiesto dal sillabus
- Usare la skill come sostituto della review umana
- Non specificare cosa l'AI non deve fare
- Non verificare la leggibilita della skill
- Non aggiornare la skill dopo il project finale

## Checkpoint docente

Durante il confronto in aula, verificare che i partecipanti abbiano capito questi tre punti:

1. una skill personale serve a rendere riutilizzabile il metodo di lavoro, non a delegare responsabilita all'AI
2. skills.sh e il deliverable obbligatorio della skill personale richiesto dal sillabus; skills.md e il file Markdown riutilizzabile adottato internamente e lo affianca senza sostituirlo
3. una buona skill contiene anche limiti, divieti, criteri di review e controlli di sicurezza
