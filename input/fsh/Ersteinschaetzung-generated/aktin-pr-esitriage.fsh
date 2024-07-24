// AKTIN Profil - ESI-Triage
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-esitriage
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.21073
Profile: AKTIN_PR_esitriage
Parent:  Observation
Id:      aktin-pr-esitriage
Title:   "ESI-Triage"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-esitriage"
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
    LOINC 1..1 MS and
    SNOMED-CT 1..1 MS
* code.coding[LOINC] = $LOINC#75636-1 "Emergency severity index [ESI]"
* code.coding[SNOMED-CT] = $SCT#1255873000 "Emergency Severity Index score (observable entity)"
* code.text =  "ESI-Triage"

* value[x] MS
* value[x] only CodeableConcept

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* effective[x] 1..1 MS
* effective[x] only dateTime

