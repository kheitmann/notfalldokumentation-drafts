// AKTIN Profil - Röntgen-Wirbelsäule durchgeführt
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-rontgenwirbelsaule_durchgefuhrt
// FHIR Core Type: Procedure
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.21968
Profile: AKTIN_PR_rontgenwirbelsaule_durchgefuhrt
Parent:  Procedure
Id:      aktin-pr-rontgenwirbelsaule_durchgefuhrt
Title:   "Röntgen-Wirbelsäule durchgeführt"
Description: "Wurde ein Röntgen der Wirbelsäule durchgeführt?"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-rontgenwirbelsaule_durchgefuhrt"
* insert Meta
* insert Version
* insert Publisher

* identifier MS

* status 1..1 MS
* status = #completed

* code 1..1 MS
* code.coding MS
* code.coding = $SCT#79760008 "Radiography of spine (procedure)"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* occurrence[x] 1..1 MS
* occurrence[x] only dateTime
