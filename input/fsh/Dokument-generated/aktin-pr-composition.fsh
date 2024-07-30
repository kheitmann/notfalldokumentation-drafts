// AKTIN Profil - Meldung für das Notaufnahmeregister
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-composition
// FHIR Core Type: Composition
// ART-DECOR Scenario: notaufnahmeregister
Profile: AKTIN_PR_composition
Parent:  Composition
Id:      aktin-pr-composition
Title:   "Meldung für das Notaufnahmeregister"
Description: "Meldung für das Notaufnahmeregister als Dokumenten-Bundle"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-composition"
* insert Meta
* insert Version
* insert Publisher

* ^purpose = "Dokumenten-Bundle für das Notaufnahmeregister"
* text MS
* identifier MS
* status MS
* type MS
    * ^short = "Typ der Composition (\"Dokumenten-Bundle für das Notaufnahmeregister\")"
    * ^definition = "Emergency medicine Emergency department Discharge summary - Dokumenten-Code der Meldung: 97663-9"
* type = $loinc#97663-9

* date MS

* subject 1.. MS
* subject only Reference(AKTIN_PR_Patient)
* subject.reference 1.. MS

* author MS

* title MS
   * ^short = "Meldung für das Notaufnahmeregister"
* attester MS
  * mode MS
  * time MS
  * party MS

* author MS
  * mode MS
  * time MS
  * party MS

// muss man das alles hier festlegen oder lieber in AKTIN_PR_EmergencyEncounter
* encounter MS
  * period MS
  * serviceType MS
  * location MS
  * reasonCode MS
  * participant.period MS
  * hospitalization.destination MS
  * hospitalization.dischargeDisposition MS

* custodian MS

* relatesTo.target[x] only Identifier or Reference(Composition or AKTIN_PR_Composition)

* event ^slicing.discriminator[0].type = #pattern
* event ^slicing.discriminator[=].path = "code"
* event ^slicing.rules = #open
* event contains emergencyDepartmentEvent 0..1 MS
* event[emergencyDepartmentEvent].code 1..1 MS
* event[emergencyDepartmentEvent].code = $v3-ActClass#PCPR
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
    aktin-pr-administrative_aufnahmeinformationen 1..1 MS  and
    aktin-pr-ersteinschatzung 1..* MS  and
    aktin-pr-notfallanamnese 1..1 MS  and
    aktin-pr-transport 1..1 MS  and
    aktin-pr-zuweisung 1..1 MS  and
    aktin-pr- .. MS  and
    aktin-pr-vitalparameter 1..* MS  and
    aktin-pr-scores 1..1 MS  and
    aktin-pr-diagnostik 1..1 MS  and
    aktin-pr-masnahmen 1..1 MS  and
    aktin-pr-abschlussdiagnosen 1..1 MS  and
    aktin-pr-administrative_verlegungsentlassungsinformationen 1..1 MS  and
    aktin-pr-dokumentationsinformationen 1..1 MS 
* section[aktin-pr-administrative_aufnahmeinformationen]
   ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
   ^extension[=].valueString = "Section"
   * title 1.. MS
   * code 1.. MS
   * code only CodeableConcept
   * code = $loinc#
   * entry MS
       ^slicing.discriminator[0].type = #profile
       ^slicing.discriminator[=].path = "resolve()"
       ^slicing.rules = #open
   * entry contains 
      aktin-pr-administrative_aufnahmeinformationen 1..1 MS
   * entry[aktin-pr-administrative_aufnahmeinformationen] only Reference(AKTIN_PR_administrative_aufnahmeinformationen)
* section[aktin-pr-ersteinschatzung]
   ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
   ^extension[=].valueString = "Section"
   * title 1.. MS
   * code 1.. MS
   * code only CodeableConcept
   * code = $loinc#11283-9
   * entry MS
       ^slicing.discriminator[0].type = #profile
       ^slicing.discriminator[=].path = "resolve()"
       ^slicing.rules = #open
   * entry contains 
      aktin-pr-ersteinschatzung 1..1 MS
   * entry[aktin-pr-ersteinschatzung] only Reference(AKTIN_PR_ersteinschatzung)
* section[aktin-pr-notfallanamnese]
   ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
   ^extension[=].valueString = "Section"
   * title 1.. MS
   * code 1.. MS
   * code only CodeableConcept
   * code = $loinc#10164-2
   * entry MS
       ^slicing.discriminator[0].type = #profile
       ^slicing.discriminator[=].path = "resolve()"
       ^slicing.rules = #open
   * entry contains 
      aktin-pr-notfallanamnese 1..1 MS
   * entry[aktin-pr-notfallanamnese] only Reference(AKTIN_PR_notfallanamnese)
* section[aktin-pr-transport]
   ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
   ^extension[=].valueString = "Section"
   * title 1.. MS
   * code 1.. MS
   * code only CodeableConcept
   * code = $loinc#11459-5
   * entry MS
       ^slicing.discriminator[0].type = #profile
       ^slicing.discriminator[=].path = "resolve()"
       ^slicing.rules = #open
   * entry contains 
      aktin-pr-transport 1..1 MS
   * entry[aktin-pr-transport] only Reference(AKTIN_PR_transport)
