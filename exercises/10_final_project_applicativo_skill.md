# Esercizio 10 - Project finale: applicativo + skill

## Stato

Documento di lavoro - prima bozza, da rivedere prima della pubblicazione definitiva.

## Blocco del programma

Performance, Costi, Skills - Project finale: applicativo + skill.

## Obiettivo didattico

Al termine di questo esercizio, il partecipante deve saper consolidare il project work Ticket Management API e usare la skill personale come guida operativa per sviluppo, review, documentazione e verifica finale.

L'obiettivo non e aggiungere molte funzionalita nuove, ma chiudere il percorso dimostrando un metodo completo di Enterprise AI Coding:

- definizione del perimetro
- uso controllato dell'assistente AI
- applicazione della skill personale
- sviluppo o rifinitura di una funzionalita
- review AI + review umana
- verifica tecnica
- documentazione finale
- preparazione dei deliverable

Il project finale deve mostrare che il partecipante sa usare l'AI come supporto al lavoro tecnico, senza delegare progettazione, sicurezza, test e decisioni finali.

## Durata indicativa

180-240 minuti.

Questa attivita rappresenta il momento conclusivo del corso e puo essere svolta come laboratorio guidato, lavoro individuale o lavoro a piccoli gruppi.

## Prerequisiti

Prima di iniziare questo esercizio, devono essere stati completati:

- Blocco 1 - AI Coding Foundations & Sicurezza
- Blocco 2 - Engineering e Integrazione & Governance
- Esercizio 8 - Performance e costi nell'AI Coding
- Esercizio 9 - Skill personale e skills.sh
- skills.md
- skills.sh minimo obbligatorio, sicuro e non distruttivo
- checklist sicurezza AI Coding
- checklist Engineering e Governance
- outline slide dei blocchi precedenti
- esecuzione di ./mvnw test dopo le modifiche principali

## File coinvolti

- docs/00_Scheda_Base_Corso_Enterprise_AI_Coding.md
- docs/01_AI_Coding_Project_Work_Brief.md
- docs/02_AI_Coding_Safety_Checklist.md
- docs/05_AI_Coding_Engineering_Governance_Checklist.md
- docs/06_Slide_Outline_Blocco3_Performance_Costi_Skills.md
- exercises/08_performance_costs_ai_coding.md
- exercises/09_personal_skill_skills_sh.md
- exercises/10_final_project_applicativo_skill.md
- prompts/10_final_project_prompt.md
- skills.md
- skills.sh
- README.md
- project/ticket-api/

## Scenario

Il team ha costruito progressivamente il modulo Ticket usando AI assistita, review umana e controlli di sicurezza.

Nel project finale il team deve consolidare il lavoro e produrre una versione presentabile del progetto, collegando:

- applicativo Spring Boot
- prompt library
- skill personale documentata
- skills.sh minimo e sicuro
- README finale
- checklist di verifica
- decisioni tecniche motivate

Il risultato finale non deve essere perfetto come un prodotto enterprise reale, ma deve essere coerente, spiegabile, verificabile e didatticamente solido.

## Principio operativo

Non chiedere all'AI:

```text
Completa tutto il progetto finale.
```

Chiedere invece supporto mirato su parti specifiche:

1. definire cosa e gia pronto
2. decidere cosa completare nel tempo disponibile
3. usare skills.md come istruzione di lavoro
4. verificare che skills.sh sia minimo e sicuro
5. chiedere all'AI una proposta limitata
6. verificare il codice generato
7. aggiornare README e prompt library
8. eseguire test e review finale
9. documentare cosa e stato completato e cosa resta fuori scope

## Task 1 - Definire il perimetro del project finale

Prima di usare Copilot o Claude, definisci il perimetro del project finale.

Rispondi a queste domande:

- quali funzionalita del Ticket Management API sono gia presenti?
- quali funzionalita sono incomplete?
- quali funzionalita sono essenziali per la demo finale?
- quali funzionalita possono essere rimandate?
- quali file sono stati generati con AI?
- quali file sono stati modificati manualmente?
- quali test esistono?
- quali test mancano?
- quali rischi di sicurezza o governance restano aperti?

## Task 2 - Backlog minimo del project finale

Costruisci un backlog minimo e realistico.

Funzionalita consigliate per il project finale:

- creazione ticket
- lettura ticket per id
- lista ticket
- aggiornamento stato ticket
- ricerca o filtro per stato/priorita
- validazione input
- error handling controllato
- README finale
- prompt library
- skills.md
- skills.sh minimo obbligatorio

Classifica ogni elemento in una delle seguenti categorie:

- obbligatorio
- utile
- opzionale
- fuori scope

Esempio di tabella:

```text
Elemento:
Categoria:
Stato attuale:
Decisione:
Motivazione:
Verifica richiesta:
```

## Task 3 - Usare la skill personale

Prima di chiedere nuove modifiche all'AI, apri skills.md e usala come riferimento operativo.

