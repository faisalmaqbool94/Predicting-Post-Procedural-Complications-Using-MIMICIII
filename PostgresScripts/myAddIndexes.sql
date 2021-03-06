-- ----------------------------------------------------------------
--
-- This is a script to add the MIMIC-III indexes for Postgres.
--
-- ----------------------------------------------------------------

-- If running scripts individually, you can set the schema where all tables are created as follows:
-- SET search_path TO mimiciii;

-- Restoring the search path to its default value can be accomplished as follows:
-- SET search_path TO "$user",public;

-------------
-- ADMISSIONS
-------------

DROP INDEX IF EXISTS ADMISSIONS_idx01;
CREATE INDEX ADMISSIONS_IDX01
  ON ADMISSIONS (SUBJECT_ID);

DROP INDEX IF EXISTS ADMISSIONS_idx02;
CREATE INDEX ADMISSIONS_IDX02
  ON ADMISSIONS (HADM_ID);

-- DROP INDEX IF EXISTS ADMISSIONS_idx03;
-- CREATE INDEX ADMISSIONS_IDX03
--   ON ADMISSIONS (ADMISSION_TYPE);

---------------
-- CPTEVENTS
---------------

DROP INDEX IF EXISTS CPTEVENTS_idx01;
CREATE INDEX CPTEVENTS_idx01
  ON CPTEVENTS (SUBJECT_ID);

DROP INDEX IF EXISTS CPTEVENTS_idx02;
CREATE INDEX CPTEVENTS_idx02
  ON CPTEVENTS (CPT_CD);


------------------
-- DIAGNOSES_ICD
------------------

DROP INDEX IF EXISTS DIAGNOSES_ICD_idx01;
CREATE INDEX DIAGNOSES_ICD_idx01
  ON DIAGNOSES_ICD (SUBJECT_ID);

DROP INDEX IF EXISTS DIAGNOSES_ICD_idx02;
CREATE INDEX DIAGNOSES_ICD_idx02
  ON DIAGNOSES_ICD (ICD9_CODE);

DROP INDEX IF EXISTS DIAGNOSES_ICD_idx03;
CREATE INDEX DIAGNOSES_ICD_idx03
  ON DIAGNOSES_ICD (HADM_ID);


-- HADM_ID

--------------------
-- D_ICD_DIAGNOSES
--------------------

DROP INDEX IF EXISTS D_ICD_DIAG_idx01;
CREATE INDEX D_ICD_DIAG_idx01
  ON D_ICD_DIAGNOSES (ICD9_CODE);

DROP INDEX IF EXISTS D_ICD_DIAG_idx02;
CREATE INDEX D_ICD_DIAG_idx02
  ON D_ICD_DIAGNOSES (LONG_TITLE);

--------------------
-- D_ICD_PROCEDURES
--------------------

DROP INDEX IF EXISTS D_ICD_PROC_idx01;
CREATE INDEX D_ICD_PROC_idx01
  ON D_ICD_PROCEDURES (ICD9_CODE);

DROP INDEX IF EXISTS D_ICD_PROC_idx02;
CREATE INDEX D_ICD_PROC_idx02
  ON D_ICD_PROCEDURES (LONG_TITLE);

------------------
-- ICUSTAYS
------------------

DROP INDEX IF EXISTS ICUSTAYS_idx01;
CREATE INDEX ICUSTAYS_idx01
  ON ICUSTAYS (SUBJECT_ID);

DROP INDEX IF EXISTS ICUSTAYS_idx02;
CREATE INDEX ICUSTAYS_idx02
  ON ICUSTAYS (ICUSTAY_ID);

-- DROP INDEX IF EXISTS ICUSTAYS_idx03;
-- CREATE INDEX ICUSTAYS_idx03
--   ON ICUSTAYS (LOS);

-- DROP INDEX IF EXISTS ICUSTAYS_idx04;
-- CREATE INDEX ICUSTAYS_idx04
--   ON ICUSTAYS (FIRST_CAREUNIT);

-- DROP INDEX IF EXISTS ICUSTAYS_idx05;
-- CREATE INDEX ICUSTAYS_idx05
--   ON ICUSTAYS (LAST_CAREUNIT);

DROP INDEX IF EXISTS ICUSTAYS_idx06;
CREATE INDEX ICUSTAYS_IDX06
  ON ICUSTAYS (HADM_ID);

-------------
-- PATIENTS
-------------

-- Note that SUBJECT_ID is already indexed as it is unique

-- DROP INDEX IF EXISTS PATIENTS_idx01;
-- CREATE INDEX PATIENTS_idx01
--   ON PATIENTS (EXPIRE_FLAG);


-------------------
-- PROCEDURES_ICD
-------------------

DROP INDEX IF EXISTS PROCEDURES_ICD_idx01;
CREATE INDEX PROCEDURES_ICD_idx01
  ON PROCEDURES_ICD (SUBJECT_ID);

DROP INDEX IF EXISTS PROCEDURES_ICD_idx02;
CREATE INDEX PROCEDURES_ICD_idx02
  ON PROCEDURES_ICD (ICD9_CODE);

DROP INDEX IF EXISTS PROCEDURES_ICD_idx03;
CREATE INDEX PROCEDURES_ICD_idx03
  ON PROCEDURES_ICD (HADM_ID);


-------------
-- SERVICES
-------------

DROP INDEX IF EXISTS SERVICES_idx01;
CREATE INDEX SERVICES_idx01
  ON SERVICES (SUBJECT_ID);

DROP INDEX IF EXISTS SERVICES_idx02;
CREATE INDEX SERVICES_idx02
  ON SERVICES (HADM_ID);

-- DROP INDEX IF EXISTS SERVICES_idx03;
-- CREATE INDEX SERVICES_idx03
--   ON SERVICES (CURR_SERVICE, PREV_SERVICE);
