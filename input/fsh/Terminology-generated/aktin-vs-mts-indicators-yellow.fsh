ValueSet:    AKTIN_VS_mts_indicators_yellow
Id:          aktin-vs-mts-indicators-yellow
Title:       "MTS-Indikatoren GELB"
Description: "MTS-Indikatoren GELB"
* insert Meta
* insert Version
* insert Publisher
* ^meta.profile = $shareablevalueset
* ^caseSensitive = false
* ^content = #complete

* include codes from system https://aktin.org/fhir/CodeSystem/aktin-cs-mts-indicators where concept is-a #yellow
