# namealytics

Vielen Dank für die spannende Challenge! 

## Hinweise

* Optimiert für Android

* Zur Architektur: Der Ordner 'screen' enthält die reine UI. Der Ordner 'feature' enthält die (meiste) Geschäftslogik, die Datenklasse und den API-Service. Aufgrund der Simplizität des API-Calls habe ich auf eine weitere Layer-Aufteilung verzichtet. Der Name 'Feature' erklärt sich aus meiner persönlichen Meinung (inspiriert durch den YouTube Channel 'CodeOpinion'), dass die Aufteilung nach Feature in größeren Apps am übersichtlichsten ist. Dort würden sich dann Unterorder für jedes Feature befinden (siehe Potentiate). Innerhalb jedes Features kann dann eine individuelle Layer-Aufteilung erfolgen.

Angefangen: ca. 8.15 Uhr

Ergebnis nach 6h: 
* App ist funktional (mit Dummy-Daten für GetAgeState.success())
* UI steht (außer Error Handling).
* Blocker beim Async Event Handling in get_age_bloc.dart: (Aufgetreten nach ca. 5h)
* Deswegen leider nicht mehr zur Implementierung des Error Handling gekommen.
* Lösungsversuch siehe Branch 'fix_asyn_event_handling'.