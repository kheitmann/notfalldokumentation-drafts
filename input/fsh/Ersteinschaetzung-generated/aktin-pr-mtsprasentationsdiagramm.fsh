// AKTIN Profil - MTS-Präsentationsdiagramm
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-mtsprasentationsdiagramm
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.21074
Profile: AKTIN_PR_mtsprasentationsdiagramm
Parent:  Observation
Id:      aktin-pr-mtsprasentationsdiagramm
Title:   "MTS-Präsentationsdiagramm"
Description: "Dokumentation des verwendeten Präsentationsdiagrammes."
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-mtsprasentationsdiagramm"
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
* code.coding[SNOMED-CT] = $SCT#713011005:116680003=1269489004 "|Assessment using Manchester Triage System|:|Is a|=|Chief complaint|"
* code.text =  "MTS-Präsentationsdiagramm"

* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from http://aktin.org/fhir/ValueSet/aktin-vs-mts-presenting-diagram (required)
* valueQuantity ^sliceName = "valueCodeableConcept"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* effective[x] 1..1 MS
* effective[x] only dateTime

