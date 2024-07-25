// AKTIN Profil - Röntgenthorax angefordert
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-rontgenthorax_angefordert
// FHIR Core Type: ServiceRequest
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.29267
Profile: AKTIN_PR_rontgenthorax_angefordert
Parent:  ServiceRequest
Id:      aktin-pr-rontgenthorax_angefordert
Title:   "Röntgenthorax angefordert"
Description: "Wurde ein Röntgenthorax angefordert?"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-rontgenthorax_angefordert"
* insert Meta
* insert Version
* insert Publisher

* identifier MS

* intent 1..1 MS
* intent = #order
* code 1..1 MS
* code.coding MS
* code.coding = $SCT#415232002 "Radiographic procedure of chest (procedure)"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* authoredOn 1..1 MS
