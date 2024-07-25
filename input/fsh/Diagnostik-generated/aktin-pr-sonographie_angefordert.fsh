// AKTIN Profil - Sonographie angefordert
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-sonographie_angefordert
// FHIR Core Type: ServiceRequest
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.29266
Profile: AKTIN_PR_sonographie_angefordert
Parent:  ServiceRequest
Id:      aktin-pr-sonographie_angefordert
Title:   "Sonographie angefordert"
Description: "Wurde eine Sonographie angefordert?"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-sonographie_angefordert"
* insert Meta
* insert Version
* insert Publisher

* identifier MS

* intent 1..1 MS
* intent = #order
* code 1..1 MS
* code.coding MS
* code.coding = $SCT#16310003 "Ultrasonography (procedure)"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* authoredOn 1..1 MS
