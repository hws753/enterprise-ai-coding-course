# Checklist Engineering e Governance AI Coding - Blocco 2

## Stato

Documento di lavoro — in aggiornamento.

## Scopo del documento

Questa checklist chiude il secondo Blocco del corso Enterprise AI Coding.

Il Blocco 2 e articolato internamente in due Sessioni da 4 ore ciascuna, per un totale di 8 ore:

- Sessione 4 - Generazione assistita e persistenza
- Sessione 5 - Pipeline dati, error handling e code review

La checklist copre i seguenti temi:

- generazione assistita di moduli applicativi
- integrazione database e persistenza
- pipeline dati ed error handling aziendale
- code review umano vs AI
- governance tecnica del codice generato con assistenti AI

Il sillabus ufficiale definisce generazione assistita di moduli applicativi, integrazione database e persistenza, pipeline dati ed error handling aziendale e code review umano vs AI. Spring Boot, H2/JPA, Ticket Management API, l'architettura Entity/DTO/Repository/Service/Controller e gli specifici componenti di error handling adottati nel project work sono scelte didattiche interne del repository e non dati dichiarati dal PDF ufficiale.

La checklist serve come controllo operativo prima di considerare il modulo Ticket pronto per il project work finale e per il passaggio al Blocco 3.

## Principio guida

Nel Blocco 2 l'AI viene usata per generare, collegare e revisionare componenti applicativi reali.

Ogni componente deve essere:

- generato in modo incrementale
- letto e compreso
- verificato rispetto all'architettura
- controllato sul piano della sicurezza
- testato quando possibile
- documentato nelle decisioni accettate, modificate o scartate

## 1. Generazione assistita del modulo Ticket

Prima di accettare codice generato da Copilot o Claude, verifica:

- [ ] Non ho chiesto all'AI di generare tutta l'applicazione in una sola risposta
- [ ] Ho definito un ordine di generazione chiaro
- [ ] Gli Enum sono stati generati e verificati prima dell'Entity
- [ ] L'Entity usa correttamente TicketStatus e TicketPriority
- [ ] L'Entity non contiene logica applicativa eccessiva
- [ ] Non sono stati inseriti dati reali negli esempi o nei commenti
- [ ] Non sono state introdotte dipendenze inutili
- [ ] Il codice generato e stato letto prima di essere accettato

## 2. DTO e separazione input/output

Prima di usare DTO generati dall'AI, verifica:

- [ ] CreateTicketRequest contiene solo i dati necessari alla creazione del ticket
- [ ] TicketResponse espone solo i dati necessari verso l'esterno
- [ ] I DTO non contengono logica di business
- [ ] I DTO non espongono dettagli interni non necessari
- [ ] Le validazioni sono coerenti e motivate
- [ ] Gli esempi usano solo dati fittizi
- [ ] I nomi dei campi sono coerenti con la convenzione tecnica del progetto
- [ ] La differenza tra campi concettuali in italiano e nomi Java in inglese e chiara

## 3. Repository e persistenza

Prima di accettare la parte di persistenza, verifica:

- [ ] Il Repository usa Spring Data JPA in modo semplice
- [ ] TicketRepository estende JpaRepository
- [ ] Non sono state create implementazioni manuali non richieste
- [ ] Eventuali metodi come findByStatus o findByPriority sono motivati
- [ ] Non sono state introdotte query complesse senza necessita
- [ ] La configurazione H2/JPA e coerente con un ambiente didattico
- [ ] Non sono presenti credenziali reali
- [ ] Non sono presenti URL aziendali o configurazioni interne reali
- [ ] Non sono state aggiunte dipendenze gia presenti nel pom.xml

## 4. Pipeline dati applicativa

Prima di considerare valida la pipeline, verifica:

- [ ] Il flusso request DTO -> Controller -> Service -> Repository -> Entity -> response DTO e chiaro
- [ ] Il Controller riceve DTO di request
- [ ] Il Controller delega al Service
- [ ] Il Controller non contiene logica di business
- [ ] Il Service contiene la logica applicativa principale
- [ ] Il Service usa il Repository in modo coerente
- [ ] Le Entity non vengono esposte direttamente verso l'esterno
- [ ] La response viene restituita tramite DTO
- [ ] Il mapping DTO/Entity e comprensibile e motivato

## 5. Mapping DTO/Entity

Prima di accettare una soluzione di mapping proposta dall'AI, verifica:

- [ ] Il mapping non espone Entity verso il Controller
- [ ] Il mapping non espone dettagli interni nella response
- [ ] Il mapping non duplica logica in piu punti
- [ ] Il mapping resta comprensibile per sviluppatori junior/intermedi
- [ ] Un eventuale mapper dedicato e stato motivato
- [ ] Non sono state aggiunte librerie di mapping automatico senza approvazione
- [ ] Non sono stati aggiunti Lombok, MapStruct, ModelMapper o dipendenze simili senza approvazione esplicita

## 6. Error handling aziendale

Prima di accettare la gestione errori, verifica:

