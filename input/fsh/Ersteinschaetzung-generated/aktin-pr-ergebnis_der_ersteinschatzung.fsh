// AKTIN Profil - Ergebnis der Ersteinschätzung
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-ergebnis_der_ersteinschatzung
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.21746
Profile: AKTIN_PR_ergebnis_der_ersteinschatzung
Parent:  Observation
Id:      aktin-pr-ergebnis_der_ersteinschatzung
Title:   "Ergebnis der Ersteinschätzung"
Description: "Ergebnis der Ersteinschätzung in einem standardisierten 5-stufigen System"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-ergebnis_der_ersteinschatzung"
* insert Meta
* insert Version
* insert Publisher

* identifier MS

* category MS

* code MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    LOINC 1..1 MS
* code.coding[LOINC] = $LOINC#75616-3 "Generic five level triage system"
* code.text =  "Ergebnis der Ersteinschätzung"

* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from http://aktin.org/fhir/ValueSet/aktin-vs-generic-5level-triage-system (required)
* valueQuantity ^sliceName = "valueCodeableConcept"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^short =  "Zeitpunkt der Ersteinschätzung"

* method MS
* method 1..1 from AKTIN_VS_used_triage_system (required)
* method.coding.version 1..1 MS
  * ^short = "Version Ersteinschätzungssystem"
