# Checklist Performance, Costi, Skills - Blocco 3

## Stato

Documento di lavoro - checklist finale di chiusura del Blocco 3.

## Scopo del documento

Questa checklist chiude il terzo blocco del corso Enterprise AI Coding dedicato a:

- performance e costi
- skill personale documentata
- skills.sh minimo obbligatorio, sicuro e non distruttivo
- project finale applicativo + skill
- README finale
- prompt library strutturata
- rubrica di valutazione
- presentazione e retrospettiva finale

La checklist serve a verificare che il project finale non sia solo codice funzionante, ma un insieme coerente di applicativo, metodo AI Coding, skill, documentazione, test e decisioni tecniche motivate.

## Fonti di riferimento

- exercises/08_performance_costs_ai_coding.md
- exercises/09_personal_skill_skills_sh.md
- exercises/10_final_project_applicativo_skill.md
- docs/06_Slide_Outline_Blocco3_Performance_Costi_Skills.md

## Principio guida

Nel Blocco 3 il partecipante deve dimostrare di saper usare l'AI in modo governato.

Il risultato finale deve essere:

- proporzionato al tempo disponibile
- verificabile
- documentato
- sicuro
- coerente con il project work Ticket Management API
- supportato da skill personale
- accompagnato da prompt library
- valutabile tramite rubrica

## 1. Performance e ottimizzazione proporzionata

Prima di accettare suggerimenti AI sulle performance, verifica:

- [ ] Ho definito un perimetro chiaro di analisi
- [ ] Non ho chiesto all'AI di ottimizzare tutto il progetto
- [ ] Ho distinto problemi reali da ottimizzazioni premature
- [ ] Ho classificato i suggerimenti AI in modo critico
- [ ] Ho evitato caching, async o librerie non necessarie
- [ ] Ho valutato se una modifica aumenta la complessita
- [ ] Ho indicato cosa richiede test o misurazioni
- [ ] Ho mantenuto il focus sul contesto didattico

## 2. Costi tecnici e manutenzione

Prima di accettare una modifica proposta dall'AI, verifica:

- [ ] Ho valutato il beneficio reale della modifica
- [ ] Ho valutato il costo tecnico della modifica
- [ ] Ho valutato il rischio di overengineering
- [ ] Ho evitato dipendenze non motivate
- [ ] Ho evitato refactoring non necessari
- [ ] Ho considerato la leggibilita per sviluppatori junior/intermedi
- [ ] Ho considerato il tempo di manutenzione futura
- [ ] Ho motivato la decisione finale

## 3. Costi operativi dell'AI Coding

Durante la riflessione sull'uso degli assistenti AI, verifica:

- [ ] Ho annotato quante iterazioni sono state necessarie
- [ ] Ho distinto prompt utili e prompt troppo generici
- [ ] Ho considerato il tempo umano di verifica
- [ ] Ho considerato le risposte AI scartate
- [ ] Ho riconosciuto dove l'AI ha accelerato il lavoro
- [ ] Ho riconosciuto dove l'AI ha creato lavoro aggiuntivo
- [ ] Ho evitato tariffe reali non verificate o non aggiornate
- [ ] Ho ragionato sul costo operativo del processo, non solo sul costo economico

## 4. Skill personale

Prima di considerare valida la skill personale, verifica:

- [ ] skills.md esiste
- [ ] skills.md ha uno scopo chiaro
- [ ] skills.md e collegato al project work Ticket Management API
- [ ] skills.md cita lo stack Java 21 / Spring Boot
- [ ] skills.md include regole di sicurezza
- [ ] skills.md include regole di generazione incrementale
- [ ] skills.md include regole di review umano vs AI
- [ ] skills.md include attenzione a performance e costi
- [ ] skills.md indica cosa l'AI non deve fare
- [ ] skills.md e comprensibile e riutilizzabile

## 5. skills.sh minimo obbligatorio

Prima di consegnare skills.sh, verifica:

- [ ] skills.sh esiste
- [ ] skills.sh e minimo, sicuro e non distruttivo
- [ ] skills.sh e coerente con skills.md
- [ ] skills.sh non contiene credenziali
- [ ] skills.sh non contiene token o chiavi API
- [ ] skills.sh non modifica file senza conferma
- [ ] skills.sh non esegue comandi distruttivi
- [ ] skills.sh non installa dipendenze non richieste
- [ ] skills.sh non invia dati all'esterno
- [ ] skills.sh e comprensibile per sviluppatori junior/intermedi

## 6. Project finale: perimetro e backlog

Prima di completare il project finale, verifica:

- [ ] Il perimetro finale e realistico
- [ ] Il backlog distingue elementi obbligatori, utili, opzionali e fuori scope
- [ ] Le funzionalita essenziali sono state individuate
- [ ] Le funzionalita rimandate sono motivate
- [ ] Non ho trasformato il project finale in una lista infinita di funzionalita
- [ ] Ho scelto modifiche piccole e verificabili
- [ ] Ho collegato ogni decisione a una verifica
- [ ] Ho documentato cosa resta fuori scope

