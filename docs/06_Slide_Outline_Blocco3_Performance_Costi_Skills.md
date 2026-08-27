# Slide outline - Blocco 3 - Performance, Costi, Skills

## Stato

Documento di lavoro - raccolta progressiva dei punti da trasformare in slide.

## Scopo del file

Questo file raccoglie i nuclei teorici, le scelte didattiche e i messaggi chiave emersi dai materiali del Blocco 3.

Il Blocco 3 e articolato internamente in una Sessione da 4 ore:

- Sessione 6 - Performance, costi, skill personale e project finale

Il totale del Blocco 3 e di 4 ore.

Il sillabus ufficiale definisce performance e costi, skill personale (skills.sh) e project finale: applicativo + skill. Java 21, Spring Boot, H2, GitHub Codespaces, Ticket Management API, skills.md, la struttura interna della prompt library e rubriche/checklist operative sono scelte didattiche interne del repository e non dati dichiarati dal PDF ufficiale.

Non e ancora una presentazione definitiva.

Servira piu avanti per costruire le slide del corso, mantenendo coerenza tra:

- sillabus ufficiale
- repository GitHub
- esercitazioni
- project work Ticket Management API
- metodo Enterprise AI Coding

## Fonti gia analizzate

- exercises/08_performance_costs_ai_coding.md
- exercises/09_personal_skill_skills_sh.md
- exercises/10_final_project_applicativo_skill.md

## Blocco 3 - Obiettivo generale

Il Blocco 3 porta il lavoro svolto nei blocchi precedenti verso una valutazione piu matura del codice generato con AI.

Il focus non e solo produrre codice funzionante, ma capire se il codice e sostenibile, proporzionato, verificabile, mantenibile e coerente con il contesto enterprise.

## Sezione slide 1 - Dal codice funzionante al codice sostenibile

Messaggio chiave:

Nel Blocco 3 non basta chiedersi se il codice funziona: bisogna chiedersi se e sostenibile, proporzionato e mantenibile.

Punti da spiegare:

- il Blocco 1 ha costruito metodo, sicurezza e controllo
- il Blocco 2 ha portato il metodo nella generazione applicativa
- il Blocco 3 valuta performance, costi, sostenibilita e skill personale
- l'AI puo proporre ottimizzazioni, ma non tutte sono necessarie
- ogni miglioramento deve essere motivato rispetto al contesto

## Sezione slide 2 - Performance: evitare ottimizzazione prematura

Messaggio chiave:

La review sulle performance deve distinguere problemi reali, rischi da monitorare e ottimizzazioni premature.

Punti da spiegare:

- non bisogna chiedere all'AI di ottimizzare tutto il progetto
- serve un perimetro chiaro di analisi
- performance non significa aggiungere complessita
- una modifica e utile solo se risponde a un problema reale o a un rischio motivato
- alcune scelte sono accettabili in un contesto didattico anche se non sono perfette per produzione
- le ottimizzazioni devono essere comprensibili per sviluppatori junior/intermedi

Categorie da usare:

- problema reale da correggere
- rischio da monitorare
- ottimizzazione prematura
- suggerimento non necessario
- scelta accettabile nel contesto didattico
- punto da verificare con test o misurazioni

## Sezione slide 3 - Costi tecnici e manutenzione

Messaggio chiave:

Il costo di una scelta tecnica non e solo economico: include complessita, manutenzione, testabilita e spiegabilita.

Punti da spiegare:

- codice piu complesso costa di piu da mantenere
- dipendenze aggiunte senza reale necessita aumentano il debito tecnico
- refactoring non necessari possono ridurre la chiarezza
- una scelta tecnica deve essere proporzionata al progetto
- nel contesto didattico la spiegabilita e un criterio importante
- il costo tecnico va confrontato con il beneficio reale

Elementi da valutare:

- beneficio
- costo tecnico
- rischio
- decisione
- motivazione

## Sezione slide 4 - Costi operativi dell'AI Coding

Messaggio chiave:

Il costo dell'AI Coding include anche iterazioni, prompt inefficaci, risposte scartate e tempo umano di verifica.

Punti da spiegare:

- l'analisi resta qualitativa e metodologica: non si usano prezzi o tariffe reali dei provider
- un prompt generico puo aumentare il numero di iterazioni
- ogni risposta AI richiede verifica umana
- le risposte scartate sono parte del costo operativo
- prompt piu strutturati riducono correzioni successive
- il tempo umano di review e parte integrante del processo

Domande guida:

- quante richieste sono state necessarie?
- quante risposte sono state scartate?
- quanto tempo e servito per verificare gli output?
- quali prompt hanno prodotto risultati troppo generici?
- quali prompt hanno ridotto iterazioni inutili?

## Sezione slide 5 - Review cost-aware e decisione finale

Messaggio chiave:

Una review cost-aware aiuta a scegliere solo gli interventi proporzionati e realmente utili.

