// AKTIN Profil - Direkter Arztkontakt
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-direkter_arztkontakt
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.21559
Profile: AKTIN_PR_direkter_arztkontakt
Parent:  Observation
Id:      aktin-pr-direkter_arztkontakt
Title:   "Direkter Arztkontakt"
Description: "Wurde keine Ersteinschätzung durchgeführt, da ein direkter Arztkontakt erfolgt ist?"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-direkter_arztkontakt"
* insert Meta
* insert Version
* insert Publisher

* identifier MS

* category MS

* code MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    SNOMED-CT 1..0 MS
* code.coding[SNOMED-CT] = $SCT#305660003 "Seen by physician (finding)"
* code.text =  "Direkter Arztkontakt"

* value[x] MS
* value[x] only Boolean

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* effective[x] 1..1 MS
* effective[x] only dateTime

