// AKTIN Profil - Pulsfrequenz
// https://www.aktin.org/fhir/StructureDefinition/aktin-pr-vitalsigns-pulsfrequenz
Profile: AKTIN_PR_vitalsigns_pulsfrequenz
Parent:  Observation
Id:      aktin-pr-vitalsigns-pulsfrequenz
Title:   "Pulsfrequenz"
Description: "
                            
                            
                                
                                    
                                        
                                            
                                                
                                                    Pulsfrequenz des Patienten per manuellem Auszählen, Pulsoximeter oder invasiver Druckmessung gemessen
                                                
                                            
                                        
                                    
                                
                            
                        "
* insert Meta
* insert Version
* insert Publisher

* identifier MS

* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"

* code MS
* code.coding MS

* value[x] only Quantity
* valueQuantity = http://unitsofmeasure.org#/min
* valueQuantity ^sliceName = "valueQuantity"

* subject MS
* subject 1..1
* subject only Reference(AKTIN_PR_Patient)

* effective[x] only dateTime
