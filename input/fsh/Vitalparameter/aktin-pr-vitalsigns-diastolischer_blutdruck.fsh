// AKTIN Profil - Diastolischer Blutdruck
// https://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-diastolischer_blutdruck
Profile: AKTIN_PR_vitalsigns_diastolischer_blutdruck
Parent:  Observation
Id:      aktin-pr-vitalsigns-diastolischer_blutdruck
Title:   "Diastolischer Blutdruck"
Description: "Diastolischer Blutdruckwert"
* insert Meta
* insert Version
* insert Publisher

* identifier MS

* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"

* code MS
* code.coding MS

* value[x] only Quantity
* valueQuantity = http://unitsofmeasure.org#mm[Hg]
* valueQuantity ^sliceName = "valueQuantity"

* subject MS
* subject 1..1
* subject only Reference(AKTIN_PR_Patient)

* effective[x] only dateTime
