// AKTIN Profil - Laboruntersuchung angefordert
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-laboruntersuchung_angefordert
// FHIR Core Type: ServiceRequest
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.21763
Profile: AKTIN_PR_laboruntersuchung_angefordert
Parent:  ServiceRequest
Id:      aktin-pr-laboruntersuchung_angefordert
Title:   "Laboruntersuchung angefordert"
Description: "Wurde eine Laboruntersuchung angefordert?"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-laboruntersuchung_angefordert"
* insert Meta
* insert Version
* insert Publisher

* identifier MS

* intent 1..1 MS
* intent = #order
* code 1..1 MS
* code.coding MS
* code.coding = $SCT#15220000 "Laboratory test (procedure)"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* authoredOn 1..1 MS
