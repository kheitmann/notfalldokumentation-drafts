// AKTIN Profil - Atemfrequenz
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-atemfrequenz
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.9
Profile: AKTIN_PR_vitalsigns_atemfrequenz
Parent:  Observation
Id:      aktin-pr-vitalsigns-atemfrequenz
Title:   "Atemfrequenz"
Description: "Atemzüge des Patienten pro Minute"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-atemfrequenz"
* insert Meta
* insert Version
* insert Publisher

* identifier MS

* category
  * ^slicing.discriminator.type = #pattern
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* category contains thisCat 1..1
* category[thisCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category[thisCat].text = "Vital Signs"

* code MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    LOINC 1..1 MS
* code.coding[LOINC] = $LOINC#9279-1 "Respiratory rate"
* code.text =  "Atemfrequenz"

* value[x] MS
* value[x] only Quantity

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* effective[x] 1..1 MS
* effective[x] only dateTime