## 7. Applicativo Ticket Management API

Prima di considerare consolidato l'applicativo, verifica:

- [ ] Le funzionalita implementate sono documentate
- [ ] Il flusso Controller / Service / Repository / DTO resta coerente
- [ ] Le Entity non sono esposte direttamente
- [ ] L'error handling resta controllato
- [ ] Non vengono esposti stack trace o dettagli interni
- [ ] Non sono state introdotte dipendenze non motivate
- [ ] Le modifiche AI sono state revisionate
- [ ] Le decisioni tecniche sono motivate

## 8. Test e verifica tecnica

Prima della consegna, verifica:

- [ ] ./mvnw test e stato eseguito
- [ ] Eventuali errori sono stati letti e analizzati
- [ ] La classe coinvolta e stata individuata
- [ ] La causa probabile e stata descritta
- [ ] La modifica minima necessaria e stata valutata
- [ ] I problemi non risolti sono stati documentati
- [ ] Non ho chiesto all'AI di correggere tutto senza analisi
- [ ] Ho distinto errori di codice generato e problemi di integrazione manuale

## 9. README finale

Prima di consegnare il README, verifica:

- [ ] Il README spiega l'obiettivo del project work
- [ ] Il README indica lo stack tecnico
- [ ] Il README descrive le funzionalita implementate
- [ ] Il README spiega come avviare il progetto
- [ ] Il README spiega come eseguire i test
- [ ] Il README documenta come e stata usata l'AI
- [ ] Il README indica quali controlli di sicurezza sono stati applicati
- [ ] Il README dichiara cosa resta da migliorare
- [ ] Il README non contiene credenziali, token, URL aziendali reali o dati sensibili

## 10. Prompt library finale

Prima di consegnare la prompt library, verifica:

- [ ] Esiste una raccolta di prompt strutturati
- [ ] Sono presenti prompt per generazione Entity/Enum
- [ ] Sono presenti prompt per DTO e Repository
- [ ] Sono presenti prompt per Service e Controller
- [ ] Sono presenti prompt per error handling
- [ ] Sono presenti prompt per code review
- [ ] Sono presenti prompt per performance e costi
- [ ] Sono presenti prompt per skill personale
- [ ] Sono presenti prompt per project finale
- [ ] Ogni prompt indica scopo, contesto, output atteso, vincoli e controlli umani

## 11. Rubrica di valutazione

Prima della valutazione finale, verifica:

- [ ] La rubrica valuta il perimetro realistico
- [ ] La rubrica valuta l'applicativo
- [ ] La rubrica valuta l'uso dell'AI
- [ ] La rubrica valuta skills.md e skills.sh
- [ ] La rubrica valuta sicurezza e assenza di dati reali
- [ ] La rubrica valuta review AI + review umana
- [ ] La rubrica valuta test e verifiche
- [ ] La rubrica valuta README e prompt library
- [ ] La rubrica valuta decisioni tecniche motivate
- [ ] La rubrica valuta presentazione finale e limiti dichiarati

## 12. Presentazione finale e retrospettiva

Prima della restituzione finale, verifica:

- [ ] La presentazione spiega cosa e stato costruito
- [ ] La presentazione spiega come e stata usata l'AI
- [ ] La presentazione indica i rischi controllati
- [ ] La presentazione evidenzia i prompt piu utili
- [ ] La presentazione indica suggerimenti AI rifiutati
- [ ] La presentazione spiega cosa ha richiesto review umana
- [ ] La presentazione dichiara cosa resta fuori scope
- [ ] La retrospettiva spiega cosa cambierei nel prossimo progetto AI-assisted

## 13. Errori comuni da evitare

- Ottimizzare senza evidenze
- Accettare suggerimenti AI senza review
- Rendere skills.sh piu importante di skills.md
- Considerare skills.sh facoltativo
- Inserire credenziali o token nei deliverable
- Usare comandi distruttivi in skills.sh
- Chiedere all'AI di completare tutto il project finale
- Presentare come completato cio che e solo progettato
- Non aggiornare README e prompt library
- Non documentare scelte rimandate o limiti

## 14. Check finale prima della consegna

Prima di chiudere il corso, verifica:

- [ ] Project work consolidato
- [ ] README.md aggiornato
- [ ] skills.md presente
- [ ] skills.sh presente, minimo e sicuro
- [ ] Prompt library organizzata
- [ ] Test eseguiti o problemi documentati
- [ ] Rubrica compilata
- [ ] Checklist finale compilata
- [ ] Decisioni tecniche documentate
- [ ] Presentazione finale preparata
- [ ] Retrospettiva individuale completata

## Checkpoint docente

Durante la chiusura del Blocco 3, verificare che i partecipanti abbiano capito questi tre punti:

1. il project finale deve dimostrare metodo, non solo quantita di codice prodotto
2. skills.md, skills.sh, README e prompt library sono deliverable centrali
3. il valore dell'Enterprise AI Coding sta nell'integrare AI, review umana, test, documentazione e governance in un unico processo
