# namealytics

Update: Funktionalität komplett. Issue 'Async Event Handling' gelöst & Error Handling hinzugefügt.

Vielen Dank für die spannende Challenge! 

## Hinweise

* Optimiert für Android

* Flutter stable 3.3.10

* Zur Architektur: Der Ordner 'screen' enthält die reine UI. Der Ordner 'feature' enthält die Geschäftslogik, die Datenklasse und den API-Service. Aufgrund der Simplizität des API-Calls habe ich auf eine weitere Layer-Aufteilung verzichtet. Der Name 'Feature' erklärt sich aus meinem persönlichen Geschmack (inspiriert durch den YouTube Channel 'CodeOpinion'), dass die Aufteilung nach Feature am übersichtlichsten ist. In größeren Apps würden sich dann Unterorder für jedes Feature finden (siehe Potentiate). Innerhalb jedes Features kann dann eine individuelle Layer-Aufteilung erfolgen.

Angefangen: ca. 8.15 Uhr

Ergebnis 14.15 Uhr (inklusive Pausen): 
* App ist funktional (mit Dummy-Daten für GetAgeState.success())
* UI steht (außer Error Handling).
* Blocker beim Async Event Handling in get_age_bloc.dart: (Aufgetreten nach ca. 5h)
* Später am Tag gelöst.
* Dann Error Handling implementiert.
