Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $observation-de-vitalsign = http://fhir.de/StructureDefinition/observation-de-vitalsign

Profile:  AKTIN_Atemfrequenz
Parent:   Observation
Id:       aktin-observation-atemfrequenz
Title:    "AKTIN Vitalparameter-Atemfrequenz"
Description: "Atemzüge des Patienten pro Minute."
* ^status = #draft

* code MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    LOINC 1..1 MS and
    SNOMED-CT 1..1 MS
* code.coding[LOINC] = $LNC#9279-1                     //Respiratory rate
* code.coding[SNOMED-CT] = $SCT#86290005              //Respiratory rate (observable entity)
* code.text = "Atemfrequenz"
* value[x] only Quantity
* valueQuantity = http://unitsofmeasure.org#/min        // UCUM pro Minute
* valueQuantity ^sliceName = "valueQuantity"


* subject only Reference(AKTIN_Patient)
* performer only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner) //REFERENCE AKTIN_Behandler
* effective[x] only dateTime 
