// AKTIN Profil - Parameter der Ersteinschätzung
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-parameter_der_ersteinschatzung
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.29249
Profile: AKTIN_PR_parameter_der_ersteinschatzung
Parent:  Observation
Id:      aktin-pr-parameter_der_ersteinschatzung
Title:   "Parameter der Ersteinschätzung"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-parameter_der_ersteinschatzung"
* insert Meta
* insert Version
* insert Publisher

* identifier MS

* category MS

* code MS
* code.coding MS

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* effective[x] 1..1 MS
* effective[x] only dateTime

* component ^slicing.discriminator.type = #pattern
* ^slicing.discriminator.path = "code"
* ^slicing.rules = #open
* component contains
   aktin-pr-ergebnis_der_ersteinschatzung 1..1  and
   aktin-pr-manchester_triage_system 0..1  and
   aktin-pr-esitriage 0..1 
* component[aktin-pr-ergebnis_der_ersteinschatzung] only Reference(AKTIN_PR_ergebnis_der_ersteinschatzung)
* component[aktin-pr-manchester_triage_system] only Reference(AKTIN_PR_manchester_triage_system)
* component[aktin-pr-esitriage] only Reference(AKTIN_PR_esitriage)
