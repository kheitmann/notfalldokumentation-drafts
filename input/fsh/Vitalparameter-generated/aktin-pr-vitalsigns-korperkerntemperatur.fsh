// AKTIN Profil - Körperkerntemperatur
// https://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-korperkerntemperatur
// ART-DECOR SC DE 2.16.840.1.113883.2.6.60.3.2.9.20050
Profile: AKTIN_PR_vitalsigns_korperkerntemperatur
Parent:  Observation
Id:      aktin-pr-vitalsigns-korperkerntemperatur
Title:   "Körperkerntemperatur"
Description: "Gemessene Temperatur bei Aufnahme in die Notaufnahme [°C]
                    
                "
* ^url = "https://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-korperkerntemperatur"
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
* code.coding[LOINC] = $LOINC#8329-5 "Body temperature - Core"
* code.text =  "Körperkerntemperatur"

* value[x] only Quantity
* valueQuantity = http://unitsofmeasure.org#C
* valueQuantity ^sliceName = "valueQuantity"

* subject MS
* subject 1..1
* subject only Reference(AKTIN_PR_Patient)

* effective[x] only dateTime

