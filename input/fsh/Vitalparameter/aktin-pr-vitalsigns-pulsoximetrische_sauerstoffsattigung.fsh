// AKTIN Profil - Pulsoximetrische Sauerstoffsättigung
// https://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-pulsoximetrische_sauerstoffsattigung
Profile: AKTIN_PR_vitalsigns_pulsoximetrische_sauerstoffsattigung
Parent:  Observation
Id:      aktin-pr-vitalsigns-pulsoximetrische_sauerstoffsattigung
Title:   "Pulsoximetrische Sauerstoffsättigung"
Description: "Pulsoximetrisch bestimmte periphere Sauerstoffsättigung des Patienten in Prozent  [%]
            "
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
    LOINC 1..1 MS and
    SNOMED-CT 1..1 MS
* code.coding[LOINC] = $LNC#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* code.coding[LOINC] = $LNC#20564-1 "Oxygen saturation in Blood"
* code.coding[SNOMED-CT] = $SCT#103228002 "Hemoglobin saturation with oxygen (observable entity)"
* code.text =  "Pulsoximetrische Sauerstoffsättigung"

* value[x] only Quantity

* subject MS
* subject 1..1
* subject only Reference(AKTIN_PR_Patient)

* effective[x] only dateTime
