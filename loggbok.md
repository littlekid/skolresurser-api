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
![flöde SUSA-navet](https://github.com/littlekid/skolresurser-api/blob/master/readme-images/flode_emilsamarbete_2015-03-13.gif)
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
* Hmmm... vad innebär utbildningstillfälle? (?EEFormOfStudy=distance ?EEFormOfStudy=normal)
   - I dokumentationen står det "ett filter för att välja ut utbildningstillfällen som ges på distans eller inte".. men kurser kan väl ha en blandning av utbildning på distans och att en del prov ibland måste skrivas på orten? och "utbildningstillfälle", talar vi inte längre om hela kurser? Varför inte kalla det för _kurs_ om det är en kurs? Och om det inte är kurs, vad är det då?!
  - Under #### EELanguage=[lang], används plötsligt "kurstillfällen". Så är utbildningstillfällen och kurstillfällen samma sak eller olika saker?
  Pratade med en Stefan, väldigt trevlig person ifrån SCB, och det är inte helt klart vad de 6siffriga koderna är, sedan kom vi nog ändå fram till att det var indelningar, stadsdelar, som endast finns i vissa kommuner i Sverige. Fick vidare hjälp ifrån två andra personer ifrån SCB, men det som finns publikt tillgängligt är: 
  - [URB](http://www.statistikdatabasen.scb.se/pxweb/sv/ssd/START__AA__AA0003__AA0003B/IntGr1LUA/?rxid=3c68b00f-670c-4f78-ba5e-9d2ffa559f3f)
  - [LUA-områden](http://www.statistikdatabasen.scb.se/pxweb/sv/ssd/START__AA__AA0003__AA0003B/IntGr1LUA/?rxid=3c68b00f-670c-4f78-ba5e-9d2ffa559f3f)
  - ... det är alltid något! Börjar med att helt enkelt strunta i 6-siffriga indelningarna, kanske skolverket eller SCB är snälla och delar med sig av dessa om en frågar snällt i ett mail (TODO). För att hitta tillbaka dit: http://www.statistikdatabasen.scb.se/pxweb/sv/ssd/?rxid=3c68b00f-670c-4f78-ba5e-9d2ffa559f3f -> Scrolla längst ner -> Ämnesövergripande statistik -> Registerdata för integration -> Statistik med inriktning mot arbetsmarkanden ->
  ... var var jag? Just det. Område.
    - Har lärt mig att första två siffrorna i de 4-siffriga kommunkoderna är län. 01 är visst stockholm.
    - Fanns inte någon färdig tabell med kommunkoder ihop med namn, men det gick att få ut som en del av lista med annan statistik, så genom att hämta t.ex. befolkningsstatistik ifrån SCB (http://www.scb.se/hitta-statistik/statistik-efter-amne/befolkning/befolkningens-sammansattning/befolkningsstatistik/) så fylldes en kolumn med kommunkod och komunens namn i en och samma kolumn, åtskilda med ett mellanslag, så då kunde jag nyttja editor för att snabbt plocka bort allt annat, och sedan skilja kod och namn åt med ett kommatecken, för att snabbt och smidigt kunna lägga in dessa som data att läsa ifrån senare. Just nu har jag bara sparat dessa som en egen .CSV-fil. Lägger till den i repo't.
- Fick tips om kolada.se, men ser inte vid snabb granskning hur jag kunde fått ut kommunkoderna där. När jag kikar på https://github.com/Hypergene/kolada så ser jag att jag kan få ut koder igen (ex: http://api.kolada.se/v2/ou?municipality=0114&title=skola), men inte vilket län koden hänger ihop med.


De exempel som visas på sidan är:
    ?EEMunicipality=1880,1890
18 är alltså: Örebro län, 1880 -> kommunen Örebro,  men 1890 som finns med i exemplet... finns inte med i datan ifrån SCB, sannolikt så att kommuner har slagits ihop helt enkelt. 
  * Har också lärt mig att de som slutar på "80" är huvudkommuner i ett län, och fick tidigare varning om att tänka på att *behandla kommunkoderna som tecken, inte tal (siffror), eftersom en del börjar på 0*.
* Läser "EIAcademicType filtrerar på typ av skolform. Giltiga värden finns specificerade i EMIL 2.0 i
värdeförrådet OrganisationForm." och konstaterar att jag behöver leta upp vilka giltiga skolformer som finns. 
Tänkte _jag söker på nätet_ efter " EMIL 2.0 i värdeförrådet OrganisationForm", men så kom jag just på att jag väl hade en sida uppe förut med information om Emil, kanske finns det där. Skummar loggboken efter url.
  * Hittat! (http://www.sis.se/emil)
* Kan också lägga till att font-storleken på sidan: http://www.sis.se/emil är hemskt liten, speciellt om du sitter på skärm med sisådär upplösning. Inga problem, ju bara att zooma in i webbläsaren... men kanske värt att öka storleken?
* Börjar med att kolla under rubriken "Värdeförråd", eftersom det står " EMIL 2.0 i värdeförrådet OrganisationForm ".. Men där finns bara [Ämnesvokabulär](https://backweb.antagning.se/nya/vocabExport.jsp?vocabName=subject&lang=sv) och [Examensvokabulär](https://backweb.antagning.se/nya/vocabExport.jsp?vocabName=degree&lang=sv)
* Kollar vidare på [sidan](http://www.sis.se/emil).
  * Hittar: [Här hämtar du senaste EMIL-standarden](http://www.sis.se/informationsteknik-kontorsutrustning/it-till%C3%A4mpningar/%C3%B6vrigt/ss-107002013) - Standarden är kostnadsfri men kräver registrering.
    * Skakar på huvudet åt att det står _köp_ när dokumentet jag söker kostar 0kr.
    * Tänker "Nu skapar jag ett konto för att kunna ladda ner...".. men konstaterar att det inte är uppenbart hur. Jag testar att klicka på Köp (kunde ju stått "ladda ner/visa") för att se ifall det visar "registrera dig".
    * Ser på sidan att standarden fastställdes nov 2013, det är nu ~ 3,5 år sedan.
    * Varukorg visades. Jag testar "Till kassan"-knappen.
    * Jag inser att jag måste upptäcka den lilla stängda fliken "Jag handlar för första gången på sis.se".   ... och att sidan undrar "Har du rabattkod?" på en produkt som kostar 0kr.
    * Fast att jag väljer att jag är privatperson, så måste jag fylla i "Organisationsna..." nehe, nu så! Det tog bara lite tid för sidan att ändra om formuläret. Varför måste jag uppge personnummer för att få tillgång till standard för hur vår utbildningsdata i sverige är strukturerad?! INTE OK! Att jag ska behöva registrera mig hos https://www.sis.se, som ju är en separat intresseorganisation, för att komma åt detta. Känner mig ledsen för detta.
    * Böjer mig för systemet för att komma vidare, eller hmmm, undrar om jag kommer undan med att ange 0:or som personnummer, testar. Fältet för att uppge sitt personnummer är för smalt, som i att alla siffror inte visas framme samtidigt.. så det är lätt att missa att se ifall en har fyllt i allt korrekt eller inte. 
    * Deeeeeeeet var det värsta. En captcha med bokstäver som rör sig. Seriöst? Klickar på Registrera dig ... men det fungerar inte. Högst oklart varför det inte fungerar. Alla fält är obligatoriska, men jag får ingen information om vilket fält jag inte fyllt i på ett sätt som önskas...
    * kl: 18:30 - Jag lyckas inte skapa konto, en annan person försökte också, för att hjälpa mig, men lyckas inte logga in, en tredje person lyckas skapa konto, och lyckas logga in, men möts av att dokumentet görs tillgängligt... _inom 48h_. hmmm
  * Jag ger mig för stunden och accepterar att det finns minst två alternativ (Gymnasieskola och Högskoleutbildning) och att jag säkert helt enkelt kommer kunna se andra val i den data jag sedan laddar ner. Fortsätter med cheat sheet.
  * ?GetAll&SelectEP=EI är ju hur konstig som helst. "Visa alla dokument, välj lärosäten som kurser".. så läser jag det sista exemplet. Tokrörigt. Varför skulle jag lägga till "GetAll", när det redan finns tre andra sätt att välja att få alla... ?

* Wow! :D Det var alles!!! wohooo!!!
* Allright! Vidare till nästa steg. Ladda ner all data, gissar att det tar några minuter, och sedan lyckas spara det i vettig form! :D

* Ska klura ut hur jag kan hämta ner all data till en stor XML-fil med Elixir
* .. trevliga besökare kom förbi och det tog en stund, men trevligt som vanligt! :D
* argh! frustrerande! api:et svarar väldigt långsamt.. så när något inte lirar, så undrar en ifall det bara är att vänta en stund till, eller ifall en råkat köra igång en loop som tar lång tid... Detta trots att jag köra att jag endast vill hämta dokuement som uppdaterats senaste 2 dagarna(!)
* Vad sjutton... Jag lyckas ju spara länkar till dokument med t.ex. (http://supernavet.skolverket.se/SusaNavExport/EmilExporter?UpdatedSince=2017-03-10), och sedan itererar jag över dessa länkar för att hämta de... men jag får ju bara skräp tillbaka när jag försökter hämta varje dokument.. Får jag bara info om när dokumenten uppdaterades? 
```    
"<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?><ss1:educationEvent xmlns:ss1=\"http://www.sis.se/ss10700 /EMIL2.01\" xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\"><ss1:identifier>e.sv.23306658ESEST</ss1:identifier><ss1:education>i.sv.ESEST</ss1:education><ss1:provider>p.sv.23306658</ss1:provider><ss1:lastEdited>2017-03-10T19:00:41.002+01:00</ss1:lastEdited><ss1:expires>2018-12-01</ss1:expires><ss1:execution><ss1:condition>3</ss1:condition></ss1:execution></ss1:educationEvent>"
"<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?><ss1:educationEvent xmlns:ss1=\"http://www.sis.se/ss10700/EMIL2.01\" xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\"><ss1:identifier>e.sv.42022406ESEST</ss1:identifier><ss1:education>i.sv.ESEST</ss1:education><ss1:provider>p.sv.42022406</ss1:provider><ss1:lastEdited>2017-03-10T19:00:41.005+01:00</ss1:lastEdited><ss1:expires>2018-12-01</ss1:expires><ss1:execution><ss1:condition>3</ss1:condition></ss1:execution></ss1:educationEvent>"
"<?xml version=\"1.0\" encoding=\"UTF-8\" standalone=\"no\"?><ss1:educationEvent xmlns:ss1=\"http://www.sis.se/ss10700/EMIL2.01\" xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\"><ss1:identifier>e.sv.75082280ESEST</ss1:identifier><ss1:education>i.sv.ESEST</ss1:education><ss1:provider>p.sv.75082280</ss1:provider><ss1:lastEdited>2017-03-10T19:00:40.983+01:00</ss1:lastEdited><ss1:expires>2018-12-01</ss1:expires><ss1:execution><ss1:condition>3</ss1:condition></ss1:execution></ss1:educationEvent>"
```
* ... inser att jag bara får länkar till dokument som berättar när de dokumenten uppdaterades/att de är uppdaterade, så att en kan använda dessa ID'n för att hämta de igen, men inga länkar till själva dokumentet.
* När jag istället hämtar ALLA resurser.. då får jag länkar som faktiskt går till dokument, och då upptäcker jag ``` http://supernavet.skolverket.se/SusaNavExport/EmilObjectExporter?id=232965362&amp;strId=e.fbr.19446.354898 ```, alltså EmilObjectExporter, som ju är en alldeles egen metod (endpoint, lämpligt svenskt namn för det?!).. som inte alls fanns med i dokumentationen. Den åker in i cheat sheet! :)
