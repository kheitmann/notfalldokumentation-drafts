Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $observation-de-vitalsign = http://fhir.de/StructureDefinition/observation-de-vitalsign

Profile:  AKTIN_PulsyoxymetrischeSauerstoffsaettigung
Parent:   Observation
Id:       aktin-observation-pulsoxymetrische-sauerstoffsaettigung
Title:    "AKTIN Vitalparameter-PulsoxymetrischeSauerstoffsaettigung"
Description: "Pulsoximetrisch bestimmte periphere Sauerstoffsättigung des Patienten in Prozent [%]"
* ^status = #draft

* code MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    LOINC 1..1 MS and
    SNOMED-CT 1..1 MS
* code.coding[LOINC] = $LNC#59408-5                   //Oxygen saturation in Arterial blood by Pulse oximetry
* code.coding[SNOMED-CT] = $SCT#103228002	          //Hemoglobin saturation with oxygen (observable entity)
* code.text = "Pulsoxymetrische Sauerstoffsättigung"
* value[x] only Quantity
* valueQuantity = http://unitsofmeasure.org#%        // UCUM pro Minute
* valueQuantity ^sliceName = "valueQuantity"
* subject only Reference(aktin-patient)
* performer only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner) //REFERENCE AKTIN_Behandler
* effective[x] only dateTime 
