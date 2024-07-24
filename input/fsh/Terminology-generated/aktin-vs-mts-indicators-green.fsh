ValueSet:    AKTIN_VS_mts_indicators_green
Id:          aktin-vs-mts-indicators-green
Title:       "MTS-Indikatoren GRÜN"
Description: "MTS-Indikatoren GRÜN"
* insert Meta
* insert Version
* insert Publisher
* ^meta.profile = $shareablevalueset
* ^caseSensitive = false
* ^content = #complete

* include codes from system https://aktin.org/fhir/CodeSystem/aktin-cs-mts-indicators where concept is-a #green
