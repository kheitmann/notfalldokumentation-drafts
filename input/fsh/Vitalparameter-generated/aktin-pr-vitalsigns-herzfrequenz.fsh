// AKTIN Profil - Herzfrequenz
// https://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-herzfrequenz
// ART-DECOR SC DE 2.16.840.1.113883.2.6.60.3.2.9.12
Profile: AKTIN_PR_vitalsigns_herzfrequenz
Parent:  Observation
Id:      aktin-pr-vitalsigns-herzfrequenz
Title:   "Herzfrequenz"
Description: "Herzfrequenz des Patienten [Schläge/min] per EKG abgeleitet"
* ^url = "https://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-herzfrequenz"
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
* code.coding[LOINC] = $LOINC#76282-3 "Heart rate.beat-to-beat by EKG"
* code.text =  "Herzfrequenz"

* value[x] only Quantity

* subject MS
* subject 1..1
* subject only Reference(AKTIN_PR_Patient)

* effective[x] only dateTime

