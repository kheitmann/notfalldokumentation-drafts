ValueSet:    AKTIN_VS_mts_indicators_orange
Id:          aktin-vs-mts-indicators-orange
Title:       "MTS-Indikatoren ORANGE"
Description: "MTS-Indikatoren ORANGE"
* insert Meta
* insert Version
* insert Publisher
* ^meta.profile = $shareablevalueset
* ^caseSensitive = false
* ^content = #complete

* include codes from system https://aktin.org/fhir/CodeSystem/aktin-cs-mts-indicators where concept is-a #orange
