// AKTIN Profil - Alter in Tagen
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-alter_in_tagen
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.29616
Profile: AKTIN_PR_alter_in_tagen
Parent:  Observation
Id:      aktin-pr-alter_in_tagen
Title:   "Alter in Tagen"
Description: "Abgeleitetes Alter in Tagen bis 120 Tage"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-alter_in_tagen"
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
* code.text =  "Alter in Tagen"

* value[x] MS
* value[x] only Quantity
* valueQuantity = http://unitsofmeasure.org#d
* valueQuantity ^sliceName = "valueQuantity"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* effective[x] 1..1 MS
* effective[x] only dateTime

