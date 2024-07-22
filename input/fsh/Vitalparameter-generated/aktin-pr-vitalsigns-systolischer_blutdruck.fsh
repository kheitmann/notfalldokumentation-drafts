// AKTIN Profil - Systolischer Blutdruck
// https://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-systolischer_blutdruck
// ART-DECOR SC DE 2.16.840.1.113883.2.6.60.3.2.9.11
Profile: AKTIN_PR_vitalsigns_systolischer_blutdruck
Parent:  Observation
Id:      aktin-pr-vitalsigns-systolischer_blutdruck
Title:   "Systolischer Blutdruck"
Description: "Systolischer Blutdruck des Patienten in der Notaufnahme [mmHg]"
* ^url = "https://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-systolischer_blutdruck"
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
* code.coding[LOINC] = $LOINC#8480-6 "Systolic blood pressure"
* code.text =  "Systolischer Blutdruck"

* value[x] only Quantity
* valueQuantity = http://unitsofmeasure.org#mm[Hg]
* valueQuantity ^sliceName = "valueQuantity"

* subject MS
* subject 1..1
* subject only Reference(AKTIN_PR_Patient)

* effective[x] only dateTime

