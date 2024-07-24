// AKTIN Profil - MTS-Indikatoren GRÜN
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-mtsindikatoren_grun
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.21050
Profile: AKTIN_PR_mtsindikatoren_grun
Parent:  Observation
Id:      aktin-pr-mtsindikatoren_grun
Title:   "MTS-Indikatoren GRÜN"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-mtsindikatoren_grun"
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
* code.coding[SNOMED-CT] = $SCT#713011005:363702006=225334002,260870009=394848005 "|Assessment using Manchester Triage System|:|Has focus|=|Intervention regime|,|Priority|=|Normal priority|"
* code.text =  "MTS-Indikatoren GRÜN"

* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from https://aktin.org/fhir/ValueSet/aktin-vs-mts-indicators-green (required)
* valueQuantity ^sliceName = "valueCodeableConcept"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* effective[x] 1..1 MS
* effective[x] only dateTime

