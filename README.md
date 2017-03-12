# skolresurser-api
json-api för utbildningsdata är tanken

## Visionen
Du kan nu hämta data och information om utbildningar som ges i Sverige vid yrkeshögskolor, universitet, högskolor, gymnasieskolor och andra instanser där skolverket har insyn, i ett smidigt json-api, som följer REST-principer.

Intressanta möjliga användningsområden

* Samköra data kring socioekonomiska förutsättningar, medellivslängd, partisympatier och andra parametrar, för att se vad det spelar för roll hur nära eller långt bort vidareutbildning finns tillgänglig.
  * Det kan också vara relevant att se vilka geografiska områden där det är glest med tillgång till undervisning i någon form där människor möts, och därk kan det vara lämpligt att se över initiativ till att öppna upp för föreningsliv, och organisationer som pinkprogramming, kodcentrum m.fl. att komma igång.
* Samkör med data kring arbetslöshet, ifall kommunen och orten minskar drastigt i antal invånare, och se ifall snickeriverkstäder, där besökare kan lära sig i eget tempo vid sidan om andra arbeten, eller andra tydliga yrkesinriktade utbildningar, som matchar behov på orten, kan köras i omgångar, för att förändra tillgång på kompetens som behövs i området.

* skolresurser.se -> presentera en samling med material kring hur och vad du kan lära dig om det mesta. Upptäck kurser på distans, en e-bok, och filtrera fram just vad du vill ha:
  * Format (e-bok, video, ljud, handlett workshop/laboration)
  * Längd (X dagar, veckor, månader)
  * CSN berättigande?
  * kostnad