* section[aktin-pr-zuweisung]
   ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
   ^extension[=].valueString = "Section"
   * title 1.. MS
   * code 1.. MS
   * code only CodeableConcept
   * code = $loinc#11293-8
   * entry MS
       ^slicing.discriminator[0].type = #profile
       ^slicing.discriminator[=].path = "resolve()"
       ^slicing.rules = #open
   * entry contains 
      aktin-pr-zuweisung 1..1 MS
   * entry[aktin-pr-zuweisung] only Reference(AKTIN_PR_zuweisung)
* section[aktin-pr-]
   ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
   ^extension[=].valueString = "Section"
   * title 1.. MS
   * code 1.. MS
   * code only CodeableConcept
   * code = $loinc#46239-0
   * entry MS
       ^slicing.discriminator[0].type = #profile
       ^slicing.discriminator[=].path = "resolve()"
       ^slicing.rules = #open
   * entry contains 
      aktin-pr- 1..1 MS
   * entry[aktin-pr-] only Reference(AKTIN_PR_)
* section[aktin-pr-vitalparameter]
   ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
   ^extension[=].valueString = "Section"
   * title 1.. MS
   * code 1.. MS
   * code only CodeableConcept
   * code = $loinc#8716-3
   * entry MS
       ^slicing.discriminator[0].type = #profile
       ^slicing.discriminator[=].path = "resolve()"
       ^slicing.rules = #open
   * entry contains 
      aktin-pr-vitalparameter 1..1 MS
   * entry[aktin-pr-vitalparameter] only Reference(AKTIN_PR_vitalparameter)
* section[aktin-pr-scores]
   ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
   ^extension[=].valueString = "Section"
   * title 1.. MS
   * code 1.. MS
   * code only CodeableConcept
   * code = $loinc#67781-5
   * entry MS
       ^slicing.discriminator[0].type = #profile
       ^slicing.discriminator[=].path = "resolve()"
       ^slicing.rules = #open
   * entry contains 
      aktin-pr-scores 1..1 MS
   * entry[aktin-pr-scores] only Reference(AKTIN_PR_scores)
* section[aktin-pr-diagnostik]
   ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
   ^extension[=].valueString = "Section"
   * title 1.. MS
   * code 1.. MS
   * code only CodeableConcept
   * code = $loinc#30954-2
   * entry MS
       ^slicing.discriminator[0].type = #profile
       ^slicing.discriminator[=].path = "resolve()"
       ^slicing.rules = #open
   * entry contains 
      aktin-pr-diagnostik 1..1 MS
   * entry[aktin-pr-diagnostik] only Reference(AKTIN_PR_diagnostik)
* section[aktin-pr-masnahmen]
   ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
   ^extension[=].valueString = "Section"
   * title 1.. MS
   * code 1.. MS
   * code only CodeableConcept
   * code = $loinc#29554-3
   * entry MS
       ^slicing.discriminator[0].type = #profile
       ^slicing.discriminator[=].path = "resolve()"
       ^slicing.rules = #open
   * entry contains 
      aktin-pr-masnahmen 1..1 MS
   * entry[aktin-pr-masnahmen] only Reference(AKTIN_PR_masnahmen)
* section[aktin-pr-abschlussdiagnosen]
   ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
   ^extension[=].valueString = "Section"
   * title 1.. MS
   * code 1.. MS
   * code only CodeableConcept
   * code = $loinc#11301-9
   * entry MS
       ^slicing.discriminator[0].type = #profile
       ^slicing.discriminator[=].path = "resolve()"
       ^slicing.rules = #open
   * entry contains 
      aktin-pr-abschlussdiagnosen 1..1 MS
   * entry[aktin-pr-abschlussdiagnosen] only Reference(AKTIN_PR_abschlussdiagnosen)
* section[aktin-pr-administrative_verlegungsentlassungsinformationen]
   ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
   ^extension[=].valueString = "Section"
   * title 1.. MS
   * code 1.. MS
   * code only CodeableConcept
   * code = $loinc#67661-9
   * entry MS
       ^slicing.discriminator[0].type = #profile
       ^slicing.discriminator[=].path = "resolve()"
       ^slicing.rules = #open
   * entry contains 
      aktin-pr-administrative_verlegungsentlassungsinformationen 1..1 MS
   * entry[aktin-pr-administrative_verlegungsentlassungsinformationen] only Reference(AKTIN_PR_administrative_verlegungsentlassungsinformationen)
* section[aktin-pr-dokumentationsinformationen]
   ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
   ^extension[=].valueString = "Section"
   * title 1.. MS
   * code 1.. MS
   * code only CodeableConcept
   * code = $loinc#XXXX
   * entry MS
       ^slicing.discriminator[0].type = #profile
       ^slicing.discriminator[=].path = "resolve()"
       ^slicing.rules = #open
   * entry contains 
      aktin-pr-dokumentationsinformationen 1..1 MS
   * entry[aktin-pr-dokumentationsinformationen] only Reference(AKTIN_PR_dokumentationsinformationen)
