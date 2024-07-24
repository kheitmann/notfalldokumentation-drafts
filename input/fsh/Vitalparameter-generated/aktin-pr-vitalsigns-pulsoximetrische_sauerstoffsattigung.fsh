// AKTIN Profil - Pulsoximetrische Sauerstoffsättigung
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-pulsoximetrische_sauerstoffsattigung
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.10
Profile: AKTIN_PR_vitalsigns_pulsoximetrische_sauerstoffsattigung
Parent:  Observation
Id:      aktin-pr-vitalsigns-pulsoximetrische_sauerstoffsattigung
Title:   "Pulsoximetrische Sauerstoffsättigung"
Description: "Pulsoximetrisch bestimmte periphere Sauerstoffsättigung des Patienten in Prozent  [%]"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-pulsoximetrische_sauerstoffsattigung"
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
    LOINC 1..2 MS
* code.coding[LOINC] = $LOINC#20564-1 "Oxygen saturation in Blood"
* code.coding[LOINC] = $LOINC#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* code.text =  "Pulsoximetrische Sauerstoffsättigung"

* value[x] MS
* value[x] only Quantity
* valueQuantity = http://unitsofmeasure.org#%
* valueQuantity ^sliceName = "valueQuantity"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* effective[x] 1..1 MS
* effective[x] only dateTime

