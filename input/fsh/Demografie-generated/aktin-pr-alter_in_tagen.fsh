// AKTIN Profil - Alter in Tagen
// https://www.aktin.org/fhir/StructureDefinition/aktin-pr-alter_in_tagen
// ART-DECOR SC DE 2.16.840.1.113883.2.6.60.3.2.9.29616
Profile: AKTIN_PR_alter_in_tagen
Parent:  Observation
Id:      aktin-pr-alter_in_tagen
Title:   "Alter in Tagen"
Description: "
                            Abgeleitetes Alter in Tagen bis 120 Tage
                        "
* ^url = "https://www.aktin.org/fhir/StructureDefinition/aktin-pr-alter_in_tagen"
* insert Meta
* insert Version
* insert Publisher

* identifier MS


* code MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    SNOMED-CT 1..1 MS
* code.coding[SNOMED-CT] = $SCT#424144002 "Current chronological age (observable entity)"
* code.text =  "Alter in Tagen"

* value[x] only Quantity
* valueQuantity = http://unitsofmeasure.org#d
* valueQuantity ^sliceName = "valueQuantity"

* subject MS
* subject 1..1
* subject only Reference(AKTIN_PR_Patient)

* effective[x] only dateTime

