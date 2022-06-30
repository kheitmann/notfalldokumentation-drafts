/*Aliases allow the user to replace a lengthy url or oid with a short string. Aliases are for readability only, and do not change the meaning of rules. 
Typical uses of aliases are to represent code systems and canonical URLs.*/

Alias: $patient-citizenship = http://hl7.org/fhir/StructureDefinition/patient-citizenship
Alias: $Anlage8 = http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen
Alias: $laenderkennzeichen = http://fhir.de/CodeSystem/deuev/anlage-8-laenderkennzeichen
Alias: $identifier-kvid-10 = http://fhir.de/StructureDefinition/identifier-kvid-10
Alias: $identifier-pid = http://fhir.de/StructureDefinition/identifier-pid
Alias: $identifier-pkv = http://fhir.de/StructureDefinition/identifier-pkv
Alias: $humanname-de-basis = http://fhir.de/StructureDefinition/humanname-de-basis
Alias: $gender-amtlich-de = http://fhir.de/StructureDefinition/gender-amtlich-de
Alias: $data-absent-reason = http://hl7.org/fhir/StructureDefinition/data-absent-reason
Alias: $address-de-basis = http://fhir.de/StructureDefinition/address-de-basis

//To define a profile, the declaration Profile and keyword Parent are REQUIRED, and Id, Title, and Description are RECOMMENDED. Rules defining the profile follow immediately after the keyword section.

Profile: AKTIN_Patient
Parent: Patient
Id: aktin-patient
Description: "Dieses Profil beschreibt die Nutzung von administrativen Patientendaten im Rahmen des AKTIN-Notaufnahmeprotokolls."
* ^experimental = true
* ^date = "2022-06-26"
* ^publisher = "DL"
* id 1.. MS
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $patient-citizenship named Staatsangehoerigkeit 0..* MS
* extension[Staatsangehoerigkeit] ^short = "Staatsangehörigkeit"
* extension[Staatsangehoerigkeit].extension ^slicing.discriminator.type = #value
* extension[Staatsangehoerigkeit].extension ^slicing.discriminator.path = "url"
* extension[Staatsangehoerigkeit].extension ^slicing.rules = #open
* extension[Staatsangehoerigkeit].extension[code] ^sliceName = "code"
* extension[Staatsangehoerigkeit].extension[code] ^mustSupport = true
* extension[Staatsangehoerigkeit].extension[code].value[x] MS
* extension[Staatsangehoerigkeit].extension[code].value[x] ^slicing.discriminator.type = #type
* extension[Staatsangehoerigkeit].extension[code].value[x] ^slicing.discriminator.path = "$this"
* extension[Staatsangehoerigkeit].extension[code].value[x] ^slicing.rules = #closed
* extension[Staatsangehoerigkeit].extension[code].valueCodeableConcept MS
* extension[Staatsangehoerigkeit].extension[code].valueCodeableConcept from $Anlage8 (extensible)
* extension[Staatsangehoerigkeit].extension[code].valueCodeableConcept ^sliceName = "valueCodeableConcept"


//Eindeutige Identifikation des Patienten
//Eindeutige lokale Patienten ID im KIS des Krankenhauses
/*Die Versicherten_ID ist der 10-stellige unveränderliche Teil der 30-stelligen Krankenversichertennummer.

Beschreibung des Aufbaus unter Verwendung von [gemSysL_VSDM]: 
1. Stelle: Alpha-Zeichen (Wertebereich A - Z, ohne Umlaute), 
2. bis 9. Stelle: 8-stellige lfd. Zählnummer (Eine Ziffernfolge, in der mehr als drei gleiche Ziffern hintereinander auftreten, 
ist auszuschließen),
10. Stelle: Prüfziffer Bei Abweichungen anderer Datenfelder der VSD des Versicherten von denen des Notfalldatensatzes ist die 
Versicherten_ID die einzige sichere Identifikationsquelle.*/

* identifier 1.. MS 
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    Versichertennummer-GKV 0..1 MS and
    Patientennummer 1..* MS and
    Versichertennummer-PKV 0..1 MS
