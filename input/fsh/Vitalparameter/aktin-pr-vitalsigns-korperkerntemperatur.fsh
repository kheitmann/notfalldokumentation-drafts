// AKTIN Profil - Körperkerntemperatur
// https://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-korperkerntemperatur
Profile: AKTIN_PR_vitalsigns_korperkerntemperatur
Parent:  Observation
Id:      aktin-pr-vitalsigns-korperkerntemperatur
Title:   "Körperkerntemperatur"
Description: "Gemessene Temperatur bei Aufnahme in die Notaufnahme [°C]
                    
                "
* insert Meta
* insert Version
* insert Publisher

* identifier MS

* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"

* code MS
* code.coding MS

* value[x] only Quantity
* valueQuantity = http://unitsofmeasure.org#C
* valueQuantity ^sliceName = "valueQuantity"

* subject MS
* subject 1..1
* subject only Reference(AKTIN_PR_Patient)

* effective[x] only dateTime
