// AKTIN Profil - EKG angefordert
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-ekg_angefordert
// FHIR Core Type: ServiceRequest
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.29265
Profile: AKTIN_PR_ekg_angefordert
Parent:  ServiceRequest
Id:      aktin-pr-ekg_angefordert
Title:   "EKG angefordert"
Description: "Wurde ein 12-Kanal-EKG angefordert?"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-ekg_angefordert"
* insert Meta
* insert Version
* insert Publisher

* identifier MS

* intent 1..1 MS
* intent = #order
* code 1..1 MS
* code.coding MS
* code.coding = $SCT#29303009 "Electrocardiographic procedure (procedure)"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* authoredOn 1..1 MS
