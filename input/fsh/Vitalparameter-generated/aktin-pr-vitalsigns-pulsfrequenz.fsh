// AKTIN Profil - Pulsfrequenz
// https://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-pulsfrequenz
// ART-DECOR SC DE 2.16.840.1.113883.2.6.60.3.2.9.20282
Profile: AKTIN_PR_vitalsigns_pulsfrequenz
Parent:  Observation
Id:      aktin-pr-vitalsigns-pulsfrequenz
Title:   "Pulsfrequenz"
Description: "Pulsfrequenz des Patienten per manuellem Auszählen, Pulsoximeter oder invasiver Druckmessung gemessen"
* ^url = "https://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-pulsfrequenz"
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
* code.coding[LOINC] = $LOINC#8867-4 "Heart rate"
* code.text =  "Pulsfrequenz"

* value[x] only Quantity
* valueQuantity = http://unitsofmeasure.org#/min
* valueQuantity ^sliceName = "valueQuantity"

* subject MS
* subject 1..1
* subject only Reference(AKTIN_PR_Patient)

* effective[x] only dateTime