* identifier[Versichertennummer-GKV] only $identifier-kvid-10 (required)
* identifier[Versichertennummer-GKV] ^patternIdentifier.type = http://fhir.de/CodeSystem/identifier-type-de-basis#GKV
* identifier[Versichertennummer-GKV].type 1..
* identifier[Versichertennummer-GKV].type.coding 1..1
* identifier[Versichertennummer-GKV].type.coding.system 1..
* identifier[Versichertennummer-GKV].type.coding.system = "http://fhir.de/CodeSystem/identifier-type-de-basis" (exactly)
* identifier[Versichertennummer-GKV].type.coding.code 1..
* identifier[Versichertennummer-GKV].type.coding.code = #GKV (exactly)
* identifier[Versichertennummer-GKV].system MS
* identifier[Versichertennummer-GKV].value MS


/** identifier[Versichertennummer-GKV] ^patternIdentifier.type = http://fhir.de/CodeSystem/identifier-type-de-basis#GKV
* identifier[Versichertennummer-GKV].type 1.. MS
* identifier[Versichertennummer-GKV].system MS
* identifier[Versichertennummer-GKV].value MS*/

* identifier[Patientennummer] only $identifier-pid 
* identifier[Patientennummer] ^patternIdentifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR
* identifier[Patientennummer].type MS
* identifier[Patientennummer].system MS
* identifier[Patientennummer].value MS

* identifier[Versichertennummer-PKV] only $identifier-pkv 
* identifier[Versichertennummer-PKV] ^patternIdentifier.type = http://fhir.de/CodeSystem/identifier-type-de-basis#PKV
* identifier[Versichertennummer-PKV] ^mustSupport = false
* identifier[Versichertennummer-PKV].use MS
* identifier[Versichertennummer-PKV].type 1.. MS
* identifier[Versichertennummer-PKV].value MS
* identifier[Versichertennummer-PKV].assigner MS
* identifier[Versichertennummer-PKV].assigner.identifier.system MS
* identifier[Versichertennummer-PKV].assigner.identifier.value MS
* identifier[Versichertennummer-PKV].assigner.display MS

* name MS
* name ^slicing.discriminator.type = #pattern
* name ^slicing.discriminator.path = "$this"
* name ^slicing.rules = #open
* name contains
    Name 1..1 MS 

* name[Name] only $humanname-de-basis
* name[Name] ^patternHumanName.use = #official
* name[Name].use 1.. MS
* name[Name].family 1.. MS
* name[Name].family.extension[namenszusatz] ^sliceName = "namenszusatz"
* name[Name].family.extension[namenszusatz] ^mustSupport = true
* name[Name].family.extension contains
    nachname 0..1 MS and
    vorsatzwort 0..1 MS
* name[Name].given 1.. MS
* name[Name].prefix MS
* name[Name].prefix.extension contains prefix-qualifier 0..1 MS
* name[Name].prefix.extension[prefix-qualifier].value[x] = #AC (exactly)

* telecom.system 1..
* telecom.value 1..

* gender 1.. MS
* gender.extension ^slicing.discriminator.type = #value
* gender.extension ^slicing.discriminator.path = "url"
* gender.extension ^slicing.rules = #open
* gender.extension contains $gender-amtlich-de named Geschlecht-Administrativ 0..1 MS

* birthDate 1.. MS
* birthDate.extension contains $data-absent-reason named Data-Absent-Reason 0..1 MS
* birthDate.extension[Data-Absent-Reason].value[x] = #unknown (exactly)
* birthDate.extension[Data-Absent-Reason].value[x] MS



* address MS
* address ^slicing.discriminator.type = #pattern
* address ^slicing.discriminator.path = "$this"
* address ^slicing.rules = #open
* address contains
    Anschrift 0..* MS 
