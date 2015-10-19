/* Question 1 */
CREATE TABLESPACE AdminHopital DATAFILE '/home/hamza/Documents/Study/M1/S1/ASGBD/TP/AdminHopital_tbs.dat' SIZE 5M AUTOEXTEND ON ONLINE;
-- Tablespace created.
CREATE USER AdminHopital IDENTIFIED BY hopital DEFAULT TABLESPACE AdminHopital;
-- User created.

/* Question 3 */
GRANT CREATE SESSION TO AdminHopital;
-- Grant succeeded.

/* Question 4 */
GRANT CREATE TABLE, CREATE USER TO AdminHopital;
-- Grant succeeded.

/* Question 5 */
SELECT * FROM Abbad.PATIENT;
/*
SELECT * FROM Abbad.PATIENT
                    *
ERROR at line 1:
ORA-00942: table or view does not exist
*/

/* Question 6 */
GRANT SELECT ON Abbad.PATIENT TO AdminHopital;
-- Grant succeeded.

SELECT * FROM Abbad.PATIENT;
/*
...
80 rows selected.
*/

/* Question 7 */
UPDATE Abbad.PATIENT SET ADR_PAT = '152, rue Hassiba Ben Bouali 2ème étage -Hamma-Alger' WHERE NOM_PATIENT = 'HADJ' AND PRENOM_PATIENT = 'Haroun';
/*
UPDATE Abbad.PATIENT SET ADR_PAT = '152, rue Hassiba Ben Bouali 2ème étage -Hamma-Alger' WHERE NOM_PATIENT = 'HADJ' AND PRENOM_PATIENT = 'Haroun'
             *
ERROR at line 1:
ORA-01031: insufficient privileges
*/

/* Question 8 */
GRANT UPDATE ON Abbad.PATIENT TO AdminHopital;
-- Grant succeeded.

UPDATE Abbad.PATIENT SET ADR_PAT = '152, rue Hassiba Ben Bouali 2ème étage -Hamma-Alger' WHERE NOM_PATIENT = 'HADJ' AND PRENOM_PATIENT = 'Haroun';
-- 1 row updated.

/* Question 9 */
CREATE INDEX PatientMutuelle_IX ON Abbad.PATIENT(MUTUELLE) TABLESPACE AdminHopital;
/*
CREATE INDEX PatientMutuelle_IX ON Abbad.PATIENT(MUTUELLE) TABLESPACE AdminHopital
                                         *
ERROR at line 1:
ORA-01031: insufficient privileges
*/
