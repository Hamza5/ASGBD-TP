 /* Partie 1 */
 CREATE TABLESPACE Abbad_tbs DATAFILE '/home/hamza/Documents/Study/M1/S1/ASGBD/TP/Abbad_tbs.dat' SIZE 5M AUTOEXTEND ON ONLINE;
 CREATE TEMPORARY TABLESPACE Abbad__temp_tbs TEMPFILE '/home/hamza/Documents/Study/M1/S1/ASGBD/TP/Abbad_tbs_temp.dat' SIZE 5M AUTOEXTEND ON;
 CREATE USER Abbad IDENTIFIED BY AZERTY DEFAULT TABLESPACE Abbad_tbs TEMPORARY TABLESPACE Abbad__temp_tbs;
 GRANT ALL PRIVILEGES TO Abbad;
 
 /* Partie 2 */
 