* address[Anschrift] only $address-de-basis
* address[Anschrift] ^patternAddress.type = #value
* address[Anschrift].type 1.. MS
* address[Anschrift].line 1.. MS
* address[Anschrift].line.extension[Strasse] ^sliceName = "Strasse"
* address[Anschrift].line.extension[Strasse] ^mustSupport = true
* address[Anschrift].line.extension[Hausnummer] ^sliceName = "Hausnummer"
* address[Anschrift].line.extension[Hausnummer] ^mustSupport = true
* address[Anschrift].line.extension[Adresszusatz] ^sliceName = "Zusätzliche Angaben zur Hausnummer"
* address[Anschrift].line.extension[Adresszusatz] ^mustSupport = true
* address[Anschrift].city 1.. MS
* address[Anschrift].postalCode 1.. MS
* address[Anschrift].postalCode.extension[Postleitzahl] ^sliceName = "Postleitzahl dreistellig"  // Extension für dreistellige PLZ definieren?
* address[Anschrift].postalCode.extension[Postleitzahl] ^mustSupport = true
* address[Anschrift].postalCode.extension [Postleitzahl] ^maxLength = 3
* address[Anschrift].country 1.. MS


* contact MS
* contact ^slicing.discriminator.type = #pattern
* contact ^slicing.discriminator.path = "$this"
* contact ^slicing.rules = #open
* contact contains
    Angehörige 0..* MS and
    Betreuer 0..* MS and
    Einweiser 0..* MS

* contact[Angehörige].name.extension only $humanname-de-basis 
* contact[Angehörige].telecom 0..1 MS

* contact[Betreuer].name.extension only $humanname-de-basis  
* contact[Betreuer].telecom 0..1 MS

* contact[Einweiser].name.extension only $humanname-de-basis  
* contact[Einweiser].telecom 0..1 MS

* generalPractitioner MS
* generalPractitioner only Reference($AKTINHausarzt) MS

* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains AbgeleiteteDatenZurWeitergabe named Abgeleitete-Daten-zur-Weitergabe


Extension: AbgeleiteteDatenzurWeitergabe 
Id: AbgeleiteteDatenZurWeitergabe
Title: "Abgeleitete Daten zur Weitergabe"
Description: "Abgeleitete Daten sollen möglichst automatisch aus der Primärdokumentation abgeleitet werden und somit zusätzliche Benutzerinteraktion erhoben werden."
* ^context[0].type = #element
* ^context[0].expression = "Patient"
* extension contains
    AlterInJahren 0..1 MS and
    AlterInMonaten 0..1 MS and
    AlterInNoKedaKategorien 0..1 MS and
    Geburtsjahr 0..1 MS and
    PatientenalterAmUnfalltag 0..1 MS and 
    PatientenalterAmNotfalltag 0..1 MS and
    GeschlechtOhneDivers 1..1 MS 
* extension[AlterInJahren].value[x] only string
* extension[AlterInMonaten].value[x] only string
* extension[AlterInNoKedaKategorien].value[x] only code from {AlterInNoKedaKategorien} (required)
* extension[Geburtsjahr].value[x] only string
* extension[PatientenalterAmNotfalltag].value[x] only string
* extension[PatientenalterAmUnfalltag].value[x] only string


CodeSystem: AlterInNoKedaKategorien
Id: alter-in-nokeda-kategorien
Title: "Alter in NoKeDa Kategorien"
* #0 "0 Jahre"
* #1 "0 Jahre" 
* #2 "0 Jahre" 
* #3 "0 Jahre"  
* #4 "0 Jahre" 
* #5-9 "0 Jahre" 
* #10-14 "0 Jahre" 
* #15-19 "0 Jahre" 
* #20-24 "0 Jahre" 
* #25-29 "0 Jahre" 
* #30-34 "0 Jahre" 
* #35-39 "0 Jahre" 
* #40-44 "0 Jahre" 
* #45-49 "0 Jahre" 
* #50-59 "0 Jahre" 
* #60-64 "0 Jahre" 
* #65-69 "0 Jahre" 
* #70-74 "0 Jahre" 
* #75-79 "0 Jahre" 
* #>=80 "0 Jahre" 