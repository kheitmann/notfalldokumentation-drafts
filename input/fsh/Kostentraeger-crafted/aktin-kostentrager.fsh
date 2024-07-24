// AKTIN Profil - Kostenträger
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-kostentrager
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.21578
Profile: AKTIN_Kostentrager
Parent:  Coverage
Id:      aktin-kostentrager
Title:   "Kostenträger"
Description: "Versicherungsgesellschaft, Amt oder sonstige Organisation, Selbstzahler, der die Kosten des Falles übernimmt"
* insert Meta
* insert Version
* insert Publisher

* . ^short = "Kostenträger"
  * ^definition = "Angaben zur Versicherung oder zur Kostenübernahme durch den Patienten selbst oder durch Dritte"

* payor 1..1 MS contains 
      versicherer 0..1 MS
      and selbstzahler 0..1 MS
* payor[versicherer] only Reference(Organization)
  * ^definition = "Name und Id der Versicherungsgesellschaft"
  * ^comment = "xxx"
  * identifier 1..
    * ^short = "Identifikation der Versicherungsgesellschaft"
  * name 1..
    * ^short = "Name der Versicherungsgesellschaft"
    * ^comment = "zum Beispiel Nummer + Typ Nummer EHIC Feld 7 'Identification number of the institution'"
* payor[selbstzahler] only Reference(Patient or RelatedPerson)
  * ^definition = "Kostenübernahme durch den Patienten selbst oder durch Dritte"

* extension ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "url"
  * ^slicing.rules = #open
  * ^min = 0
* extension contains
    AKTIN_extension_kvfall named kvfall 0..1

* type ..0
* policyHolder ..0
* subscriber ..0
* subscriberId ..0
* beneficiary ..0
* order ..0
* network ..0