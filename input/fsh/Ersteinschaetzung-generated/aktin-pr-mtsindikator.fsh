// AKTIN Profil - MTS-Indikator
// https://www.aktin.org/fhir/StructureDefinition/aktin-pr-mtsindikator
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.22156
Profile: AKTIN_PR_mtsindikator
Parent:  Observation
Id:      aktin-pr-mtsindikator
Title:   "MTS-Indikator"
Description: "Optional. Pflichtangabe bei der Verwendung von MTS. Angegeben wird der Triage-Gruppe bestimmende Indikator."
* ^url = "https://www.aktin.org/fhir/StructureDefinition/aktin-pr-mtsindikator"
* insert Meta
* insert Version
* insert Publisher

* identifier MS


* code MS
* code.coding MS

* subject MS
* subject 1..1
* subject only Reference(AKTIN_PR_Patient)

* effective[x] MS
* effective[x] only dateTime

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.type = #pattern
* ^slicing.discriminator.path = "code"
* ^slicing.rules = #open* ^slicing.discriminator.path = "code"
* ^slicing.rules = #open
* component contains
   aktin-pr-mtsindikatoren_rot 1..1  and
   aktin-pr-mtsindikatoren_orange 1..1  and
   aktin-pr-mtsindikatoren_gelb 1..1  and
   aktin-pr-mtsindikatoren_grun 1..1 
* component[aktin-pr-mtsindikatoren_rot] only Reference(AKTIN_PR_mtsindikatoren_rot)
* component[aktin-pr-mtsindikatoren_orange] only Reference(AKTIN_PR_mtsindikatoren_orange)
* component[aktin-pr-mtsindikatoren_gelb] only Reference(AKTIN_PR_mtsindikatoren_gelb)
* component[aktin-pr-mtsindikatoren_grun] only Reference(AKTIN_PR_mtsindikatoren_grun)
