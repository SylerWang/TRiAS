
#pragma warning( disable: 4049 )  /* more than 64k source lines */

/* this ALWAYS GENERATED file contains the IIDs and CLSIDs */

/* link this file in with the server and any clients */


 /* File created by MIDL compiler version 6.00.0347 */
/* at Fri Dec 03 14:25:58 2004
 */
/* Compiler settings for TRiASDB.idl:
    Oicf, W1, Zp8, env=Win32 (32b run)
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

MIDL_DEFINE_GUID(IID, IID_ITRiASDBEngineEvents,0x27B09D60,0x15CE,0x4988,0x80,0xD6,0xBE,0xBF,0xE3,0x91,0xB9,0xAC);


MIDL_DEFINE_GUID(IID, IID_ITRiASProjectEvents,0x9A9E8F28,0x3D7F,0x11d1,0x96,0xC0,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASConnectionEvents,0x9A9E8F29,0x3D7F,0x11d1,0x96,0xC0,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASViewEvents,0x3E4A3F24,0x878C,0x11D1,0x97,0x84,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASPropertyEvents,0x9A9E8F2A,0x3D7F,0x11d1,0x96,0xC0,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASViewItemEvents,0xB7AEB934,0x922C,0x11D1,0xBA,0x01,0x08,0x00,0x36,0xD6,0x38,0x03);


MIDL_DEFINE_GUID(IID, IID_ITRiASObjectsEvents,0xD0248D00,0x3AEA,0x11D3,0x94,0xFB,0x00,0x80,0xC7,0x86,0x29,0x7B);


MIDL_DEFINE_GUID(IID, IID_ITRiASObjectEvents,0x25FE9634,0xF798,0x11D1,0x86,0x37,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(IID, IID_ITRiASFeatureEvents,0x3C078223,0xDE71,0x11D1,0x86,0x03,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(IID, IID_DVisInfo,0x0796386B,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_DPointVisInfo,0x07963867,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_DLineVisInfo,0x07963868,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_DAreaVisInfo,0x07963869,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_DTextVisInfo,0x0796386A,0x3123,0x101C,0xBB,0x62,0x00,0xAA,0x00,0x18,0x49,0x7C);


MIDL_DEFINE_GUID(IID, IID_IParseRegularExpression,0xC21AAF92,0x2DE5,0x11D1,0x96,0x9A,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_IParseStringPairs,0xC21AAF95,0x2DE5,0x11D1,0x96,0x9A,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_IParseStringPairs2,0x1A61EAD7,0x9298,0x4EEA,0xB6,0x26,0x47,0xB0,0x43,0xCF,0x75,0xE2);


MIDL_DEFINE_GUID(IID, IID_IComposeStringPairs,0x6B77F344,0xA121,0x11D1,0xBA,0x21,0x08,0x00,0x36,0xD6,0x38,0x03);


MIDL_DEFINE_GUID(IID, IID_ITRiASDBEngine,0x1CB3AB7B,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASBase,0x710B2C36,0x890F,0x11D2,0x9E,0xFB,0x00,0x60,0x08,0x44,0x78,0x00);


MIDL_DEFINE_GUID(IID, IID_ITRiASPropertyBase,0x97993C78,0x5FE6,0x11D1,0xB9,0xE6,0x08,0x00,0x36,0xD6,0x38,0x03);


MIDL_DEFINE_GUID(IID, IID_ITRiASProject,0x1CB3AB62,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASProjects,0x1CB3AB79,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASConnections,0x191A9AF7,0x37FE,0x11D1,0x96,0xB6,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASConnection,0x191A9AF4,0x37FE,0x11D1,0x96,0xB6,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASRefreshChangesCallback,0x4A4E2AB2,0x9212,0x443E,0xA3,0xA8,0x42,0x51,0xE6,0xD7,0x0D,0x58);


MIDL_DEFINE_GUID(IID, IID_ITRiASDatabase,0x6ACC24A3,0x3969,0x11D1,0x96,0xB8,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASAccessDatabase,0xB7AEB938,0x922C,0x11D1,0xBA,0x01,0x08,0x00,0x36,0xD6,0x38,0x03);


MIDL_DEFINE_GUID(IID, IID_ITRiASViews,0x1CB3AB67,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASView,0x1CB3AB65,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASViewItems,0x1CB3AB69,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASViewItem,0x1CB3AB6B,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASObject,0x1CB3AB6F,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASObjectCallback,0x3F9633F4,0xC718,0x11D1,0x85,0xD6,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(IID, IID_ITRiASObjects,0x1CB3AB6D,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASObjectsEx,0x22CE36EB,0x2399,0x41D1,0x84,0x8E,0x20,0x59,0x2F,0x3A,0x5A,0x74);


MIDL_DEFINE_GUID(IID, IID_ITRiASObjectsCallback,0x3F9633F3,0xC718,0x11D1,0x85,0xD6,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(IID, IID_ITRiASObjectsCollection,0x48172D64,0xAB72,0x11D1,0x85,0x8D,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(IID, IID_ITRiASObjectsCollectionCallback,0x5F20C608,0xB87C,0x11D2,0x95,0xA8,0x00,0x60,0x08,0x44,0x78,0x00);


MIDL_DEFINE_GUID(IID, IID_ITRiASFeatures,0x1CB3AB71,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASFeaturesCallback,0xEBC2D694,0xDEC1,0x11D1,0x86,0x05,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(IID, IID_ITRiASFeature,0x1CB3AB73,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASFeatureCallback,0xEBC2D693,0xDEC1,0x11D1,0x86,0x05,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(IID, IID_ITRiASSearchObjects,0xC92461C5,0x2139,0x11D2,0x9E,0x9C,0x00,0x60,0x08,0x44,0x78,0x00);


MIDL_DEFINE_GUID(IID, IID_ITRiASRelations,0x1CB3AB75,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASRelation,0x1CB3AB77,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASProperties,0x9A9E8F26,0x3D7F,0x11D1,0x96,0xC0,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASProperty,0x9A9E8F24,0x3D7F,0x11D1,0x96,0xC0,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASPropertySupport,0x25FEBCA5,0x3DC3,0x11D1,0x96,0xC0,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASPropertyMapHandler,0x32E4EC75,0x3D14,0x11D2,0x9E,0xB6,0x00,0x60,0x08,0x44,0x78,0x00);


MIDL_DEFINE_GUID(IID, IID_ITRiASPropertyCallback,0x25FEBCA6,0x3DC3,0x11D1,0x96,0xC0,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASDataServerRegEntries,0xF4B3F945,0x810E,0x11D1,0x97,0x76,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASDataServerRegEntry,0xF4B3F947,0x810E,0x11D1,0x97,0x76,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASOpenWizardPropExt,0x4DD970F4,0xA20F,0x11D1,0xBA,0x29,0x08,0x00,0x36,0xD6,0x38,0x03);


MIDL_DEFINE_GUID(IID, IID_ITRiASObjectHandleMap,0xD4C24AD5,0xA5EA,0x11D1,0xBA,0x31,0x08,0x00,0x36,0xD6,0x38,0x03);


MIDL_DEFINE_GUID(IID, IID_IObjectWithName,0x70168376,0x7737,0x11D2,0x9E,0xF1,0x00,0x60,0x08,0x44,0x78,0x00);


MIDL_DEFINE_GUID(IID, IID_ITRiASObjectsOperations,0xF45F28D7,0x7D2F,0x11D2,0x9E,0xF6,0x00,0x60,0x08,0x44,0x78,0x00);


MIDL_DEFINE_GUID(IID, IID_ITRiASHandle,0x9D793C97,0xB60C,0x11D2,0x95,0xA8,0x00,0x60,0x08,0x44,0x78,0x00);


MIDL_DEFINE_GUID(IID, IID_ITRiASQueryVisInfo,0x83650330,0x3389,0x11D3,0x94,0xF9,0x00,0x80,0xC7,0x86,0x29,0x7B);


MIDL_DEFINE_GUID(IID, IID_IReconnectDialog,0x96EE4262,0xA649,0x40E6,0xA5,0x1E,0x6F,0x51,0xC1,0x3E,0x0D,0x03);


MIDL_DEFINE_GUID(IID, IID_ICreateDatabase,0xAC060987,0xCE9F,0x45A4,0x9E,0x5F,0x01,0x84,0xB0,0xA4,0xCA,0x24);


MIDL_DEFINE_GUID(IID, IID_ITRiASConnectionFilter,0x2878DC6F,0x0786,0x4643,0x8D,0x89,0x36,0x72,0x89,0x8B,0x8D,0xDB);


MIDL_DEFINE_GUID(IID, IID_ITRiASConnectionFilters,0xFC0EEE23,0x5A65,0x4131,0xAA,0x9E,0xD2,0x31,0xA9,0x7C,0x5A,0x9A);


MIDL_DEFINE_GUID(IID, IID_ITRiASMainDBEngine,0x1CB3AB7D,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(IID, IID_ITRiASSimpleDBEngine,0x1724BC8F,0xE51D,0x11D2,0x9B,0xD8,0xE6,0xAA,0x20,0x52,0x41,0x53);


MIDL_DEFINE_GUID(IID, IID_ITRiASSimpleObject,0x90378E23,0xC54C,0x11D1,0x85,0xD2,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(IID, IID_ITRiASSimpleObjects,0x578D0E93,0x932B,0x11D1,0xBA,0x04,0x08,0x00,0x36,0xD6,0x38,0x03);


MIDL_DEFINE_GUID(IID, IID_ITRiASSimpleObjectsCollection,0x5F20C606,0xB87C,0x11D2,0x95,0xA8,0x00,0x60,0x08,0x44,0x78,0x00);


MIDL_DEFINE_GUID(IID, IID_ITRiASSimpleFeatures,0x1B52E2A5,0xEA84,0x11D1,0x86,0x1E,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(IID, IID_ITRiASSimpleGeoFeatures,0x701CD5C4,0xFB01,0x11D1,0x86,0x3E,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(IID, IID_ITRiASSimpleFeature,0x1B52E2A3,0xEA84,0x11D1,0x86,0x1E,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(IID, LIBID_TRiASDB,0x1CB3AB53,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASProjects,0x1CB3AB7A,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASProject,0xE09B634E,0x8494,0x4236,0xA6,0x66,0x98,0x11,0x3F,0x02,0xFE,0xFD);


MIDL_DEFINE_GUID(CLSID, CLSID_OleDocumentWrapper,0x1CB3AB64,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASConnections,0x191A9AF8,0x37FE,0x11D1,0x96,0xB6,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASConnection,0x191A9AF5,0x37FE,0x11D1,0x96,0xB6,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASDatabaseOnFile,0x6ACC24A4,0x3969,0x11D1,0x96,0xB8,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASDatabaseOnStg,0x5A28AAC2,0xD4B3,0x4A72,0x90,0xFA,0x6D,0xDE,0x00,0x7E,0xF5,0xBD);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASCompatibleDatabase,0xAD0D7076,0x39B0,0x11D1,0x96,0xB9,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASViews,0x1CB3AB68,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASView,0x1CB3AB66,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASViewItems,0x1CB3AB6A,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASViewItem,0x1CB3AB6C,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASObjects,0x1CB3AB6E,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASSimpleObjects,0x578D0E94,0x932B,0x11D1,0xBA,0x04,0x08,0x00,0x36,0xD6,0x38,0x03);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASObjectsCollection,0x48172D65,0xAB72,0x11D1,0x85,0x8D,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASSimpleObjectsCollection,0x5F20C607,0xB87C,0x11D2,0x95,0xA8,0x00,0x60,0x08,0x44,0x78,0x00);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASObject,0x1CB3AB70,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASSimpleObject,0x90378E24,0xC54C,0x11D1,0x85,0xD2,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASFeatures,0x1CB3AB72,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASSimpleFeatures,0x1B52E2A6,0xEA84,0x11D1,0x86,0x1E,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASSimpleGeoFeatures,0x701CD5C3,0xFB01,0x11D1,0x86,0x3E,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASFeature,0x1CB3AB74,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASSimpleFeature,0x1B52E2A4,0xEA84,0x11D1,0x86,0x1E,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASGuidFeature,0xBED66F36,0x7351,0x11D2,0x9E,0xF1,0x00,0x60,0x08,0x44,0x78,0x00);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASSimpleGeoFeature,0x701CD5C5,0xFB01,0x11D1,0x86,0x3E,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASRelations,0x1CB3AB76,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASRelation,0x1CB3AB78,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASDBEngine,0x1CB3AB7C,0x2E87,0x11D1,0x96,0x9D,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASProperty,0x9A9E8F25,0x3D7F,0x11D1,0x96,0xC0,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASProperties,0x9A9E8F27,0x3D7F,0x11D1,0x96,0xC0,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASDataServerRegEntries,0xF4B3F946,0x810E,0x11D1,0x97,0x76,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASDataServerRegEntry,0xF4B3F948,0x810E,0x11D1,0x97,0x76,0x00,0xA0,0x24,0xD6,0xF5,0x82);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASVariantProperty,0x8C34B585,0x9FBA,0x11D1,0xBA,0x1E,0x08,0x00,0x36,0xD6,0x38,0x03);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASAutoSaveProperty,0x9A869E25,0x584B,0x11D2,0x9E,0xD0,0x00,0x60,0x08,0x44,0x78,0x00);


MIDL_DEFINE_GUID(CLSID, CLSID_OpenWizPropExt,0xC81DD8C5,0xA235,0x11D1,0xBA,0x2A,0x08,0x00,0x36,0xD6,0x38,0x03);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASObjectHandleMap,0xD4C24AD6,0xA5EA,0x11D1,0xBA,0x31,0x08,0x00,0x36,0xD6,0x38,0x03);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASObjectsHandleMap,0xCD579673,0xAA9D,0x11D1,0x85,0x8C,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASFeatureHandleMap,0x95F58F33,0xDF2C,0x11D1,0x86,0x06,0x00,0x60,0x08,0x75,0x13,0x8A);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASGenericHandleMap,0x76D74B66,0xD3E4,0x41B8,0xA4,0xAA,0x9F,0xF2,0xF3,0x83,0xCB,0xCE);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASMetaDataMap,0x733F03EE,0xCECA,0x4E3B,0xAC,0xEF,0x09,0x20,0xF7,0xDB,0x99,0x6F);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASObjectsOperations,0xF45F28D8,0x7D2F,0x11D2,0x9E,0xF6,0x00,0x60,0x08,0x44,0x78,0x00);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASConnectionFilters,0x8513C94D,0xD792,0x4286,0xB2,0x1B,0xAA,0xDA,0xC2,0xA8,0xDC,0xE7);


MIDL_DEFINE_GUID(CLSID, CLSID_TRiASConnectionFilter,0x52A74060,0x48AB,0x4FA0,0xA4,0xDE,0x18,0x6A,0x0C,0x30,0xFE,0x4E);

#undef MIDL_DEFINE_GUID

#ifdef __cplusplus
}
#endif



#endif /* !defined(_M_IA64) && !defined(_M_AMD64)*/

