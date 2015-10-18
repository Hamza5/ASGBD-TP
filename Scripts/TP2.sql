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

SELECT * FROM Abbad.PATIENT;
/*
SELECT * FROM Abbad.PATIENT
                    *
ERROR at line 1:
ORA-00942: table or view does not exist
*/

GRANT SELECT ON PATIENT TO AdminHopital;
-- Grant succeeded.

SELECT * FROM Abbad.PATIENT;
/*
...
80 rows selected.
*/
