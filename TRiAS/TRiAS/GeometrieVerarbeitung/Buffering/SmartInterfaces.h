// f�r Puffer-Erweiterung ben�tigte SmartInterfaces
// File: SmartInterfaces.h
// W. M�rtl


#ifndef _SMARTINTERFACES_H_
#define _SMARTINTERFACES_H_


#include "objgguid.h"	// CLSID_ObjektGeometrie, IID_IObjektGeometrie, ...
#include "buffguid.h"	// CLSID_BufferExtension
#include "reinguid.h"	// CLSID_GeometrieBereinigung, IID_IExtendGeoRein


///////////////////////////////////////////////////////////////////////////////////////////////
// ben�tigte SmartInterfaces
DefineSmartInterface (ConnectionPointContainer);	// WConnectionPointContainer	
DefineSmartInterface (ConnectionPoint);				// WConnectionPoint
DefineSmartInterface (ProgressIndicator2);			// WProgressIndicator2
DefineSmartInterface (EnumLONG);					// WEnumLONG
DefineSmartInterface (InitObjektGeometrie);			// WInitObjektGeometrie
DefineSmartInterface (ObjektGeometrie);				// WObjektGeometrie
DefineSmartInterface (ExtendGeoRein);				// WExtendGeoRein

#endif //_SMARTINTERFACES_H_



