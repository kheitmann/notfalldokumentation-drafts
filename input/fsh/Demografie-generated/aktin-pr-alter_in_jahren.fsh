// AKTIN Profil - Alter in Jahren
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-alter_in_jahren
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.21727
Profile: AKTIN_PR_alter_in_jahren
Parent:  Observation
Id:      aktin-pr-alter_in_jahren
Title:   "Alter in Jahren"
Description: "Alter des Patienten bei Aufnahme in Jahren"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-alter_in_jahren"
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
* code.text =  "Alter in Jahren"

* value[x] MS
* value[x] only Quantity
* valueQuantity = http://unitsofmeasure.org#y
* valueQuantity ^sliceName = "valueQuantity"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* effective[x] 1..1 MS
* effective[x] only dateTime

