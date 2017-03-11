# skolresurser-api
json-api för utbildningsdata är tanken

* [ ] Kolla hur jag får ut data, hitta docs för "Emil ngnting", har för mig att det var skolverket som tillgängliggjorde denna data?
* [ ] Hämta data med Elixir.
* [ ] Spara data i db.
* [ ] Få upp api till egna db på api.skolresurser.se, inkl. enklare docs.
* [ ] Få upp allting på vps
* [ ] cronjob som hämtar uppdateringar en gång per dygn kanske.
* [ ] webgränssnitt som konsumerar api:et

Tankar och idéer:
- Det vore ju trevligt om allmännheten kan bidra med nyckelord och att vi alla kan hjälpas åt att göra utbildningsresurser lättare att hitta och utforska.
- Enklare för utlandsfödda att få hjälp med att hitta kurser och utbildningar, där en kanske inte vet vad som är lämpliga termer att söka på, men kan fylla i intressen och liknande, helt andra ord än vad den som annordnar utbildningen tänkt på.
- Kombinera denna data med andra källor till fakta, data och kunskap, alltså även tips på e-böcker, kurser, konferenser, hemsidor, böcker, podcasts m.m.m. så att den som vill förkovra sig inom ett ämna ska kunna hitta pålitliga tips, och även se listor på utbildningsmaterial i ordning efter rekommendationer m.m.
- Lärare kan snabbare och enklare kunna upptäcka relevant material, och kan dela med sig av egna resurser till andra lärare, men också direkt ut till elever.

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



## Användarvänligt API
Hur vill jag att json-api:et ska fungera när jag konsumerar det? 
Hur skulle andra vilja att det lirar?
Alltid inspirerande: How to design a good api, and why it matters:
https://www.youtube.com/watch?v=aAb7hSCtvGw
Här fanns lite åsikter att skumma igenom:
http://www.vinnova.se/sv/Var-verksamhet/Strategiskt-viktiga-kunskapsomraden/Tjanster-och-IKT/Oppen-innovation/Oppna-data/

## Datakällor:
http://opendata.skolverket.se/



## Resurser jag vill utforska senare:
Post- och telestyrelsen har skapat ett programmeringsgränssnitt (så kallat API, Application Programming Interface). API:et för tjänsten ”Sök operatör” kan användas för att ta reda på vilken operatör ett visst telefonnummer tillhör. Gränssnitten kan till exempel användas för att bygga så kallade appar till smarta telefoner. http://e-tjanster.pts.se/internet/api
