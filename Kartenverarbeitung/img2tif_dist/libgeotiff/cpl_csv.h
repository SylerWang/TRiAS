/******************************************************************************
 * $Id: cpl_csv.h,v 1.1 1999/03/10 18:24:35 warmerda Exp $
 *
 * Project:  Common Portability Library
 * Purpose:  Functions for reading and scaning CSV (comma separated,
 *           variable length text files holding tables) files.  
 * Author:   Frank Warmerdam, warmerda@home.com
 *
 ******************************************************************************
 * Copyright (c) 1999, Frank Warmerdam
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included
 * in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
 * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 ******************************************************************************
 *
 * $Log: cpl_csv.h,v $
 * Revision 1.1  1999/03/10 18:24:35  warmerda
 * New
 *
 * Revision 1.1  1999/03/09 15:57:04  geotiff
 * New
 *
 * Revision 1.2  1999/02/24 16:22:58  warmerda
 * cpl_csv.c
 *
 */

#ifndef CPL_CSV_H_INCLUDED
#define CPL_CSV_H_INCLUDED

#include "cpl_serv.h"

CPL_C_START

typedef enum {
    CC_ExactString,
    CC_ApproxString,
    CC_Integer
} CSVCompareCriteria;

const char CPL_DLL *CSVFilename( const char * );

char CPL_DLL **CSVReadParseLine( FILE * );
char CPL_DLL **CSVScanLines( FILE *, int, const char *, CSVCompareCriteria );
char CPL_DLL **CSVScanFile( const char *, int, const char *,
                            CSVCompareCriteria );
char CPL_DLL **CSVScanFileByName( const char *, const char *, const char *,
                                  CSVCompareCriteria );
int CPL_DLL CSVGetFieldId( FILE *, const char * );
int CPL_DLL CSVGetFileFieldId( const char *, const char * );

void CPL_DLL CSVDeaccess( const char * );

const char CPL_DLL *CSVGetField( const char *, const char *, const char *,
                                 CSVCompareCriteria, const char * );

CPL_C_END

#endif /* ndef CPL_CSV_H_INCLUDED */

