/* this file contains the actual definitions of */
/* the IIDs and CLSIDs */

/* link this file in with the server and any clients */


/* File created by MIDL compiler version 5.01.0164 */
/* at Wed Mar 24 22:32:26 1999
 */
/* Compiler settings for VisInfoInterfaces.idl:
    Os (OptLev=s), W1, Zp8, env=Win32, ms_ext, c_ext
    error checks: allocation ref bounds_check enum stub_data 
*/
//@@MIDL_FILE_HEADING(  )
#ifdef __cplusplus
extern "C"{
#endif 


#ifndef __IID_DEFINED__
#define __IID_DEFINED__

typedef struct _IID
{
    unsigned long x;
    unsigned short s1;
    unsigned short s2;
    unsigned char  c[8];
} IID;

#endif // __IID_DEFINED__

#ifndef CLSID_DEFINED
#define CLSID_DEFINED
typedef IID CLSID;
#endif // CLSID_DEFINED

const IID IID_DVisInfo = {0x0796386B,0x3123,0x101C,{0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C}};


const IID IID_DPointVisInfo = {0x07963867,0x3123,0x101C,{0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C}};


const IID IID_DLineVisInfo = {0x07963868,0x3123,0x101C,{0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C}};


const IID IID_DAreaVisInfo = {0x07963869,0x3123,0x101C,{0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C}};


const IID IID_DTextVisInfo = {0x0796386A,0x3123,0x101C,{0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C}};


#ifdef __cplusplus
}
#endif

