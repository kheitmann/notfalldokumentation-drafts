// AKTIN Profil - CT Extremitäten durchgeführt
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-ct_extremitaten_durchgefuhrt
// FHIR Core Type: Procedure
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.21980
Profile: AKTIN_PR_ct_extremitaten_durchgefuhrt
Parent:  Procedure
Id:      aktin-pr-ct_extremitaten_durchgefuhrt
Title:   "CT Extremitäten durchgeführt"
Description: "Wurde ein selektives CT der Extremitäten durchgeführt?"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-ct_extremitaten_durchgefuhrt"
* insert Meta
* insert Version
* insert Publisher

* identifier MS

* status 1..1 MS
* status = #completed

* code 1..1 MS
* code.coding MS
* code.coding = $SCT#303681001 "Computed tomography of limb regions (procedure)"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* occurrence[x] 1..1 MS
* occurrence[x] only dateTime
