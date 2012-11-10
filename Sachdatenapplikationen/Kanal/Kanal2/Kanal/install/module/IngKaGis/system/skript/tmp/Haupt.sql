/* SQL Skript zur Automatisierung von Berechnungen in der KI- Datenbank */
/* LETZTE �NDERUNG 13.6.1999 */
/* DURCHGEF�HRT VON NIKO */

/* erst mal alle vorhandenen Trigger l�schen */
SET INCLUDE DelTrigger.SQL

/* Utils */
SET INCLUDE Util.SQL

/* Neue ge�nderte Haltungen */
SET INCLUDE Haltungen.SQL

/* Gesp�lte Haltungen */
SET INCLUDE GespulteHaltungen.SQL


/* Zul�ufe */
SET INCLUDE Zulauf.SQL

/* Abl�ufe */
SET INCLUDE Ablauf.SQL

/* Deckel */
SET INCLUDE Deckel.SQL
