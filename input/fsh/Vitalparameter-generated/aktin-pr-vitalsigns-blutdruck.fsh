// AKTIN Profil - Blutdruck
// https://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-blutdruck
// ART-DECOR SC DE 2.16.840.1.113883.2.6.60.3.2.9.20141
Profile: AKTIN_PR_vitalsigns_blutdruck
Parent:  Observation
Id:      aktin-pr-vitalsigns-blutdruck
Title:   "Blutdruck"
Description: "Datenelemente des Blutdrucks"
* ^url = "https://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-blutdruck"
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
* code.coding[LOINC] = $LOINC#85354-9 "Blood pressure panel with all children optional"
* code.text =  "Blutdruck"

* subject MS
* subject 1..1
* subject only Reference(AKTIN_PR_Patient)

* effective[x] only dateTime

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.type = #pattern
* ^slicing.discriminator.path = "code"
* ^slicing.rules = #open* ^slicing.discriminator.path = "code"
* ^slicing.rules = #open
* component contains
   aktin-pr-vitalsigns-systolischer_blutdruck 1..1  and
   aktin-pr-vitalsigns-diastolischer_blutdruck 0..1 
* component[aktin-pr-vitalsigns-systolischer_blutdruck] only Reference(AKTIN_PR_vitalsigns_systolischer_blutdruck)
* component[aktin-pr-vitalsigns-diastolischer_blutdruck] only Reference(AKTIN_PR_vitalsigns_diastolischer_blutdruck)