Punti da spiegare:

- evitare refactoring non necessari
- distinguere miglioramenti utili da preferenze stilistiche
- segnalare complessita non giustificata
- indicare quali modifiche hanno impatto reale
- indicare quali modifiche aumentano manutenzione
- proporre solo interventi proporzionati al progetto
- documentare decisione umana, motivazione e verifica richiesta

Decisioni possibili:

- accettare
- modificare
- rimandare
- rifiutare
- verificare con test

## Sezione slide 6 - Checkpoint docente dell'Esercizio 8

Messaggio chiave:

Performance e costi devono essere valutati con perimetro, evidenze e proporzionalita.

Punti da verificare in aula:

- i partecipanti non confondono performance con complessita
- i partecipanti sanno riconoscere ottimizzazioni premature
- i partecipanti sanno valutare il costo tecnico di una modifica
- i partecipanti sanno ragionare sul costo operativo dell'uso dell'AI
- i partecipanti motivano le decisioni accettate, rimandate o rifiutate
- i partecipanti collegano eventuali modifiche a test o misurazioni

## Sezione slide 7 - Skill personale: rendere riutilizzabile il metodo

Fonte analizzata:

- exercises/09_personal_skill_skills_sh.md

Messaggio chiave:

La skill personale serve a trasformare il metodo di lavoro del corso in istruzioni riutilizzabili per l'assistente AI.

Punti da spiegare:

- la skill non serve a delegare responsabilita all'AI
- la skill deve guidare prompt, sviluppo, review e documentazione
- la skill deve rispettare project work, stack tecnico e vincoli di sicurezza
- la skill deve indicare cosa l'AI puo fare e cosa non deve fare
- la skill deve essere verificabile, leggibile e riutilizzabile nel project finale

## Sezione slide 8 - Estrarre regole dai materiali del corso

Messaggio chiave:

Una buona skill nasce dalla sintesi dei materiali gia prodotti, non da istruzioni generiche.

Punti da spiegare:

- recuperare regole dal project work brief
- recuperare regole dalla safety checklist
- recuperare regole dalla engineering governance checklist
- recuperare regole dagli esercizi su generazione, persistenza, pipeline e review
- integrare le regole su performance e costi
- trasformare regole sparse in istruzioni operative coerenti

Categorie da estrarre:

- prompt engineering
- sicurezza
- architettura
- generazione incrementale
- persistenza
- error handling
- review
- performance e costi
- test

## Sezione slide 9 - Struttura minima della skill

Messaggio chiave:

La skill deve avere una struttura chiara: scopo, contesto, regole operative, limiti e criteri di accettazione.

Punti da spiegare:

- dichiarare lo scopo della skill
- indicare il contesto del project work Ticket Management API
- indicare lo stack Java 21 e Spring Boot
- definire il comportamento atteso dell'assistente AI
- includere regole di sicurezza
- includere regole di generazione codice
- includere regole di review
- includere attenzione a performance e costi
- dichiarare limiti e cosa non fare

## Sezione slide 10 - skills.md e skills.sh

Messaggio chiave:

skills.sh e il deliverable obbligatorio della skill personale richiesto dal sillabus; skills.md e il file Markdown riutilizzabile adottato internamente dal progetto e affianca skills.sh senza sostituirlo.

Punti da spiegare:

- skills.md contiene istruzioni leggibili e riutilizzabili
- skills.sh e un deliverable minimo obbligatorio, sicuro e non distruttivo
- skills.sh puo essere un wrapper o uno script dimostrativo minimo
- lo script non deve contenere credenziali, token o chiavi API
- lo script non deve eseguire comandi distruttivi
- lo script non deve installare dipendenze o inviare dati all'esterno
- skills.md e skills.sh hanno ruoli complementari: il primo documenta in forma leggibile e riutilizzabile, il secondo costituisce il deliverable obbligatorio della skill personale

## Sezione slide 11 - Review e accettazione della skill

Messaggio chiave:

Una skill personale va revisionata come qualsiasi altro artefatto generato con AI.

Punti da spiegare:

- verificare chiarezza dello scopo
- verificare coerenza con il project work
- verificare coerenza con lo stack Spring Boot
- verificare presenza di regole di sicurezza
- verificare presenza di regole di review
- verificare presenza di limiti espliciti
- verificare assenza di dati sensibili
- verificare assenza di istruzioni rischiose
- verificare riutilizzabilita nel project finale

## Sezione slide 12 - Checkpoint docente dell'Esercizio 9

Messaggio chiave:

La skill personale e un artefatto di sintesi: rende riutilizzabile il metodo, ma non sostituisce review e responsabilita umana.

Punti da verificare in aula:

