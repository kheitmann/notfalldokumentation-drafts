// AKTIN Profil - Alter in NoKeda-Kategorien
// https://www.aktin.org/fhir/StructureDefinition/aktin-pr-alter_in_no_kedakategorien
// ART-DECOR SC DE 2.16.840.1.113883.2.6.60.3.2.9.21735
Profile: AKTIN_PR_alter_in_no_kedakategorien
Parent:  Observation
Id:      aktin-pr-alter_in_no_kedakategorien
Title:   "Alter in NoKeda-Kategorien"
Description: "
                            Alter in Jahren, kategorisiert
                        
                    
                            
                        "
* ^url = "https://www.aktin.org/fhir/StructureDefinition/aktin-pr-alter_in_no_kedakategorien"
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
* code.text =  "Alter in NoKeda-Kategorien"

* value[x] only CodeableConcept
* valueCodeableConcept from http://aktin.org/fhir/ValueSet/aktin-vs-age-in-categories (required)
* valueQuantity ^sliceName = "valueCodeableConcept"

* subject MS
* subject 1..1
* subject only Reference(AKTIN_PR_Patient)

* effective[x] only dateTime

