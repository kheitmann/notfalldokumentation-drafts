// AKTIN Profil - Systolischer Blutdruck
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-systolischer_blutdruck
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.11
Profile: AKTIN_PR_vitalsigns_systolischer_blutdruck
Parent:  Observation
Id:      aktin-pr-vitalsigns-systolischer_blutdruck
Title:   "Systolischer Blutdruck"
Description: "Systolischer Blutdruck des Patienten in der Notaufnahme [mmHg]"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-systolischer_blutdruck"
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
    LOINC 1..1 MS and
    SNOMED-CT 1..1 MS
* code.coding[LOINC] = $LOINC#8480-6 "Systolic blood pressure"
* code.coding[SNOMED-CT] = $SCT#271649006 "Systolic blood pressure (observable entity)"
* code.coding[SNOMED-CT] = $SCT#72313002 "Systolic arterial pressure (observable entity)"
* code.text =  "Systolischer Blutdruck"

* value[x] MS
* value[x] only Quantity
* valueQuantity = http://unitsofmeasure.org#mm[Hg]
* valueQuantity ^sliceName = "valueQuantity"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* effective[x] 1..1 MS
* effective[x] only dateTime

