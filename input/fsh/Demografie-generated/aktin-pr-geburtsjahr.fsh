// AKTIN Profil - Geburtsjahr
// https://www.aktin.org/fhir/StructureDefinition/aktin-pr-geburtsjahr
// ART-DECOR SC DE 2.16.840.1.113883.2.6.60.3.2.9.22063
Profile: AKTIN_PR_geburtsjahr
Parent:  Observation
Id:      aktin-pr-geburtsjahr
Title:   "Geburtsjahr"
Description: "Geburtsjahr des Patienten"
* ^url = "https://www.aktin.org/fhir/StructureDefinition/aktin-pr-geburtsjahr"
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
    LOINC 1..1 MS
* code.coding[LOINC] = $LOINC#80904-6 "Birth year"
* code.text =  "Geburtsjahr"

* value[x] only Date

* subject MS
* subject 1..1
* subject only Reference(AKTIN_PR_Patient)

* effective[x] only dateTime