Verifica che la skill includa almeno:

- contesto del project work
- stack Java 21 / Spring Boot
- regole di sicurezza
- regole di generazione incrementale
- regole di review
- regole su performance e costi
- limiti dell'assistente AI
- criteri di accettazione

Domanda guida:

La skill e abbastanza specifica da aiutare l'AI sul project finale, oppure e ancora troppo generica?

## Task 4 - Verificare skills.sh

Il file skills.sh e un deliverable minimo obbligatorio.

Deve essere:

- semplice
- sicuro
- non distruttivo
- privo di credenziali
- coerente con skills.md
- comprensibile per sviluppatori junior/intermedi

skills.sh puo:

- stampare un riferimento a skills.md
- verificare prerequisiti minimi
- ricordare i controlli principali
- mostrare come usare la skill nel project finale

skills.sh non deve:

- contenere token o chiavi API
- modificare file senza conferma
- eseguire comandi distruttivi
- installare dipendenze non richieste
- inviare dati all'esterno
- automatizzare decisioni tecniche

Esempio minimo accettabile:

```bash
#!/usr/bin/env bash
set -euo pipefail

echo "Enterprise AI Coding Skill"
echo "Documento principale: skills.md"
echo "Usare la skill per prompt, review, sicurezza, governance e project finale."
```

## Task 5 - Prompt per completare una funzionalita

Scegli una sola funzionalita da completare o rifinire.

Esempi:

- aggiornamento stato ticket
- lista ticket
- ricerca per stato
- filtro per priorita
- miglioramento validazioni
- test di un endpoint esistente

Scrivi un prompt strutturato per chiedere supporto a Copilot o Claude.

Schema del prompt:

```text
Ruolo:
Contesto:
Skill da rispettare:
Funzionalita da completare:
File coinvolti:
Vincoli tecnici:
Vincoli di sicurezza:
Cosa non fare:
Output atteso:
Verifiche richieste:
```

Il prompt deve specificare:

- non riscrivere tutto il progetto
- non introdurre dipendenze non richieste
- non esporre Entity direttamente
- non esporre stack trace o dettagli interni
- mantenere coerenza con DTO, Service, Repository e Controller
- proporre modifiche piccole e verificabili

## Task 6 - Review della modifica proposta

Dopo la proposta dell'AI, esegui una review prima di applicarla.

Controlla:

- la modifica rispetta la skill personale?
- la modifica rispetta il project work brief?
- la modifica e proporzionata?
- introduce complessita non necessaria?
- introduce dipendenze?
- espone dati interni?
- richiede test aggiuntivi?
- e comprensibile per sviluppatori junior/intermedi?

Classifica l'esito:

- accettare
- modificare
- rifiutare
- rimandare
- verificare con test

## Task 7 - Verifica tecnica

Dopo eventuali modifiche, esegui:

```bash
cd project/ticket-api
./mvnw test
```

Se il comando fallisce, non chiedere subito all'AI di correggere tutto.

Prima analizza:

- messaggio di errore
- classe coinvolta
- modifica recente collegata
- causa probabile
- modifica minima necessaria
- se il problema riguarda codice generato dall'AI o integrazione manuale

## Task 8 - README finale

Aggiorna o prepara il README finale del repository.

Il README deve spiegare:

- obiettivo del project work
- stack tecnico
- funzionalita implementate
- come avviare il progetto
- come eseguire i test
- come e stata usata l'AI
- quali prompt sono stati utili
- quali controlli di sicurezza sono stati applicati
- cosa resta da migliorare

Non inserire nel README:

- credenziali
- token
- URL aziendali reali
- dati sensibili
- dettagli non verificati

## Task 9 - Prompt library finale

Organizza la libreria di prompt strutturati.

La prompt library deve includere almeno:

- prompt per generazione Entity/Enum
- prompt per DTO e Repository
- prompt per Service e Controller
- prompt per error handling
- prompt per code review
- prompt per performance e costi
- prompt per skill personale
- prompt per project finale

Per ogni prompt indica:

- scopo
- contesto
- input richiesti
- output atteso
- vincoli
- controlli umani necessari

## Task 10 - Rubrica di valutazione del project finale

Valuta il project finale usando una rubrica chiara.

Criteri consigliati:

| Criterio | Evidenza richiesta | Valutazione |
| --- | --- | --- |
| Perimetro realistico | Backlog minimo con elementi obbligatori, utili, opzionali e fuori scope | Da compilare |
| Applicativo | Funzionalita implementate e verificabili | Da compilare |
| Uso dell'AI | Prompt mirati, non generici, con vincoli chiari | Da compilare |
| Skill personale | skills.md completo e skills.sh minimo obbligatorio | Da compilare |
| Sicurezza | Assenza di credenziali, dati reali e dettagli interni esposti | Da compilare |
| Review | Review AI affiancata da review umana | Da compilare |
| Test | ./mvnw test eseguito o problemi documentati | Da compilare |
| Documentazione | README aggiornato e prompt library organizzata | Da compilare |
| Decisioni tecniche | Scelte accettate, rifiutate o rimandate motivate | Da compilare |
| Presentazione finale | Restituzione chiara del lavoro svolto e dei limiti | Da compilare |

