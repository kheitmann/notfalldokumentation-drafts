// AKTIN Extension - KV-Fall
// http://www.aktin.org/fhir/StructureDefinition/aktin-xt-kvfall
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.21587
Extension: AKTIN_extension_kvfall
Id: aktin-xt-kvfall
Description: "Wurde der Fall über die Kassenärztliche Vereinigung abgerechnet?"
* insert Meta
* insert Version
* insert Publisher

* ^url = "http://www.aktin.org/fhir/StructureDefinition/aktin-xt-kvfall"

* ^context.type = #element
* ^context.expression = "Coverage"

* extension ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "url"
  * ^slicing.rules = #open
* extension contains
    kvfall 1..1
* extension[kvfall] 
  * ^short = "Fall über die Kassenärztliche Vereinigung abgerechnet"
  * ^definition = "true = wenn Fall über die Kassenärztliche Vereinigung abgerechnet"
  * value[x] only boolean

* url = "http://www.aktin.org/fhir/StructureDefinition/aktin-xt-kvfall" (exactly)