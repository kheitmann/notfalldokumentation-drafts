// AKTIN Profil - Patient
// http://www.aktin.org/fhir/StructureDefinition/aktin-pr-patient
// ART-DECOR Scenario/Dataset Item#: 2.16.840.1.113883.2.6.60.3.2.9.10002
Profile: AKTIN_Patient
Parent:  Patient
Id:      aktin-patient
Title:   "Patient"
Description: "Demografische Informationen zum Patienten"
* insert Meta
* insert Version
* insert Publisher

* id 0..1 MS

* identifier 0..0

* gender 1..1 MS
* gender.extension contains GenderOtherDE named other-amtlich 0..1 MS

* birthDate 1..1 MS
* birthDate.extension contains $data-absent-reason named Data-Absent-Reason 0..1 MS
* birthDate.extension[Data-Absent-Reason].value[x] = #unknown (exactly)
* birthDate.extension[Data-Absent-Reason].value[x] MS

* address 1..2 MS
* address ^slicing.discriminator.type = #pattern
* address ^slicing.discriminator.path = "$this"
* address ^slicing.rules = #open
* address contains
    Anschrift 1..1 MS and
    PLZ3 1..1 MS
* address[Anschrift] only AddressDeBasis
* address[Anschrift].postalCode 1..1 MS
* address[Anschrift].extension contains $data-absent-reason named Data-Absent-Reason 0..1 MS
* address[Anschrift].extension[Data-Absent-Reason].value[x] = #unknown (exactly)
* address[Anschrift].extension[Data-Absent-Reason].value[x] MS
* address[PLZ3] only AddressDeBasis
* obeys address-plz-3-char
* address[PLZ3].postalCode 0..1 MS
