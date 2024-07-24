ValueSet:    AKTIN_VS_generic_5level_triage_system
Id:          aktin-vs-generic-5level-triage-system
Title:       "Generic five level triage system"
Description: "Generic five level triage system"
* insert Meta
* insert Version
* insert Publisher
* ^meta.profile = $shareablevalueset
* ^caseSensitive = false
* ^content = #complete

* $LOINC#LA21538-6 "Resuscitation"
* $LOINC#LA19759-2 "Emergent"
* $LOINC#LA21544-4 "Urgent"
* $LOINC#LA21587-3 "Less urgent"
* $LOINC#LA21545-1 "Nonurgent"