* skolresurser.se...
  * Lärare, föräldrar och elever kan hitta utbildningsmaterial, som stöd och innehåll till utbildning. Demokratiserande effekt att tillgängligöra datan i kombination med goda filter, rekommendationer och "favoriter", så att professionella och erfarna individer snabbt och enkelt kan lyfta fram riktigt bra resurser.
  * Den som kanske är skoltrött i klassisk mening, men ändå vill utvekla kunskaper, hittar andra alternativ
  * Öppnar upp för att lägga till länkar intill olika kurser och program, så att de som studerar kan dela med sig av innehåll även till de som inte har möjlighet att fysiskt närvara på plats, kanske har en livssituation som helt enkelt inte möjliggör studier vid universitet/högskola, men som då alltså kan hänga med i utbildningen, som av någon outgrundlig anledning bara görs tillgänglig bakom stängda dörrar för just de som antagits till utbildningen. (Ett steg på vägen mot målet att göra all statligt finansierad forskning och utbildning öppet tillgänglig för allmännheten)
  * alla medborgare kan hjälpa till med att engagera sig i att resurser får relevanta nyckelord, så att de blir enklare att hitta, extra viktigt för den som har begränsat ordförråd, som kanske inte alls använder samma språkbruk som de som skapar kurserna.
  * framtida möjlighet är att öppna upp för organiserat mentorskap, där den som söker efter vissa ämnen, får fråga direkt på webben om vilken nivå de själva anser sig vara, och ifall de kan tänka sig ställa upp på att vara mentorer för någon som kanske är yngre, och kanske är intresserad av samma ämnesområde, där en kan hitta andra att studera tillsammans med, vara mentor för, eller att du kan hitta mentor.
  * det går att samla in data för att se vilka kompetensområden folk önskar förkovra sig, för att se ifall utbildning i andra former än de klassiska kurserna och långa progrma som ges idag, kan arbjudas.
  * En resurs har lika lätt att finnas tillgänglig för att upptäckas av lärare inom Svenska utbildningssystemet, alltså är det inte längre säljare och utskick ifrån bokförlagen som senaste åren kunnat dominera vad lärare hinner granska. Ett extra bra stöd för nyblivna lärare.
  * Gör det busenkelt att hitta resurser som finns tillgängliga på olika språk. Så om du är intresserad av att lära dig om algoritmer och du råkar tala både svenska och spanska, då kan du hitta och dela med dig av tips om utbildningsresurser för att studera algoritmer, där en del av resurserna är tillgängliga på Spanska.
  * Öppnar upp för att göra utbildningsresurser att hitta på valfritt språk, där språknivån också blir tydligt tillgänglig, så att den som håller på att lära sig ett nytt språk, också då kan kombinera detta med att hitta intressant utbildningsmaterial, på det språket, på en nivå som är tillgänglig för nybörjare i språket, som som tidningen [8 sidor](http://8sidor.se/om-8-sidor/) t.ex.

Jag är övertygad om att vi alla tillsammans kan leva bättre, och orka med att engagera oss i miljöfrågor, jämlikhet och rättvisa, när vi har kompetens som låter oss arbeta och får skälig ersättning, vilket du lättare har tillgång till genom att du fortsätter utbilda dig själv efter vanliga grundskolan.
Jag är också övertygad om att de klassiska formerna av kurser och program, som de ser ut idag, är ett av många bra alternativ, och att vi har goda möjligheter att hjälpa hela befolkningen utvecklas, genom att tillgängligöra resurser för utbildning till alla, och att vi då snabbare kan arbeta för en bättre värld och en schysst resursfördelning, när fler förstår och kan ta tills sig hur verkligheten ser ut, just genom att ens få veta om att verktyg så som gapminder m.fl. alls existerar och hur de kan användas.

## Utveckla:

* [x] Hitta dokumentationen (docs) för "Emil ngnting", har för mig att det var skolverket som tillgängliggjorde denna data?
* [x] Läs igenom dokumentationen
* [x] Hämta data med Elixir.
  * [x] Nytt mix projekt.
  * [x] Lyckas hämta all data och spara som en stor XML.
    * [x] Hämta hem listan med länkar till alla dokument. Sparas i xml-format, för att itereras över för att hämtas
    * [x] Iterera över listan med länkar och hämta hem innehållet i alla dokument.
    * [x] Parse:a xml-dokumentet
* [ ] Spara data i db.
  * [x] Växla ifrån bar mix-projekt till phoenix, smidigare databaskoppling.
  * [x] Fixa postgresstrul ^__^ + confa nginx.
  * [x] Model: educationalResources
  * [ ] Iterera över alla resurser -> save to db som "educationalResource"
    * [ ] Titel (SE/ENG)
    * [ ] Beskrivning (SE/ENG)
    * [ ] Lärosäte
    * [ ] Kommun
    * [ ] susa_id
    * [ ] susa_str_id
* [ ] Visa hur api:et lirar på api.skolresurser.dev.
* [ ] Få upp api till egna db på api.skolresurser.se, inkl. enklare docs.
* [ ] Skapa upp schyssta docs.
* [ ] Skapa upp kom igång tutorial.
* [ ] Få upp allting på vps
* [ ] cronjob som hämtar uppdateringar en gång per dygn kanske.
* [ ] webgränssnitt som konsumerar api:et

Tankar och idéer:
- Det vore ju trevligt om allmännheten kan bidra med nyckelord och att vi alla kan hjälpas åt att göra utbildningsresurser lättare att hitta och utforska.
- Enklare för utlandsfödda att få hjälp med att hitta kurser och utbildningar, där en kanske inte vet vad som är lämpliga termer att söka på, men kan fylla i intressen och liknande, helt andra ord än vad den som annordnar utbildningen tänkt på.
- Kombinera denna data med andra källor till fakta, data och kunskap, alltså även tips på e-böcker, kurser, konferenser, hemsidor, böcker, podcasts m.m.m. så att den som vill förkovra sig inom ett ämna ska kunna hitta pålitliga tips, och även se listor på utbildningsmaterial i ordning efter rekommendationer m.m.
- Lärare kan snabbare och enklare kunna upptäcka relevant material, och kan dela med sig av egna resurser till andra lärare, men också direkt ut till elever.


## Användarvänligt API
Hur vill jag att json-api:et ska fungera när jag konsumerar det? 
Hur skulle andra vilja att det lirar?
Alltid inspirerande: How to design a good api, and why it matters:
https://www.youtube.com/watch?v=aAb7hSCtvGw
Här fanns lite åsikter att skumma igenom:
http://www.vinnova.se/sv/Var-verksamhet/Strategiskt-viktiga-kunskapsomraden/Tjanster-och-IKT/Oppen-innovation/Oppna-data/

## Datakällor:
* Emil
  * [Dokumentation: Om Emilprojektet](http://www.sis.se/emil)
  * [Dokumentation Emil-apiet](http://www.sis.se/PageFiles/11322/H%c3%a4mta%20EMIL%202.0-information%20fr%c3%a5n%20SUSA-navet.pdf) (Hämta öppen data ifrån skolverket, högskole- och universitetsutbildningar bl.a.)
* http://opendata.skolverket.se/



## Resurser jag vill utforska senare:
Post- och telestyrelsen har skapat ett programmeringsgränssnitt (så kallat API, Application Programming Interface). API:et för tjänsten ”Sök operatör” kan användas för att ta reda på vilken operatör ett visst telefonnummer tillhör. Gränssnitten kan till exempel användas för att bygga så kallade appar till smarta telefoner. http://e-tjanster.pts.se/internet/api
