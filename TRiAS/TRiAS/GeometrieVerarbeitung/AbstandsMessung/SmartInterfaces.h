// f�r Abstands-Erweiterung ben�tigte SmartInterfaces
// File: SmartInterfaces.h
// W. M�rtl


#ifndef _SMARTINTERFACES_H_
#define _SMARTINTERFACES_H_


#include "objgguid.h"	// IID_IInitObjektGeometrie
#include "buffguid.h"	// CLSID_BufferExtension, IID_IExtendBuffer


///////////////////////////////////////////////////////////////////////////////////////////////
// ben�tigte SmartInterfaces
DefineSmartInterface (EnumLONG);			// WEnumLONG
//DefineSmartInterface (InitObjektGeometrie);	// WInitObjektGeometrie
DefineSmartInterface (ObjektGeometrie);		// WObjektGeometrie
DefineSmartInterface (ExtendBuffer);		// WExtendBuffer

#endif //_SMARTINTERFACES_H_



