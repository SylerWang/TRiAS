/* this file contains the actual definitions of */
/* the IIDs and CLSIDs */

/* link this file in with the server and any clients */


/* File created by MIDL compiler version 3.01.76 */
/* at Fri Apr 24 18:33:54 1998
 */
/* Compiler settings for SpatialReference.idl:
    Os (OptLev=s), W1, Zp8, env=Win32, ms_ext, c_ext
    error checks: none
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

const IID IID_ISpatialReferenceInfo = {0xbcca38a0,0xfe1c,0x11d0,{0xad,0x87,0x08,0x00,0x09,0xb6,0xf2,0x2b}};


const IID IID_IUnit = {0x221733b0,0xfe1d,0x11d0,{0xad,0x87,0x08,0x00,0x09,0xb6,0xf2,0x2b}};


const IID IID_IAngularUnit = {0x4febc550,0xfe1d,0x11d0,{0xad,0x87,0x08,0x00,0x09,0xb6,0xf2,0x2b}};


const IID IID_ILinearUnit = {0x80855df0,0xfe1d,0x11d0,{0xad,0x87,0x08,0x00,0x09,0xb6,0xf2,0x2b}};


const IID IID_IEllipsoid = {0xce7266c0,0xfe1d,0x11d0,{0xad,0x87,0x08,0x00,0x09,0xb6,0xf2,0x2b}};


const IID IID_IHorizontalDatum = {0xf699c510,0xfe1d,0x11d0,{0xad,0x87,0x08,0x00,0x09,0xb6,0xf2,0x2b}};


const IID IID_IPrimeMeridian = {0x15129940,0xfe1e,0x11d0,{0xad,0x87,0x08,0x00,0x09,0xb6,0xf2,0x2b}};


const IID IID_ISpatialReference = {0x4c4c5c00,0xfe1e,0x11d0,{0xad,0x87,0x08,0x00,0x09,0xb6,0xf2,0x2b}};


const IID IID_IGeodeticSpatialReference = {0x7c3c56d0,0xfe1e,0x11d0,{0xad,0x87,0x08,0x00,0x09,0xb6,0xf2,0x2b}};


const IID IID_IGeographicCoordinateSystem = {0xa3fd5390,0xfe1e,0x11d0,{0xad,0x87,0x08,0x00,0x09,0xb6,0xf2,0x2b}};


const IID IID_IParameter = {0x9a5e32d0,0xfe1f,0x11d0,{0xad,0x87,0x08,0x00,0x09,0xb6,0xf2,0x2b}};


const IID IID_IParameterInfo = {0x7309b460,0xfe1f,0x11d0,{0xad,0x87,0x08,0x00,0x09,0xb6,0xf2,0x2b}};


const IID IID_IGeographicTransform = {0x5eb513c0,0xfe1f,0x11d0,{0xad,0x87,0x08,0x00,0x09,0xb6,0xf2,0x2b}};


const IID IID_IProjection = {0x5002f420,0xfe1f,0x11d0,{0xad,0x87,0x08,0x00,0x09,0xb6,0xf2,0x2b}};


const IID IID_IProjectedCoordinateSystem = {0x3dc39ff0,0xfe1f,0x11d0,{0xad,0x87,0x08,0x00,0x09,0xb6,0xf2,0x2b}};


const IID IID_ISpatialReferenceFactory = {0x620600B1,0xFEA1,0x11d0,{0xB0,0x4B,0x00,0x80,0xC7,0xF7,0x94,0x81}};


const IID IID_ISpatialReferenceAuthorityFactory = {0x30ae14f0,0xfe1f,0x11d0,{0xad,0x87,0x08,0x00,0x09,0xb6,0xf2,0x2b}};


#ifdef __cplusplus
}
#endif