## Task 11 - Checklist finale del project work

Prima di considerare concluso il project finale, verifica:

- [ ] Il perimetro finale e chiaro
- [ ] Le funzionalita implementate sono documentate
- [ ] Le funzionalita rimandate sono motivate
- [ ] skills.md e presente e coerente
- [ ] skills.sh minimo obbligatorio e presente
- [ ] skills.sh non contiene credenziali o comandi rischiosi
- [ ] La prompt library e organizzata
- [ ] Il README e aggiornato
- [ ] I test sono stati eseguiti
- [ ] La review AI e stata affiancata da review umana
- [ ] Non sono presenti credenziali o dati reali
- [ ] Non sono presenti dipendenze non motivate
- [ ] Le decisioni tecniche sono documentate

## Task 12 - Preparazione della presentazione finale

Prepara una breve presentazione o restituzione finale del lavoro.

La presentazione deve coprire:

- cosa e stato costruito
- come e stata usata l'AI
- quali rischi sono stati controllati
- quali prompt sono stati piu utili
- quali suggerimenti AI sono stati rifiutati
- cosa ha richiesto review umana
- cosa resta fuori scope
- come la skill personale aiuta nel lavoro successivo

Formato consigliato:

```text
1. Obiettivo del progetto
2. Stack e project work
3. Uso dell'AI
4. Controlli di sicurezza e governance
5. Funzionalita completate
6. Prompt e skill personale
7. Test e verifiche
8. Limiti e miglioramenti futuri
```

## Task 13 - Retrospettiva finale

Scrivi una breve retrospettiva individuale.

Domande guida:

- dove l'AI ha accelerato davvero il lavoro?
- dove l'AI ha prodotto output da correggere?
- quali prompt hanno funzionato meglio?
- quali rischi sono stati piu evidenti?
- quali controlli umani sono stati indispensabili?
- cosa cambieresti nel tuo modo di usare l'AI per sviluppare codice?
- come useresti la skill personale in un nuovo progetto?

## Output atteso

Al termine dell'esercizio devono essere presenti:

1. project work Ticket Management API consolidato
2. README.md aggiornato
3. skills.md
4. skills.sh minimo obbligatorio, sicuro e non distruttivo
5. prompt library organizzata
6. risultato di ./mvnw test
7. rubrica di valutazione compilata
8. checklist finale compilata
9. nota finale sulle decisioni tecniche
10. breve presentazione o restituzione finale
11. retrospettiva individuale

Il file prompts/10_final_project_prompt.md deve contenere:

- prompt per definire il perimetro finale
- prompt per completare una funzionalita
- prompt per review della modifica
- prompt per README finale
- prompt per organizzare la prompt library
- rubrica di valutazione del project finale
- checklist finale project work
- schema di retrospettiva finale

## Criteri di valutazione / autoverifica

- [ ] Ho definito un perimetro realistico
- [ ] Non ho chiesto all'AI di completare tutto il progetto
- [ ] Ho usato skills.md come riferimento operativo
- [ ] Ho verificato skills.sh come deliverable minimo obbligatorio
- [ ] Ho applicato review AI + review umana
- [ ] Ho documentato decisioni accettate e rifiutate
- [ ] Ho aggiornato README o indicato cosa va aggiornato
- [ ] Ho organizzato la prompt library
- [ ] Ho compilato la rubrica di valutazione
- [ ] Ho eseguito ./mvnw test dopo eventuali modifiche
- [ ] Ho evitato dati reali, credenziali e dipendenze non motivate
- [ ] Ho preparato una restituzione finale del lavoro

## Errori comuni da evitare

- Trasformare il project finale in una lista infinita di funzionalita
- Chiedere all'AI di completare tutto in un unico prompt
- Ignorare skills.md durante il lavoro finale
- Considerare skills.sh facoltativo
- Inserire comandi rischiosi in skills.sh
- Accettare modifiche senza review
- Non distinguere funzionalita obbligatorie e opzionali
- Non aggiornare README e prompt library
- Non eseguire test finali
- Presentare come completato cio che e solo progettato
- Inserire credenziali o dati reali nei deliverable
- Non documentare limiti e scelte rimandate

## Checkpoint docente

Durante il confronto finale, verificare che i partecipanti abbiano capito questi tre punti:

1. il project finale deve dimostrare metodo, non solo quantita di codice prodotto
2. skills.md, skills.sh e prompt library sono deliverable centrali, non allegati secondari
3. il valore dell'Enterprise AI Coding sta nella capacita di usare AI, review umana, test e documentazione come un unico processo governato
