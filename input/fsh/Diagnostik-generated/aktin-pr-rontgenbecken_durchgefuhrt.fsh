// AKTIN Profil - Röntgen-Becken durchgeführt
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-rontgenbecken_durchgefuhrt
// FHIR Core Type: Procedure
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.21966
Profile: AKTIN_PR_rontgenbecken_durchgefuhrt
Parent:  Procedure
Id:      aktin-pr-rontgenbecken_durchgefuhrt
Title:   "Röntgen-Becken durchgeführt"
Description: "Wurde ein Röntgen-Becken durchgeführt?"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-rontgenbecken_durchgefuhrt"
* insert Meta
* insert Version
* insert Publisher

* identifier MS

* status 1..1 MS
* status = #completed

* code 1..1 MS
* code.coding MS
* code.coding = $SCT#268425006 "Pelvis X-ray (procedure)"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* occurrence[x] 1..1 MS
* occurrence[x] only dateTime
