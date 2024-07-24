// AKTIN Profil - Alter in NoKeda-Kategorien
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-alter_in_no_kedakategorien
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.21735
Profile: AKTIN_PR_alter_in_no_kedakategorien
Parent:  Observation
Id:      aktin-pr-alter_in_no_kedakategorien
Title:   "Alter in NoKeda-Kategorien"
Description: "Alter in Jahren, kategorisiert"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-alter_in_no_kedakategorien"
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
* code.coding[SNOMED-CT] = $SCT#424144002 "Current chronological age (observable entity)"
* code.text =  "Alter in NoKeda-Kategorien"

* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from http://aktin.org/fhir/ValueSet/aktin-vs-age-in-categories (required)
* valueQuantity ^sliceName = "valueCodeableConcept"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* effective[x] 1..1 MS
* effective[x] only dateTime

