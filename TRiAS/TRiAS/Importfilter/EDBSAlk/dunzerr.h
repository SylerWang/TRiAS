#ifndef UNZIPERRORSTRINGS
#define UNZIPERRORSTRINGS
// Error message equivalences for DUNZIP32.DLL
char *UNZIPerrors[51] = {
/*  0 */  "",
/*  1 */  "",
/*  2 */  "Unexpected end of zip file",
/*  3 */  "Zip file structure invalid",
/*  4 */  "Out of memory",
/*  5 */  "Out of memory",
/*  6 */  "",
/*  7 */  "",
/*  8 */  "",
/*  9 */  "File not found",
/* 10 */  "",
/* 11 */  "No files to test, extract, etc.",
/* 12 */  "The same disk volume can not be used as both the source and destination",
/* 13 */  "",
/* 14 */  "",
/* 15 */  "",
/* 16 */  "",
/* 17 */  "",
/* 18 */  "",
/* 19 */  "",
/* 20 */  "",
/* 21 */  "",
/* 22 */  "",
/* 23 */  "",
/* 24 */  "",
/* 25 */  "Index out of bounds",
/* 26 */  "",
/* 27 */  "",
/* 28 */  "Error creating output file",
/* 29 */  "Error opening archive",
/* 30 */  "",
/* 31 */  "",
/* 32 */  "",
/* 33 */  "",
/* 34 */  "",
/* 35 */  "",
/* 36 */  "",
/* 37 */  "",
/* 38 */  "",
/* 39 */  "Bad CRC",
/* 40 */  "Application cancelled operation",
/* 41 */  "File skipped, encrypted",
/* 42 */  "File skipped, unknown compression method",
/* 43 */  "",
/* 44 */  "Bad or missing decrypt code",
/* 45 */  "Busy, can't enter now",
/* 46 */  "Can't extract a Volume ID item",
/* 47 */  "Command syntax error",
/* 48 */  "Operation cancelled",
/* 49 */  "Operation skipped",
/* 50 */  "Disk full"
};
#else
extern char *UNZIPerrors[51];
#endif