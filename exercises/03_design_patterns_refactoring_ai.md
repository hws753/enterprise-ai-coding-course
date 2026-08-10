# Esercizio 3 - Design Pattern e refactoring assistito con AI

## Stato
Documento di lavoro - prima bozza, da rivedere prima della pubblicazione definitiva.

## Blocco del programma
AI Coding Foundations & Sicurezza - Design Pattern: creazione, utilizzo e integrazione in progetti esistenti.

## Obiettivo didattico
Al termine di questo esercizio, il partecipante deve saper usare Copilot o Claude per analizzare una logica applicativa, valutare se un design pattern e realmente utile e distinguere tra refactoring motivato e overengineering.

Questo esercizio non insegna i design pattern in modo teorico e non richiede ancora di implementare codice completo.

La Ticket Management API viene usata come contesto concreto per ragionare su come l'AI puo supportare decisioni architetturali, senza sostituire la valutazione tecnica dello sviluppatore.

## Durata indicativa
45-60 minuti:

- 10 minuti: lettura dello scenario
- 15 minuti: analisi della logica applicativa
- 15-20 minuti: scrittura del prompt per valutare il pattern
- 10-15 minuti: confronto e discussione guidata

## File coinvolti
- docs/01_AI_Coding_Project_Work_Brief.md
- exercises/03_design_patterns_refactoring_ai.md
- prompts/03_design_pattern_refactoring_prompt.md

## Scenario
Nel project work Ticket Management API, lo stato di un ticket puo cambiare durante il suo ciclo di vita.

Esempio didattico fittizio, non collegato a dati o codice reali.

Stati ipotizzati:

```text
OPEN -> IN_PROGRESS -> RESOLVED -> CLOSED
```

Regole ipotizzate:

- Un ticket OPEN puo passare a IN_PROGRESS
- Un ticket IN_PROGRESS puo passare a RESOLVED
- Un ticket RESOLVED puo passare a CLOSED
- Un ticket CLOSED non dovrebbe piu cambiare stato

Uno sviluppatore junior potrebbe gestire tutto con una lunga serie di if/else dentro il Service.

Esempio concettuale da analizzare (nota: questo e deliberatamente uno pseudocodice generico, non codice Java, fornito solo per ragionare sul problema):

```text
if currentStatus == OPEN and newStatus == IN_PROGRESS:
    allow transition
else if currentStatus == IN_PROGRESS and newStatus == RESOLVED:
    allow transition
else if currentStatus == RESOLVED and newStatus == CLOSED:
    allow transition
else:
    reject transition
```

L'obiettivo non e tradurre subito questo schema in codice Java, ma chiedere all'AI di aiutare a valutare se esiste una soluzione piu leggibile, manutenibile e coerente con il progetto.

## Task 1 - Analisi del problema

Descrivi il problema tecnico in modo chiaro. Rispondi a queste domande:
- Quale logica applicativa stiamo cercando di gestire?
- Perche una lunga catena di if/else potrebbe diventare difficile da mantenere?
- Quali rischi ci sono se chiediamo subito all'AI di "applicare un design pattern" senza spiegare il contesto?
- Quali informazioni deve ricevere l'AI prima di proporre una soluzione?

## Task 2 - Prompt per valutare il design pattern

Scrivi un prompt strutturato per chiedere a Copilot o Claude di valutare se l'uso di un design pattern e giustificato. Il prompt deve chiedere all'AI di:
- analizzare il problema prima di proporre codice
- indicare almeno due opzioni possibili
- valutare vantaggi e svantaggi
- segnalare il rischio di overengineering
- distinguere tra soluzione semplice e soluzione basata su pattern
- non generare ancora codice completo

Usa questo schema:

- Ruolo:
- Contesto:
- Obiettivo:
- Stack tecnico:
- Vincoli:
- Opzioni da valutare:
- Output atteso:
- Cosa non fare:
- Verifiche richieste:

## Task 3 - Pattern candidati

Nel prompt, chiedi all'AI di ragionare almeno su queste alternative:

| Alternativa | Quando potrebbe bastare | Rischio |
|---|---|---|
| Metodo semplice nel Service | Poche transizioni, logica stabile | puo crescere male se aumentano le regole |
| Mappa delle transizioni consentite | Regole chiare e tabellari | puo diventare poco espressiva se la logica cresce |
| Strategy Pattern | Comportamenti diversi per stato o transizione | rischio elevato di overengineering |
| State Pattern | Stato con comportamento specifico e transizioni controllate | piu complesso da spiegare, implementare e mantenere |

Il partecipante non deve scegliere automaticamente il pattern piu sofisticato. Deve motivare la scelta piu adatta al contesto didattico.

## Task 4 - Prompt per review della proposta AI

Scrivi un secondo prompt per chiedere una review critica della proposta ricevuta dall'AI. Il prompt deve chiedere di valutare:
- se la soluzione proposta e proporzionata alla complessita del problema
- se e comprensibile per sviluppatori junior/intermedi
- se rispetta la separazione Controller / Service / Entity / DTO
- se introduce complessita non necessaria
- quali test servirebbero per verificare le transizioni di stato
- quali parti richiedono controllo umano prima di essere implementate

## Output atteso

Crea il file prompts/03_design_pattern_refactoring_prompt.md. Il file deve contenere:
- descrizione sintetica del problema
- prompt per valutare il design pattern
- prompt per review critica della proposta AI
- motivazione della scelta consigliata
- nota finale su cosa verificare manualmente prima di implementare

## Criteri di valutazione / autoverifica

- [ ] Ho descritto il problema prima di chiedere una soluzione
- [ ] Il prompt non chiede subito codice completo
- [ ] Il prompt chiede di confrontare piu alternative
- [ ] Il prompt include il rischio di overengineering
- [ ] Il prompt mantiene il focus su AI Coding, non su teoria dei design pattern
- [ ] Ho previsto una review critica della proposta AI
- [ ] Ho indicato quali test sarebbero necessari
- [ ] Ho chiarito cosa deve essere verificato manualmente

## Errori comuni da evitare

- Chiedere all'AI "applica un design pattern" senza descrivere il problema
- Scegliere Strategy o State solo perche sembrano soluzioni piu avanzate
- Trasformare l'esercizio in una lezione teorica sui design pattern
- Generare subito codice senza aver prima confrontato alternative
- Accettare una proposta AI senza valutarne complessita e manutenibilita
- Ignorare i test sulle transizioni di stato
- Inserire logica di business nel Controller

## Checkpoint docente

Durante il confronto in aula, verificare che i partecipanti abbiano capito questi tre punti:

1. Un design pattern va scelto per risolvere un problema reale, non per rendere il codice piu sofisticato.
2. L'AI puo aiutare a confrontare alternative, ma la decisione architetturale resta umana.
3. Prima di implementare un refactoring suggerito dall'AI bisogna valutarne leggibilita, testabilita, sicurezza e manutenibilita.
