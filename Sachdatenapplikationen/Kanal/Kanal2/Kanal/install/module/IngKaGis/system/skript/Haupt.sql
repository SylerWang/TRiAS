/* SQL Skript zur Automatisierung von Berechnungen in der KI- Datenbank */
/* LETZTE �NDERUNG 13.6.1999 */
/* DURCHGEF�HRT VON NIKO */

/* erst mal alle vorhandenen Trigger l�schen */
SET INCLUDE DelTrigger.SQ2

/* Utils */
SET INCLUDE Util.SQ2

/* Neue ge�nderte Haltungen */
SET INCLUDE Haltungen.SQ2

/* Gesp�lte Haltungen */
SET INCLUDE GespulteHaltungen.SQ2


/* Zul�ufe */
SET INCLUDE Zulauf.SQ2

/* Abl�ufe */
SET INCLUDE Ablauf.SQ2

/* Deckel */
SET INCLUDE Deckel.SQ2
