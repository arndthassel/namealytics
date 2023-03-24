# namealytics

Coding challenge done on March 12, 2023

Vielen Dank für die spannende Challenge! 

## Hinweise

* Optimiert für Android

* Flutter stable 3.3.10

* Zur Architektur: Der Ordner 'screen' enthält die reine UI. Der Ordner 'feature' enthält die Geschäftslogik, die Datenklasse und den API-Service. Aufgrund der Simplizität des API-Calls habe ich auf eine weitere Layer-Aufteilung verzichtet. Der Name 'Feature' erklärt sich aus meinem persönlichen Geschmack (inspiriert durch den YouTube Channel 'CodeOpinion'), dass die Aufteilung nach Feature am übersichtlichsten ist. In größeren Apps würden sich dann Unterorder für jedes Feature finden (siehe Potentiate). Innerhalb jedes Features kann dann eine individuelle Layer-Aufteilung erfolgen.

## Aufgabe


Du möchtest eine App bauen, in der du auf Basis eines angegebenen Namens eine Alterseinschätzung erhältst. 
Folgende Funktionen sollen beinhaltet sein:

- Namenseingabe
- Senden
- Ergebnis
- Neustart

Zur Umsetzung kannst du die kostenlose und offene API von agify nutzen (https://agify.io/).

Vorgaben:
- Flutter als Framework
- Architektur-Pattern deiner Wahl
- BLOC (präferiert) oder Riverpod als State Management Solution

Probiere diesen kleinen Use-Case so realitätsnah wie möglich zu entwickeln, damit wir einen guten Einblick in dein Vorgehen erhalten.

Folgende User Stories dienen als Abnahmekriterien:

1. Als App-Nutzer möchte ich das geschätzte Alter zu einem eingegebenen Namen erfahren.
2. Als App-Nutzer möchte ich die Einschätzung mit einem anderen Namen wiederholen können.

Abgabe: GitHub Repository
