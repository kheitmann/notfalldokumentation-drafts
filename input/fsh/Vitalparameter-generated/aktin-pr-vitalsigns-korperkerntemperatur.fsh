// AKTIN Profil - Körperkerntemperatur
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-korperkerntemperatur
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.20050
Profile: AKTIN_PR_vitalsigns_korperkerntemperatur
Parent:  Observation
Id:      aktin-pr-vitalsigns-korperkerntemperatur
Title:   "Körperkerntemperatur"
Description: "Gemessene Temperatur bei Aufnahme in die Notaufnahme [°C]"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-korperkerntemperatur"
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
* code.coding[LOINC] = $LOINC#8329-5 "Body temperature - Core"
* code.coding[LOINC] = $LOINC#8310-5 "Body temperature"
* code.text =  "Körperkerntemperatur"

* value[x] MS
* value[x] only Quantity
* valueQuantity = http://unitsofmeasure.org#Cel
* valueQuantity ^sliceName = "valueQuantity"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* effective[x] 1..1 MS
* effective[x] only dateTime

