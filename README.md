# skolresurser-api
json-api för utbildningsdata är tanken

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
  * [ ] Model: educationalResources
  * [ ] Iterera över alla resurser -> save to db som "educationalResource"
    * [ ] Titel (SE/ENG)
    * [ ] Beskrivning (SE/ENG)
    * [ ] Lärosäte
    * [ ] Kommun
    * [ ] susa_id
    * [ ] susa_str_id
* [ ] Få upp api till egna db på api.skolresurser.se, inkl. enklare docs.
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