- i partecipanti hanno distinto skills.md e skills.sh
- i partecipanti sanno spiegare la differenza tra skills.md e skills.sh e il ruolo complementare dei due deliverable
- i partecipanti hanno incluso regole di sicurezza e review
- i partecipanti hanno indicato cosa l'AI non deve fare
- i partecipanti hanno evitato credenziali, token e comandi rischiosi
- i partecipanti sanno collegare la skill al project finale

## Sezione slide 13 - Project finale: applicativo + skill

Fonte analizzata:

- exercises/10_final_project_applicativo_skill.md

Messaggio chiave:

Il project finale deve dimostrare metodo, non solo quantita di codice prodotto.

Punti da spiegare:

- il project finale consolida il Ticket Management API
- l'obiettivo non e aggiungere molte funzionalita nuove
- il focus e mostrare un processo completo di Enterprise AI Coding
- l'AI deve supportare sviluppo, review e documentazione
- le decisioni finali restano responsabilita dello sviluppatore
- il risultato deve essere coerente, verificabile e presentabile

## Sezione slide 14 - Perimetro e backlog minimo

Messaggio chiave:

Un project finale sostenibile nasce da un perimetro realistico e da un backlog minimo.

Punti da spiegare:

- distinguere funzionalita presenti, incomplete e rimandate
- classificare gli elementi in obbligatorio, utile, opzionale e fuori scope
- evitare una lista infinita di funzionalita
- scegliere una sola funzionalita da completare o rifinire con l'AI
- motivare le funzionalita escluse
- collegare ogni decisione a una verifica

Elementi consigliati:

- creazione ticket
- lettura ticket
- lista ticket
- aggiornamento stato
- ricerca o filtro
- validazione input
- error handling
- README finale
- prompt library
- skills.md
- skills.sh minimo obbligatorio

## Sezione slide 15 - Usare skill personale e skills.sh nel project finale

Messaggio chiave:

skills.md, skills.sh e prompt library sono deliverable centrali, non allegati secondari.

Punti da spiegare:

- skills.md guida il lavoro dell'assistente AI
- skills.sh e un deliverable minimo obbligatorio, sicuro e non distruttivo
- skills.sh deve essere coerente con skills.md
- la skill deve includere regole di sicurezza, review, performance e costi
- la skill non sostituisce la review umana
- il project finale deve dimostrare che la skill e davvero utilizzabile

## Sezione slide 16 - README finale e prompt library

Messaggio chiave:

La documentazione finale rende verificabile il lavoro svolto e il modo in cui e stata usata l'AI.

Punti da spiegare:

- il README deve spiegare obiettivo, stack, funzionalita e avvio del progetto
- il README deve indicare come eseguire i test
- il README deve documentare come e stata usata l'AI
- la prompt library deve raccogliere prompt strutturati e riutilizzabili
- ogni prompt deve indicare scopo, contesto, output atteso, vincoli e controlli umani
- non devono comparire credenziali, token, URL aziendali reali o dati sensibili

## Sezione slide 17 - Rubrica di valutazione del project finale

Messaggio chiave:

La valutazione finale deve considerare applicativo, skill, prompt, sicurezza, test, documentazione e decisioni tecniche.

Punti da spiegare:

- valutare il perimetro realistico
- valutare le funzionalita implementate e verificabili
- valutare l'uso dell'AI con prompt mirati
- valutare skills.md e skills.sh
- valutare sicurezza e assenza di dati reali
- valutare review AI + review umana
- valutare test e documentazione
- valutare decisioni tecniche motivate
- valutare presentazione finale e limiti dichiarati

## Sezione slide 18 - Presentazione finale e retrospettiva

Messaggio chiave:

La restituzione finale deve mostrare cosa e stato costruito, come e stata usata l'AI e quali controlli umani sono stati indispensabili.

Punti da spiegare:

- spiegare obiettivo del progetto
- spiegare stack e project work
- mostrare come e stata usata l'AI
- indicare rischi controllati
- indicare prompt piu utili
- indicare suggerimenti AI rifiutati
- indicare cosa ha richiesto review umana
- indicare cosa resta fuori scope
- spiegare come la skill personale aiuta nel lavoro successivo

## Sezione slide 19 - Checkpoint docente dell'Esercizio 10

Messaggio chiave:

Il valore dell'Enterprise AI Coding sta nella capacita di usare AI, review umana, test e documentazione come un unico processo governato.

Punti da verificare in aula:

- i partecipanti hanno definito un perimetro realistico
- i partecipanti non hanno chiesto all'AI di completare tutto il progetto
- i partecipanti hanno usato skills.md come riferimento operativo
- i partecipanti hanno prodotto skills.sh minimo obbligatorio e sicuro
- i partecipanti hanno organizzato README e prompt library
- i partecipanti hanno applicato review AI e review umana
- i partecipanti hanno eseguito o documentato i test
- i partecipanti hanno compilato rubrica, checklist e retrospettiva

Per il controllo finale utilizzare anche docs/07_AI_Coding_Performance_Costi_Skills_Checklist.md.
