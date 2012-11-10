
#pragma warning( disable: 4049 )  /* more than 64k source lines */

/* this ALWAYS GENERATED file contains the IIDs and CLSIDs */

/* link this file in with the server and any clients */


 /* File created by MIDL compiler version 6.00.0347 */
/* at Wed Mar 13 17:42:56 2002
 */
/* Compiler settings for .\Visinfo.idl:
    Os, W1, Zp8, env=Win32 (32b run)
    protocol : dce , ms_ext, c_ext
    error checks: allocation ref bounds_check enum stub_data 
    VC __declspec() decoration level: 
         __declspec(uuid()), __declspec(selectany), __declspec(novtable)
         DECLSPEC_UUID(), MIDL_INTERFACE()
*/
//@@MIDL_FILE_HEADING(  )

#if !defined(_M_IA64) && !defined(_M_AMD64)

#ifdef __cplusplus
extern "C"{
#endif 


#include <rpc.h>
#include <rpcndr.h>

#ifdef _MIDL_USE_GUIDDEF_

#ifndef INITGUID
#define INITGUID
#include <guiddef.h>
#undef INITGUID
#else
#include <guiddef.h>
#endif

#define MIDL_DEFINE_GUID(type,name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8) \
        DEFINE_GUID(name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8)

#else // !_MIDL_USE_GUIDDEF_

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

#define MIDL_DEFINE_GUID(type,name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8) \
        const type name = {l,w1,w2,{b1,b2,b3,b4,b5,b6,b7,b8}}

#endif !_MIDL_USE_GUIDDEF_

MIDL_DEFINE_GUID(IID, IID_IVisObjExt,0x079638E0,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_IVisQuery,0x079638E3,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_IMergeVisInfo,0x079638E4,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_IRawVisInfo,0x4BAB20A3,0xA922,0x11D1,0x85,0x88,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(IID, IID_IExtendedObjectVisInfo,0x8B4834A5,0xEB76,0x4567,0xA9,0x7A,0xD3,0x8A,0xCE,0xE0,0x77,0xA6);


MIDL_DEFINE_GUID(IID, LIBID_VisInfoLib,0x0796385C,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_IVisInfo,0x07963865,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_IPointVisInfo,0x0796385E,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_ILineVisInfo,0x07963860,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_IAreaVisInfo,0x07963862,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_ITextVisInfo,0x07963864,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(CLSID, CLSID_DefaultVisInfo,0x289BE0C4,0x92F6,0x11D1,0xBA,0x03,0x08,0x00,0x36,0xD6,0x38,0x03);


MIDL_DEFINE_GUID(CLSID, CLSID_PointVisInfo,0x0796385D,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(CLSID, CLSID_LineVisInfo,0x0796385F,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(CLSID, CLSID_AreaVisInfo,0x07963861,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(CLSID, CLSID_TextVisInfo,0x07963863,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(CLSID, CLSID_ObjVisInfoExtension,0xED9655C5,0x3122,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);

#undef MIDL_DEFINE_GUID

#ifdef __cplusplus
}
#endif



#endif /* !defined(_M_IA64) && !defined(_M_AMD64)*/


#pragma warning( disable: 4049 )  /* more than 64k source lines */

/* this ALWAYS GENERATED file contains the IIDs and CLSIDs */

/* link this file in with the server and any clients */


 /* File created by MIDL compiler version 6.00.0347 */
/* at Wed Mar 13 17:42:56 2002
 */
/* Compiler settings for .\Visinfo.idl:
    Oicf, W1, Zp8, env=Win64 (32b run,appending)
    protocol : dce , ms_ext, c_ext, robust
    error checks: allocation ref bounds_check enum stub_data 
    VC __declspec() decoration level: 
         __declspec(uuid()), __declspec(selectany), __declspec(novtable)
         DECLSPEC_UUID(), MIDL_INTERFACE()
*/
//@@MIDL_FILE_HEADING(  )

#if defined(_M_IA64) || defined(_M_AMD64)

#ifdef __cplusplus
extern "C"{
#endif 


#include <rpc.h>
#include <rpcndr.h>

#ifdef _MIDL_USE_GUIDDEF_

#ifndef INITGUID
#define INITGUID
#include <guiddef.h>
#undef INITGUID
#else
#include <guiddef.h>
#endif

#define MIDL_DEFINE_GUID(type,name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8) \
        DEFINE_GUID(name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8)

#else // !_MIDL_USE_GUIDDEF_

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

#define MIDL_DEFINE_GUID(type,name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8) \
        const type name = {l,w1,w2,{b1,b2,b3,b4,b5,b6,b7,b8}}

#endif !_MIDL_USE_GUIDDEF_

MIDL_DEFINE_GUID(IID, IID_IVisObjExt,0x079638E0,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_IVisQuery,0x079638E3,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_IMergeVisInfo,0x079638E4,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_IRawVisInfo,0x4BAB20A3,0xA922,0x11D1,0x85,0x88,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(IID, IID_IExtendedObjectVisInfo,0x8B4834A5,0xEB76,0x4567,0xA9,0x7A,0xD3,0x8A,0xCE,0xE0,0x77,0xA6);


MIDL_DEFINE_GUID(IID, LIBID_VisInfoLib,0x0796385C,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_IVisInfo,0x07963865,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_IPointVisInfo,0x0796385E,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_ILineVisInfo,0x07963860,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_IAreaVisInfo,0x07963862,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_ITextVisInfo,0x07963864,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(CLSID, CLSID_DefaultVisInfo,0x289BE0C4,0x92F6,0x11D1,0xBA,0x03,0x08,0x00,0x36,0xD6,0x38,0x03);


MIDL_DEFINE_GUID(CLSID, CLSID_PointVisInfo,0x0796385D,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(CLSID, CLSID_LineVisInfo,0x0796385F,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(CLSID, CLSID_AreaVisInfo,0x07963861,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(CLSID, CLSID_TextVisInfo,0x07963863,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(CLSID, CLSID_ObjVisInfoExtension,0xED9655C5,0x3122,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);

#undef MIDL_DEFINE_GUID

#ifdef __cplusplus
}
#endif



#endif /* defined(_M_IA64) || defined(_M_AMD64)*/

