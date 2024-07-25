// AKTIN Profil - BGA angefordert
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-bga_angefordert
// FHIR Core Type: ServiceRequest
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.29264
Profile: AKTIN_PR_bga_angefordert
Parent:  ServiceRequest
Id:      aktin-pr-bga_angefordert
Title:   "BGA angefordert"
Description: "Wurde eine BGA angefordert?"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-bga_angefordert"
* insert Meta
* insert Version
* insert Publisher

* identifier MS

* intent 1..1 MS
* intent = #order
* code 1..1 MS
* code.coding MS
* code.coding = $SCT#278297009 "Blood gas analysis (procedure)"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* authoredOn 1..1 MS
