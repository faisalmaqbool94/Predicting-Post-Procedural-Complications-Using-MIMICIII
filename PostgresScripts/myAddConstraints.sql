--------------
--ADMISSIONS--
--------------

-- subject_id
ALTER TABLE ADMISSIONS DROP CONSTRAINT IF EXISTS admissions_fk_subject_id;
ALTER TABLE ADMISSIONS
ADD CONSTRAINT admissions_fk_subject_id
  FOREIGN KEY (SUBJECT_ID)
  REFERENCES PATIENTS(SUBJECT_ID);
  
-------------
--CPTEVENTS--
-------------

-- subject_id
ALTER TABLE CPTEVENTS DROP CONSTRAINT IF EXISTS cptevents_fk_subject_id;
ALTER TABLE CPTEVENTS
ADD CONSTRAINT cptevents_fk_subject_id
  FOREIGN KEY (SUBJECT_ID)
  REFERENCES PATIENTS(SUBJECT_ID);

-- hadm_id
ALTER TABLE CPTEVENTS DROP CONSTRAINT IF EXISTS cptevents_fk_hadm_id;
ALTER TABLE CPTEVENTS
ADD CONSTRAINT cptevents_fk_hadm_id
  FOREIGN KEY (HADM_ID)
  REFERENCES ADMISSIONS(HADM_ID);
  
-----------------
--DIAGNOSES_ICD--
-----------------

-- subject_id
ALTER TABLE DIAGNOSES_ICD DROP CONSTRAINT IF EXISTS diagnoses_icd_fk_subject_id;
ALTER TABLE DIAGNOSES_ICD
ADD CONSTRAINT diagnoses_icd_fk_subject_id
  FOREIGN KEY (SUBJECT_ID)
  REFERENCES PATIENTS(SUBJECT_ID);

-- hadm_id
ALTER TABLE DIAGNOSES_ICD DROP CONSTRAINT IF EXISTS diagnoses_icd_fk_hadm_id;
ALTER TABLE DIAGNOSES_ICD
ADD CONSTRAINT diagnoses_icd_fk_hadm_id
  FOREIGN KEY (HADM_ID)
  REFERENCES ADMISSIONS(HADM_ID);
  
  
  
-----------------
--ICUSTAYS--
-----------------

-- subject_id
ALTER TABLE ICUSTAYS DROP CONSTRAINT IF EXISTS icustays_fk_subject_id;
ALTER TABLE ICUSTAYS
ADD CONSTRAINT icustays_fk_subject_id
  FOREIGN KEY (SUBJECT_ID)
  REFERENCES PATIENTS(SUBJECT_ID);

-- hadm_id
ALTER TABLE ICUSTAYS DROP CONSTRAINT IF EXISTS icustays_fk_hadm_id;
ALTER TABLE ICUSTAYS
ADD CONSTRAINT icustays_fk_hadm_id
  FOREIGN KEY (HADM_ID)
  REFERENCES ADMISSIONS(HADM_ID);
  
  
