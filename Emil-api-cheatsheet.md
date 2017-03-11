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

#### ?NotExpired
NotExpired används för att välja ut EMIL-dokument som inte har passerat utgångsdatum. Om det
här filtret inte används så finns dokument som är upp till 30 dagar efter utgångsdatum med i
resultatet.

#### ?UpdatedSince=2017-02-30
Endast dokument som uppdaterats sedan ett visst datum.

#### EEFormOfStudy=[distance,normal]
?EEFormOfStudy=distance
?EEFormOfStudy=normal
- I dokumentationen står det "ett filter för att välja ut utbildningstillfällen som ges på distans eller inte".. men kurser kan väl ha en blandning av utbildning på distans och att en del prov ibland måste skrivas på orten? och "utbildningstillfälle", talar vi inte längre om hela kurser? Varför inte kalla det för _kurs_ om det är en kurs? Och om det inte är kurs, vad är det då?!

#### EELanguage=[lang]
lang -> **ISO 639-3** (treställiga språkkoder)
Ex: swe, eng
?EELanguage=swe

#### EEMunicipality=<kod>[,<kod>[,...]]
* Område, koder enligt SCB.
  * [Fyrsiffrig kod för kommun](https://github.com/littlekid/skolresurser-api/blob/master/data/kommunkoder-kommunnamn.csv)
  ~* Sexsiffrig kod för "kommun och stadsdel / kommundel"~
  ?EEMunicipality=1880,1884

## Urval (urval är ju ett slags filter? ^^)
Typ av dokument:
* SelectEP (lärosäte)
* SelectEI (kurs)
* SelectEE (kurstillfälle)

Går bara att välja om du angivit minst ett filter (VARFÖR?)

## Exempel
### Få ut kurser, som ges på svenska, på högskolor + resp. lärosäte:
    http://supernavet.skolverket.se/SusaNavExport/EmilExporter
    ?EELanguage=swe&EIAcademicType=högskoleutbildning&SelectEI=EP

### Kombinera SELECT: Alla kurstillfällen som ges på svenska, samt kursinformtion och information om lärosäte
    http://supernavet.skolverket.se/SusaNavExport/EmilExporter
    ?EELanguage=swe&SelectEE=EI,EP

