// AKTIN Profil - Herzfrequenz
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-herzfrequenz
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.12
Profile: AKTIN_PR_vitalsigns_herzfrequenz
Parent:  Observation
Id:      aktin-pr-vitalsigns-herzfrequenz
Title:   "Herzfrequenz"
Description: "Herzfrequenz des Patienten [Schläge/min] per EKG abgeleitet"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-herzfrequenz"
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
* code.coding[LOINC] = $LOINC#76282-3 "Heart rate.beat-to-beat by EKG"
* code.text =  "Herzfrequenz"

* value[x] MS
* value[x] only Quantity

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* effective[x] 1..1 MS
* effective[x] only dateTime

