hypothesis(Patient, measles):- symptom(Patient,fever),
                               symptom(Patient,cough),
                               symptom(Patient,conjunctivitis),
                               symptom(Patient,runnynose),
                               symptom(Patient,rash).
    
hypothesis(Patient, flu):- symptom(Patient,fever),
                           symptom(Patient,headache),
                           symptom(Patient,bodypain),
                           symptom(Patient,chills),
                           symptom(Patient,sorethroat),
                           symptom(Patient,cough),
                           symptom(Patient,conjunctivitis),
                           symptom(Patient,runnynose).
hypothesis(Patient, mumps):- symptom(Patient,fever),
                             symptom(Patient, swollengland).
hypothesis(Patient, chikenpox):-symptom(Patient,fever),
                                symptom(Patient,rash),
                                symptom(Patient,bodypain).
hypothesis(Patient, jaundice):- symptom(Patient,bodypain),
								symptom(Patient,fever),
								symptom(Patient,shortbreath),
    							symptom(Patient, headache),
    							symptom(Patient,tiredness).

hypothesis(Patient, anemia):- symptom(Patient,weakness),
								symptom(Patient,faint),
								symptom(Patient,shortbreath),
    							symptom(Patient, headache),
    							symptom(Patient,tiredness).

symptom(rumman,fever).
symptom(rumman,shortbreath).
symptom(rumman,bodypain).
symptom(rumman,headache).
symptom(rumman,tiredness).
symptom(rumman,weakness).
symptom(rumman,faint).