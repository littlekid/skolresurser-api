## Loggbok:
Inga relevanta träffar på dessa sökningar som jag började med:
* "emil utbildningsdata"
* "utbildningsdata öppen data emil"
* "utbildningsdata sverige"
* "öppen utbildningsdata utbildningar sverige"
* ... "öppen utbildningsdata utbildningar sverige api" visar en undersida på opendata.se som resultat #6. Kanske hittar jag tillbaka den vägen. Kanske borde jag gå in på skolverkets/skolstyrelsens hemsida?
  Undersidan som kom upp: http://www.opendata.se/2010/05/vhs-statistik.html
* kom på att jag vet att apikatalogen.se finns, kanske hittar jag där.
  ... inget där heller när jag på sidan söker efter "utbildning", detta resultat kommer upp: http://apikatalogen.se/api/skanergy-api
* http://www.sis.se/ kom upp, men ingen lycka där heller, annat än att "emil" nämns i en pdf där några skriver om samarbete kring att organisera data?
* Sökte på "skolverket öppen data" och fann: http://opendata.skolverket.se/, den sidan hade gärna fått tipsa om den resurs jag söker efter. Sparar dock denna länk till senare, eftersom det kan vara relevant att även samla information om olika gymnasieutbildningar.
* "skolstyrelsen öppen data" gav inte heller något
* "skolstyrelsen öppen data emil databas utbildningar i sverige"
* http://www.vinnova.se/sv/Var-verksamhet/Strategiskt-viktiga-kunskapsomraden/Tjanster-och-IKT/Oppen-innovation/Oppna-data/ kom upp i någon av sökningarna, hade kvar fliken, som "värd att skumma igenom". Ser att PTS öppnat upp ett API för att kolla vilken operatör ett telefonnummer är kopplat till. Intressant. Sparat
Post- och telestyrelsen har skapat ett programmeringsgränssnitt (så kallat API, Application Programming Interface). API:et för tjänsten ”Sök operatör” kan användas för att ta reda på vilken operatör ett visst telefonnummer tillhör. Gränssnitten kan till exempel användas för att bygga så kallade appar till smarta telefoner. http://e-tjanster.pts.se/internet/api
* 11:46, nu känner jag att jag närmar mig. sökningen "emil xml data utbildningar i sverige", gav mig http://www.sis.se/emil som första resultat. Den bilden känner jag igen! 
![flöde SUSA-navet](https://github.com/littlekid/skolresurser-api/blob/master/flode_emilsamarbete_2015-03-13.gif)
* Funderar på ifall jag får visa upp bilden över hela flödet, och var bilden ursprungligen kommer ifrån. Jag har ju för mig att jag sett den någon annanstans tidigare. Här finns en länk: "Instruktion för att hämta från SUSA-navet", som leder till:
http://www.sis.se/PageFiles/11322/H%c3%a4mta%20EMIL%202.0-information%20fr%c3%a5n%20SUSA-navet.pdf
Där har vi den! api-dokumentationen funnen! Har skolverket anstängt sig för att göra api-dokumentationen svår att hitta?
Ser också att det tydligt står (c) 2013 Skolverket. Varför känner skolverket att det var en relevant och viktig upphovsrättsmarkering? 
* Flytta ut loggboken till separat fil.
* Öppnar upp tre länkar ifrån http://www.sis.se/emil, och skummar ifall de kanske är relevanta:
  * [Förvaltning av SS10700, tillhörande värdeförråd och XML-scheman. Detta dokument beskriver aktuella förhållanden i EMIL 2-
samarbete](http://www.sis.se/PageFiles/11322/TK450%20AG05%20F%c3%b6rvaltning%20EMIL%202%202014-06-03.pdf)
  * [Ändringscykeln](http://www.sis.se/PageFiles/11322/%c3%84ndringscykeln.pdf)
  * ["Kontakta oss"](http://www.sis.se/innehall/om-sis/SIS-erbjuder-dig/Aktuella-seminarier/fragor_emil1/)
  
  Ändringscykeln gör mig lite mörkrädd, men det ligger säkert en del erfarenhet, bakom sådan struktur. Ser _trögt_ ut.
Kontakta oss var ett läskigt anonymt formulär. Finns det ingen _person_, eller enhet en kan vända sig till? Är det formuläret enda kontaktvägen in?

* Hoppar tillbaka till apidokumentationen. Vill testa första länken som ges som exempel. Försöker trippelklicka för att markera hela länken, men pdf-en verkar vara felaktigt formaterad, länken går inta att markera och kopiera. 
  * Kontrollerade att det inte berodde på konstiga zoom-inställningar i webbläsaren. Nepp. Men när jag försöker klistra in länken här i loggboken, så ser jag att hela länken följde med, det var bara textmarkeringen som var underlig.
  * Länken: http://supernavet.skolverket.se/SusaNavExport/EmilExporter?filter
  * Spännande! Vad får jag när jag besöker länken?!
    ... "Unknown filtertype:filter" (besökte länken rakt av i webbläsaren). Så första länken, är till ett teoretiskt, ej faktiskt fungerande alterantiv. Synd.
  * I dokumentet står det "Det förutsätts att läsaren har kunskap om Svensk Standard SS 10700... ". Hur tänkte ni nu? Ska en verkligen behöva sätta sig in i en slags standard för att alls prata med api:et? Skulle inte tro det. Hela meningen är:
  Det förutsätts att läsaren har kunskap om Svensk Standard SS 10700 och EMIL 2.0 med avseende på typer, dokument, struktur och värdeförråd.
  * Jag lägger märke till xhtml, och börjar fundera över hur det skiljer sig ifrån xml. *söker information kring detta*
  * En stunds intressant läsning: http://www.differencebetween.net/technology/internet/difference-between-xml-and-xhtml/
  * Kan inte låta bli att skumma: http://www.differencebetween.net/technology/software-technology/difference-between-xhtml-and-html5/, och minns den gamla goda tiden. (länk fanns längst ner på sidan difference between xml and xhtml.
  * xhtml -> subset av xml, och det ska fungera att parse:a xhtml med vanliga xml parsers.
  * Funderar en stund på vad det här betyder: "Det finns två typer av argument: filter som begränsar urvalet och val av vilken typ av refererande dokument man vill få ut (provider / lärosäte, info / kurs, event / kurstillfälle)."
    * filter som begränsar urvalet
    * vilken typ av refererande dokument man vill få ut (provider / lärosäte, info / kurs, event / kurstillfälle)
  * Ska inte "De flesta filter påverkar endast en typ av dokument. ", vara "ett typ av dokument?", att det är dokumentet som är det huvudsakliga? jag förstår ju att det är "en typ". TODO: försöka hitta någon som kan hjälpa mig resonera kring denna fundering
  * Kännrt mig lite inspirerad till att göra en "Emil cheatsheet". Jag tror att en tabell med information under "Använda filter", med de filter som finns, hade kunnat vara hjälpsamt? Ser nu att alla filter visas i löpande text lite längre ner.
  * Medan jag fortsätter läsa dokumentationen noga, skapar jag upp cheatsheet (separat fil i detta repo).
  * Va? Det här upplever jag inte alls logiskt:
    Om ett eventfilter finns angivet kommer exporten alltid att leverera kurstillfällen, oavsett om det finns infofilter angivna. Det beror på att det bildas två mängder som inte berör samma värden (kurser och kurstillfällen). Då snittet av dessa mängder alltid skulle vara tomt, konverteras automatiskt kurserna till tillhörande kurstillfällen. Som exempel kommer följande filterkombination att skicka ut kurstillfällen då det är ett eventfilter (EE) angett. ?EELanguage=swe&EIAcademicType=högskoleutbildnig" - tolkar det ~ som att om du är dum nog att fråga efter något som ger 0 svar, så klurar vi ut att du nog vill ha en del svar ändå, och skickar dig de. ^__^'. Men egentligen handlar det väl helt enkelt om att förklara något riktigt konstigt ändå? Självklart kommer ju kurser och allting annat som matchar att komma med? Filtret är väl där för att exkludera material? TODO: Jag får nog helt enkelt testa att köra dessa två separat, alltså ?EELanguage=swe och ?EIAcademicType=högskoleutbildning för att sedan jämföra med exemplet där båda körs.
  * "Går bara att välja om du angivit minst ett filter" ...vaffö gör de på detta viset?
  * Hmmmm... vad är det för skillnad på "kurs" och "kurstillfälle"? Jag anar att en kurs, med en och samma beskrivning, kan ges vid flera tillfällen, t.ex. vår och höst, eller kanske 50%-takt vissa perioder och 100%-takt andra perioder, men att det ändå är samma kurs.
  * Känns lite meningslöst att alls skapa upp cheatsheeten, bättre att bara dra hem all data och själv strukturera upp den vettigt är känslan. Men nu har jag ju börjat...
  
* PAUS - lunch. Också träffat och pratat med representanter ifrån Naturvårdsverket och Transportstyrelsen.

* Datumexempel. Förslag: Alltid använda datum där det är uppenbart vad som är månad och vad som är dag. D.v.s. istället för att köra ex: ?UpdatedSince=2013-02-10, så kunde en istället tagit datumen 2013-02-28, då blir det uppenbart att sista två siffrorna är dag, och kan inte förväxlas med månad.
* Varför är vissa saker på engelska trots allt? Allt(?) annat har varit på svenska hittills, men så är FormOfStudy plötsligt på engelska. Jag ser gärna att allting är på engelska, just för att undvika åäö, men om det ska vara på svenska, så ska väl ändå allt vara konsekvent på svenska?
* Hmmm... vad innebär utbildningstillfälle?
   ?EEFormOfStudy=distance ?EEFormOfStudy=normal
   - I dokumentationen står det "ett filter för att välja ut utbildningstillfällen som ges på distans eller inte".. men kurser kan väl ha en blandning av utbildning på distans och att en del prov ibland måste skrivas på orten? och "utbildningstillfälle", talar vi inte längre om hela kurser? Varför inte kalla det för _kurs_ om det är en kurs? Och om det inte är kurs, vad är det då?!
  
  
  
  
  