- [ ] Esiste una gestione chiara del caso ticket non trovato, ad esempio tramite TicketNotFoundException
- [ ] Gli errori di validazione input sono gestiti
- [ ] Esiste un formato coerente per le risposte di errore, ad esempio tramite ErrorResponse
- [ ] La gestione centralizzata degli errori, quando adottata, e coerente con GlobalExceptionHandler
- [ ] I messaggi di errore sono comprensibili
- [ ] Gli errori client e server sono distinti
- [ ] Non vengono esposti stack trace
- [ ] Non vengono esposti dettagli interni del database
- [ ] Non vengono esposti dati sensibili nei messaggi
- [ ] La gestione errori non e troppo complessa per il contesto didattico

## 7. Dipendenze e configurazione

Prima di accettare modifiche generate dall'AI, verifica:

- [ ] Il pom.xml non contiene dipendenze aggiunte senza motivo
- [ ] Ogni nuova dipendenza e stata spiegata e approvata
- [ ] Non sono state aggiunte librerie solo per semplificare codice che puo restare semplice
- [ ] La configurazione applicativa non contiene credenziali reali
- [ ] La configurazione applicativa non contiene hostname o URL interni reali
- [ ] La configurazione H2 e chiaramente didattica
- [ ] Eventuali configurazioni enterprise sono state rimandate o motivate

## 8. Code review AI

Quando usi Copilot o Claude per fare code review, verifica:

- [ ] Ho definito un perimetro chiaro della review
- [ ] Non ho chiesto una review generica di tutto il progetto
- [ ] Ho indicato le classi da analizzare
- [ ] Ho indicato i vincoli architetturali
- [ ] Ho indicato i vincoli di sicurezza
- [ ] Ho chiesto di distinguere problemi certi, ipotesi e suggerimenti
- [ ] Ho chiesto di evidenziare test mancanti
- [ ] Ho chiesto di indicare parti da verificare manualmente
- [ ] Non considero la review AI come approvazione finale

## 9. Review umana

Dopo la review AI, verifica manualmente:

- [ ] La review AI ha individuato problemi reali
- [ ] La review AI ha prodotto falsi positivi
- [ ] La review AI ha ignorato rischi importanti
- [ ] La checklist umana conferma o corregge la review AI
- [ ] Ogni modifica accettata e motivata
- [ ] Ogni modifica rischiosa e stata rimandata o discussa
- [ ] Le decisioni finali sono prese dal team, non dall'assistente AI
- [ ] Le modifiche automatiche non comprese sono state rifiutate

## 10. Test e verifica tecnica

Prima di chiudere il Blocco 2, verifica:

- [ ] Il progetto compila
- [ ] ./mvnw test e stato eseguito dopo le modifiche rilevanti
- [ ] Gli errori di test sono stati letti prima di chiedere correzioni all'AI
- [ ] Il messaggio di errore e stato analizzato
- [ ] La classe coinvolta e stata individuata
- [ ] La causa probabile e stata descritta
- [ ] La modifica minima necessaria e stata valutata
- [ ] I test mancanti sono stati annotati per il project work finale

## 11. Documentazione delle decisioni

Per ogni decisione tecnica rilevante, verifica:

- [ ] Ho indicato cosa e stato generato dall'AI
- [ ] Ho indicato cosa e stato modificato manualmente
- [ ] Ho indicato cosa e stato scartato
- [ ] Ho indicato cosa resta da verificare
- [ ] Ho motivato le modifiche accettate
- [ ] Ho distinto problemi certi, rischi potenziali e suggerimenti opzionali
- [ ] Ho collegato le modifiche accettate a test o controlli manuali

## 12. Errori comuni da evitare

- Chiedere all'AI di creare tutto il backend in una sola risposta
- Accettare codice solo perche compila
- Non leggere il codice generato
- Inserire logica di business nel Controller
- Usare try/catch generici nel Controller come soluzione standard di error handling
- Esporre Entity direttamente nelle risposte API
- Esporre stack trace o dettagli database
- Aggiungere dipendenze non richieste
- Usare librerie di mapping senza approvazione
- Trattare la review AI come definitiva
- Non rieseguire i test dopo le modifiche
- Non documentare le decisioni prese

## 13. Check finale prima del Blocco 3

Prima di passare a Performance, Costi e Skills, verifica:

- [ ] So generare componenti applicativi in modo incrementale
- [ ] So distinguere Entity, DTO, Repository, Service e Controller
- [ ] So verificare una configurazione di persistenza didattica
- [ ] So spiegare una pipeline dati applicativa
- [ ] So riconoscere error handling non sicuro
- [ ] So usare la review AI come supporto, non come validazione finale
- [ ] So confrontare review AI e review umana
- [ ] So motivare le modifiche accettate
- [ ] So documentare cosa resta da verificare
- [ ] So collegare il lavoro svolto al project work finale

## Checkpoint docente

Durante il confronto di chiusura del Blocco 2, verificare che i partecipanti abbiano capito questi tre punti:

1. l'AI puo accelerare la generazione e la review del codice, ma non sostituisce progettazione, test e responsabilita tecnica
2. la qualita del backend dipende dalla separazione delle responsabilita, dalla gestione sicura degli errori e dalla review umana
3. prima del Blocco 3 il project work deve avere una base applicativa comprensibile, verificabile e documentata
