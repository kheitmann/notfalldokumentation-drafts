// AKTIN Profil - Manchester Triage System
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-manchester_triage_system
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.21715
Profile: AKTIN_PR_manchester_triage_system
Parent:  Observation
Id:      aktin-pr-manchester_triage_system
Title:   "Manchester Triage System"
* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-pr-manchester_triage_system"
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
    SNOMED-CT 1..0 MS
* code.coding[SNOMED-CT] = $SCT#713009001 "Manchester Triage System (assessment scale)"
* code.text =  "Manchester Triage System"

* subject 1..1 MS
* subject only Reference(Patient)
  * ^short = "Nutzung von AKTIN_PR_Patient"

* effective[x] 1..1 MS
* effective[x] only dateTime

* component ^slicing.discriminator.type = #pattern
* ^slicing.discriminator.path = "code"
* ^slicing.rules = #open
* component contains
   aktin-pr-mtsprasentationsdiagramm 1..1  and
   aktin-pr-mtsindikatoren_rot 1..1  and
   aktin-pr-mtsindikatoren_orange 1..1  and
   aktin-pr-mtsindikatoren_gelb 1..1  and
   aktin-pr-mtsindikatoren_grun 1..1 
* component[aktin-pr-mtsprasentationsdiagramm] only Reference(AKTIN_PR_mtsprasentationsdiagramm)
* component[aktin-pr-mtsindikatoren_rot] only Reference(AKTIN_PR_mtsindikatoren_rot)
* component[aktin-pr-mtsindikatoren_orange] only Reference(AKTIN_PR_mtsindikatoren_orange)
* component[aktin-pr-mtsindikatoren_gelb] only Reference(AKTIN_PR_mtsindikatoren_gelb)
* component[aktin-pr-mtsindikatoren_grun] only Reference(AKTIN_PR_mtsindikatoren_grun)
