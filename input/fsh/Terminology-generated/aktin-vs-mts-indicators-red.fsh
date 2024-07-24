ValueSet:    AKTIN_VS_mts_indicators_red
Id:          aktin-vs-mts-indicators-red
Title:       "MTS-Indikatoren ROT"
Description: "MTS-Indikatoren ROT"
* insert Meta
* insert Version
* insert Publisher
* ^meta.profile = $shareablevalueset
* ^caseSensitive = false
* ^content = #complete

* include codes from system https://aktin.org/fhir/CodeSystem/aktin-cs-mts-indicators where concept is-a #red
