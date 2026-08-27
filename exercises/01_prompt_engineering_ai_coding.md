# Esercizio 1 — Prompt Engineering applicato alla Ticket Management API

## Stato
Documento di lavoro - esercitazione operativa del corso Enterprise AI Coding.

## Blocco del programma
AI Coding Foundations & Sicurezza — Prompt engineering avanzato.

## Obiettivo didattico
Al termine di questo esercizio, il partecipante deve saper scrivere prompt strutturati per chiedere a Copilot o Claude di analizzare un contesto di progetto, proporre una struttura di modulo e rispettare vincoli architetturali definiti.

Questo esercizio non insegna Spring Boot e non richiede ancora la generazione di codice applicativo completo.

La Ticket Management API viene usata come contesto concreto per esercitarsi a comunicare in modo chiaro, vincolato e verificabile con un assistente AI.

## Durata indicativa
45-60 minuti:

- 10 minuti: lettura del brief e analisi del contesto
- 20-30 minuti: scrittura dei prompt
- 10 minuti: confronto tra pari
- 10 minuti: discussione guidata in aula

## File coinvolti
- docs/01_AI_Coding_Project_Work_Brief.md
- prompts/01_ticket_module_structure_prompt.md

## Scenario
Il project work del corso e la Ticket Management API, descritta nel brief docs/01_AI_Coding_Project_Work_Brief.md.

Prima di generare qualsiasi codice, un team che lavora in modo controllato con l'AI deve saper definire cosa vuole ottenere, quali vincoli tecnici rispettare, quali rischi evitare, quale output si aspetta e cosa dovra essere verificato manualmente.

In questo esercizio non scriverete ancora l'Entity Ticket, il Controller o il Service. Scriverete invece i prompt che, in una fase successiva, permetteranno di far generare il codice in modo piu controllato da Copilot o Claude.

## Prompt debole di partenza

Analizzate questo prompt come esempio di cosa NON fare:

  Crea un modulo Ticket in Spring Boot.

Questo prompt e troppo generico perche non specifica: contesto del progetto, ruolo dell'assistente AI, architettura attesa, vincoli di sicurezza, output richiesto, cosa non deve essere generato, criteri di verifica.

## Task 1 - Prompt per analisi e struttura del modulo

Scrivi un prompt strutturato per chiedere a un assistente AI di analizzare il contesto del progetto e proporre la struttura del modulo Ticket (quali componenti servono: Entity, DTO, Repository, Service, Controller, eccezioni, test).

In questa fase il prompt deve chiedere solo il piano e la struttura, non il codice completo.

Usa questo schema:

- Ruolo:
- Contesto:
- Obiettivo:
- Stack tecnico:
- Vincoli:
- Output atteso:
- Casi limite:
- Cosa non fare:
- Verifiche richieste:

Nel campo "Vincoli", inserisci esplicitamente almeno questi punti:
- separazione tra Controller, Service, Repository e DTO
- nessuna logica di business nel Controller
- nessun dato sensibile o reale negli esempi, solo dati fittizi
- codice da generare solo in una fase successiva, non in questo prompt

## Task 2 - Prompt per review preventiva

Scrivi un secondo prompt per chiedere una review preventiva del piano proposto dall'AI, prima ancora che venga scritto codice. Il prompt deve chiedere esplicitamente di valutare:

- se la struttura proposta rispetta la separazione architetturale richiesta
- se ci sono componenti mancanti
- se ci sono rischi di overengineering
- quali rischi di sicurezza potrebbero emergere
- quali parti andrebbero verificate manualmente una volta generato il codice
- quali test sarebbero necessari in una fase successiva

## Task 3 - Confronto e miglioramento

Confronta i tuoi due prompt con quelli di un compagno o con la versione proposta dal docente. Valuta: quale prompt e piu chiaro, quale impone vincoli migliori, quale riduce il rischio di output generico, quale controlla meglio sicurezza e qualita, quali informazioni erano implicite e devono diventare esplicite.

## Output atteso

Crea il file prompts/01_ticket_module_structure_prompt.md contenente:

- prompt per analisi e struttura del modulo
- prompt per review preventiva
- breve nota finale con: cosa e stato migliorato rispetto al prompt debole, quali vincoli sono stati aggiunti, cosa dovra essere verificato manualmente

## Criteri di valutazione / autoverifica

- [ ] Il prompt specifica un ruolo chiaro per l'assistente AI
- [ ] Il contesto del progetto e descritto in modo comprensibile
- [ ] L'obiettivo e specifico e non ambiguo
- [ ] I vincoli architetturali sono espliciti
- [ ] E presente almeno un vincolo di sicurezza
- [ ] Il prompt impedisce la generazione immediata di codice completo
- [ ] L'output atteso e concreto e verificabile
- [ ] E presente un secondo prompt dedicato alla review preventiva
- [ ] E chiaro cosa dovra essere controllato dall'essere umano
- [ ] Il file prodotto puo essere riutilizzato nella prompt library finale

## Errori comuni da evitare

- Scrivere un prompt generico come "crea un modulo Ticket in Spring Boot"
- Chiedere subito tutto il codice senza prima definire struttura e vincoli
- Dare per scontato che l'AI conosca l'architettura del progetto
- Non distinguere tra piano, codice e review
- Dimenticare il vincolo sui dati fittizi
- Accettare una proposta AI senza chiedere una review preventiva
- Trasformare l'esercizio in una lezione su Spring Boot invece che su AI Coding

## Checkpoint docente

Durante il confronto in aula, verificare che i partecipanti abbiano capito questi tre punti:

1. un prompt tecnico efficace deve contenere contesto, vincoli e output atteso
2. l'AI non deve essere usata solo per generare codice, ma anche per analizzare e revisionare
3. il controllo umano resta obbligatorio prima di accettare qualsiasi output AI-generated
