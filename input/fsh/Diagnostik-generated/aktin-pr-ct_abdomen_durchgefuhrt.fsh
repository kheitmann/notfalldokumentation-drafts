// AKTIN Profil - CT Abdomen durchgeführt
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-ct_abdomen_durchgefuhrt
// FHIR Core Type: Procedure
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.21978
Profile: AKTIN_PR_ct_abdomen_durchgefuhrt
Parent:  Procedure
Id:      aktin-pr-ct_abdomen_durchgefuhrt
Title:   "CT Abdomen durchgeführt"
Description: "Wurde ein selektives CT des Abdomens durchgführt?"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-ct_abdomen_durchgefuhrt"
* insert Meta
* insert Version
* insert Publisher

* identifier MS

* status 1..1 MS
* status = #completed

* code 1..1 MS
* code.coding MS
* code.coding = $SCT#169070004 "Computed tomography of abdomen (procedure)"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* occurrence[x] 1..1 MS
* occurrence[x] only dateTime
