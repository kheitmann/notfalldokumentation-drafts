// AKTIN Profil - Atemfrequenz
// https://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-atemfrequenz
// ART-DECOR SC DE 2.16.840.1.113883.2.6.60.3.2.9.9

// reviewed - SH
Profile: AKTIN_PR_vitalsigns_atemfrequenz
Parent:  Observation
Id:      aktin-pr-vitalsigns-atemfrequenz
Title:   "Atemfrequenz"
Description: "Atemzüge des Patienten pro Minute"
* ^url = "https://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-atemfrequenz"
* insert Meta
* insert Version
* insert Publisher

* identifier MS

* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"

* code MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    LOINC 1..1 MS
* code.coding[LOINC] = $LOINC#9279-1 "Respiratory rate"
* code.text =  "Atemfrequenz"

* value[x] only Quantity

* subject MS
* subject 1..1
* subject only Reference(AKTIN_PR_Patient) 

* effective[x] only dateTime

 
