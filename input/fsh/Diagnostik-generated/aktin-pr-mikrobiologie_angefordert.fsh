// AKTIN Profil - Mikrobiologie angefordert
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-mikrobiologie_angefordert
// FHIR Core Type: ServiceRequest
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.21764
Profile: AKTIN_PR_mikrobiologie_angefordert
Parent:  ServiceRequest
Id:      aktin-pr-mikrobiologie_angefordert
Title:   "Mikrobiologie angefordert"
Description: "Wurde ein Mikrobiologische Untersuchung angefordert?"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-mikrobiologie_angefordert"
* insert Meta
* insert Version
* insert Publisher

* identifier MS

* intent 1..1 MS
* intent = #order
* code 1..1 MS
* code.coding MS
* code.coding = $SCT#19851009 "Microbiology procedure (procedure)"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* authoredOn 1..1 MS
