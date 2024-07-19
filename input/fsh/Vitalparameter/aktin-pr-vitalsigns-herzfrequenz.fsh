// AKTIN Profil - Herzfrequenz
// https://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-herzfrequenz
Profile: AKTIN_PR_vitalsigns_herzfrequenz
Parent:  Observation
Id:      aktin-pr-vitalsigns-herzfrequenz
Title:   "Herzfrequenz"
Description: "Herzfrequenz des Patienten [Schläge/min] per EKG abgeleitet"
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
* code.coding[LOINC] = $LNC#8867-4 "Heart rate"
* code.coding[SNOMED-CT] = $SCT#364075005 "Heart rate (observable entity)"
* code.text =  "Herzfrequenz"

* value[x] only Quantity

* subject MS
* subject 1..1
* subject only Reference(AKTIN_PR_Patient)

* effective[x] only dateTime
