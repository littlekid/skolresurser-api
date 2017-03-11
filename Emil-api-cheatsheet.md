# Emil
[Hämta data ifrån SUSA-navet (komplett dokumentation)](http://www.sis.se/PageFiles/11322/H%c3%a4mta%20EMIL%202.0-information%20fr%c3%a5n%20SUSA-navet.pdf)

## Om api:et
**baseurl** http://supernavet.skolverket.se/SusaNavExport/EmilExporter
### Dokument
lärosäte(Provider), kurs(info), kurstillfälle(event)

## Filter
Filter med prefix:
“EI” - infodokument (kurser), 
“EE” - eventdokument (kurstillfällen).

Mer:
* " Filter utan prefix filtrerar alla typer av dokument. "
* " De flesta filter påverkar endast en typ av dokument. Vilken typ som påverkas framgår av filtrets
prefix. "

## Urval (urval är ju ett slags filter? ^^)
Typ av dokument:
* SelectEP (lärosäte)
* SelectEI (kurs)
* SelectEE (kurstillfälle)

Går bara att välja om du angivit minst ett filter (VARFÖR?)

## Exempel
### Få ut kurser, som ges på svenska, på högskolor + resp. lärosäte:
    ?EELanguage=swe&EIAcademicType=högskoleutbildning&SelectEI=EP

### Kombinera SELECT: Alla kurstillfällen som ges på svenska, samt kursinformtion och information om lärosäte
    ?EELanguage=swe&SelectEE=EI,EP
