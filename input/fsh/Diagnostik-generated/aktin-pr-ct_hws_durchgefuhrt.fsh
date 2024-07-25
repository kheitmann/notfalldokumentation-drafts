// AKTIN Profil - CT HWS durchgeführt
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-ct_hws_durchgefuhrt
// FHIR Core Type: Procedure
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.21974
Profile: AKTIN_PR_ct_hws_durchgefuhrt
Parent:  Procedure
Id:      aktin-pr-ct_hws_durchgefuhrt
Title:   "CT HWS durchgeführt"
Description: "Wurde ein selektives CT der Halswirbelsäule durchgeführt?"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-ct_hws_durchgefuhrt"
* insert Meta
* insert Version
* insert Publisher

* identifier MS

* status 1..1 MS
* status = #completed

* code 1..1 MS
* code.coding MS
* code.coding = $SCT#241578008 "Computed tomography of cervical spine (procedure)"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* occurrence[x] 1..1 MS
* occurrence[x] only dateTime
