# AI Coding Project Work Brief — Ticket Management API

## Stato
Documento di lavoro — prima bozza, da rivedere prima della pubblicazione definitiva.

## Cos'è questo documento
Questo brief definisce lo scopo, i confini e le regole d'ingaggio del project work del corso **Enterprise AI Coding**. Non è un documento tecnico su Spring Boot: è la guida che stabilisce *come* userete l'AI per costruire, verificare e documentare la Ticket Management API, non *cosa* imparerete di Spring Boot in sé.

## Obiettivo del project work

Il project work non deve rispondere alla domanda:

> "Come sviluppo una Ticket Management API con Spring Boot?"

Deve rispondere alla domanda:

> "Come uso GitHub Copilot e Claude per progettare, generare, verificare, correggere, documentare e migliorare codice applicativo in modo sicuro e controllato?"

Ogni esercitazione, ogni modulo di codice, ogni prompt scritto durante il corso deve essere collegato a questo obiettivo, non alla sola funzionalità tecnica prodotta.

## Collegamento con il programma ufficiale

Questo project work è il filo conduttore che attraversa i tre blocchi del programma Protom:

| Blocco del programma | Come si applica al project work |
|---|---|
| AI Coding Foundations & Sicurezza | Setup ambiente (Codespaces), prompt engineering su moduli del Ticket, esercizi di prompt injection/data leakage usando dati fittizi del progetto, valutazione di design pattern applicabili (es. Strategy per la gestione stati ticket) |
| Engineering e Integrazione & Governance | Generazione assistita di Entity/Service/Controller, integrazione con H2/PostgreSQL, pipeline di validazione ed error handling, code review umano vs AI sul codice generato |
| Performance, Costi, Skills | Analisi performance del codice generato, riflessione su costi di token/review/debito tecnico, produzione della skill personale basata sull'esperienza sul project work |

## Ruolo degli strumenti AI nel project work

- **GitHub Copilot**: usato dentro VS Code/Codespaces per generare, modificare, testare e refattorizzare codice in modo guidato, mai in autonomia completa
- **Claude**: usato per revisione del codice generato, analisi di sicurezza, spiegazioni approfondite, code review più articolata, documentazione

## Cosa deve fare l'umano prima di accettare codice generato dall'AI

Nessun codice generato da Copilot o Claude va accettato "cosi com'e". Prima di integrarlo nel progetto, chi lo riceve deve:

1. Leggerlo per intero, non solo scorrerlo
2. Capire cosa fa, riga per riga se necessario, non solo se "sembra funzionare"
3. Verificare che rispetti l'architettura concordata (separazione Controller/Service/Repository/DTO)
4. Testarlo, non dare per scontato che compili e funzioni solo perche l'AI lo ha proposto
5. Controllare la sicurezza: nessun dato sensibile, nessuna gestione insicura degli errori, nessuna dipendenza non necessaria
6. Documentare cosa e stato generato dall'AI, cosa e stato modificato manualmente, cosa resta da verificare

Questa distinzione (generato / revisionato / da verificare) deve comparire nei commenti di commit o nella documentazione del modulo, non solo restare implicita.

## Modello dati concettuale (punto di partenza)

Prima di generare la prima Entity, questo e lo schema minimo concettuale del Ticket su cui costruire:

| Campo | Tipo (indicativo) | Note |
|---|---|---|
| id | Long | generato automaticamente |
| titolo | String | obbligatorio, lunghezza minima/massima da validare |
| descrizione | String | opzionale |
| stato | Enum (es. APERTO, IN_LAVORAZIONE, CHIUSO) | valore di default: APERTO |
| priorita | Enum (es. BASSA, MEDIA, ALTA) | opzionale, default MEDIA |
| dataCreazione | LocalDateTime | generata automaticamente alla creazione |
| dataAggiornamento | LocalDateTime | aggiornata a ogni modifica |

Questo schema e un punto di partenza didattico, non un requisito rigido: puo essere esteso durante il corso (es. aggiungendo un campo assegnatario) come esercizio di generazione assistita di un nuovo campo/migrazione.

Nota sulla convenzione dei nomi: nel brief i campi sono descritti in italiano per chiarezza didattica. Nel codice Java e nei DTO useremo nomi inglesi coerenti con le convenzioni tecniche del progetto, ad esempio title, description, status, priority, createdAt e updatedAt.

## Funzionalita minime (dal programma)

- Creazione ticket
- Lettura ticket (singolo e lista)
- Aggiornamento stato ticket
- Ricerca ticket (per stato, priorita, o testo libero nel titolo)
- Persistenza su database (H2 per le demo in aula; PostgreSQL resta citato solo come riferimento concettuale enterprise, non verra configurato in aula)
- Validazione input (es. titolo obbligatorio, stato tra valori ammessi)
- Gestione centralizzata degli errori (es. TicketNotFoundException, risposta HTTP coerente)

## Vincoli di sicurezza e dati

- Nessun dato reale: tutti gli esempi, i dati di test e i prompt devono usare informazioni fittizie
- Nessuna credenziale, token o riferimento aziendale reale in codice, commenti, prompt o log
- Ogni esempio didattico che potrebbe sembrare collegato a un contesto reale deve riportare la nota:

  > Esempio didattico fittizio, non collegato a dati o codice reali.

- Gli esercizi sulla sicurezza (prompt injection, data leakage) useranno esclusivamente log e dataset costruiti ad hoc per il corso, mai materiale aziendale reale, nemmeno anonimizzato da fonti reali
- I campi testo liberi del Ticket (titolo, descrizione) potranno essere usati come esempio pratico per mostrare il principio della prompt injection, senza fornire un catalogo di payload pronti all'uso

## Prompt library collegata al project work

Ogni modulo sviluppato durante il project work deve produrre almeno un prompt strutturato salvato in prompts/, secondo lo schema:

- Ruolo:
- Contesto:
- Obiettivo:
- Stack tecnico:
- Vincoli:
- Output atteso:
- Casi limite:

Questo collega direttamente il project work al deliverable "libreria di prompt strutturati" richiesto dal programma.

## Code review nel project work

Per ogni modulo generato, va prevista una fase di code review che valuti:

- correttezza logica
- sicurezza
- leggibilita
- gestione errori
- test mancanti
- coerenza con l'architettura del progetto

La review va condotta prima con l'AI (Claude o Copilot Chat), poi validata da un confronto umano in aula, per mostrare concretamente la differenza tra "review automatica" e "review umana finale".

## Deliverable del project work

- Codice del progetto in project/ticket-api/
- README del progetto (bozza in Copilot, rifinitura in Claude)
- Prompt library aggiornata in prompts/
- Checklist di sicurezza AI coding applicata al progetto
- Skill personale che raccoglie i pattern di prompt e le lezioni apprese durante lo sviluppo

## Nota su skills.sh / skills.md

Coerentemente con la scheda base del corso, la skill personale del project work viene prodotta come ipotesi di lavoro in formato skills.md, in attesa di conferma dal committente sul formato richiesto (skills.sh vs skills.md).

## Cosa NON deve succedere durante il project work

- Spiegare in dettaglio la sintassi o le annotazioni Spring Boot come se fosse un corso framework-oriented
- Accettare codice generato dall'AI senza lettura o verifica
- Usare dati, credenziali o log reali negli esempi
- Trattare il project work come attivita isolata dagli altri moduli del programma (deve restare il filo conduttore)
