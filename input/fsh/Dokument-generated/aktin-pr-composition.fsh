// AKTIN Profil - Meldung für das Notaufnahmeregister
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-composition
// FHIR Core Type: Composition
// ART-DECOR Scenario: notaufnahmeregister
Profile: AKTIN_PR_composition
Parent:  Composition
Id:      aktin-pr-composition
Title:   "Meldung für das Notaufnahmeregister"
Description: "Meldung für das Notaufnahmeregister als Dokumenten-Bundle"
* insert Meta
* insert Version
* insert Publisher

* text MS
* identifier MS
* status MS
* type MS
* type ^short = "Typ der Composition (\"Dokumenten-Bundle für das Notaufnahmeregister\")"
* type ^definition = "Emergency medicine Emergency department Discharge summary - Dokumenten-Code der Meldung: 97663-9"
* type = $LOINC#97663-9

* date MS

* subject 1.. MS
* subject only Reference(Patient)
* subject.reference 1.. MS

* author MS

* title MS
* title ^short = "Meldung für das Notaufnahmeregister"
* attester MS
  * mode MS
  * time MS
  * party MS

* author MS

// muss man das alles hier festlegen oder lieber in AKTIN_PR_EmergencyEncounter
* encounter MS

* custodian MS

* event ^slicing.discriminator[0].type = #pattern
* event ^slicing.discriminator[=].path = "code"
* event ^slicing.rules = #open
* event contains emergencyDepartmentEvent 0..1 MS
* event[emergencyDepartmentEvent].code 1..1 MS
* event[emergencyDepartmentEvent].code = $v3-act-class#PCPR
* event[emergencyDepartmentEvent].period MS

* section 1.. MS

* section ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section ^extension[=].valueString = "Section"
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[=].path = "code"
* section ^slicing.ordered = false
* section ^slicing.rules = #open

* section.section ..0
* section.text 1.. MS
* section contains
  aktin-pr-administrative_aufnahmeinformationen 1..1 MS and
  aktin-pr-notaufnahmeregister 1..1 MS
* section[aktin-pr-administrative_aufnahmeinformationen]
* section ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section ^extension[=].valueString = "Section"
  * title 1.. MS
  * code 1.. MS
  * code only CodeableConcept
  * code = $LOINC#1233-4
  * entry MS
  * entry ^slicing.discriminator[0].type = #profile
  * entry ^slicing.discriminator[=].path = "resolve()"
  * entry ^slicing.rules = #open
  * entry contains 
    aktin-pr-administrative_aufnahmeinformationen 1..1 MS
  * entry[aktin-pr-administrative_aufnahmeinformationen] only Reference(Observation)
* section[aktin-pr-notaufnahmeregister]
* section ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* section ^extension[=].valueString = "Section"
  * title 1.. MS
  * code 1.. MS
  * code only CodeableConcept
  * code = $LOINC#1233-4
  * entry MS
  * entry ^slicing.discriminator[0].type = #profile
  * entry ^slicing.discriminator[=].path = "resolve()"
  * entry ^slicing.rules = #open
  * entry contains 
    aktin-qu-anotaufnahmeregister 1..1 MS
  * entry[aktin-qu-anotaufnahmeregister] only Reference(Questionnaire)
