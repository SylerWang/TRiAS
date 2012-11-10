// f�r Geometriebereinigung ben�tigte SmartInterfaces
// File: SmartInterfaces.h
// W. M�rtl


#ifndef _SMARTINTERFACES_H_
#define _SMARTINTERFACES_H_


#include "objgguid.h"	// IID_IInitObjektGeometrie, CLSID_ObjektGeometrie, 
#include "reinguid.h"	// IID_IExtendGeoRein, CLSID_GeometrieBereinigung
#include "abstguid.h"	// IID_IExtendAbstand2, CLSID_Abstand
#include "trelguid.h"	// IID_IExtendTopRel2, CLSID_Topologie


///////////////////////////////////////////////////////////////////////////////////////////////
// ben�tigte SmartInterfaces
// durch das Makro DefineSmartInterface() wird z.B. f�r das Interface IInitObjektGeometrie
// die Wraper-Klasse WInitObjektGeometrie erzeugt
DefineSmartInterface (InitObjektGeometrie);	// WInitObjektGeometrie
DefineSmartInterface (ObjektGeometrie);		// WObjektGeometrie
DefineSmartInterface (ExtendAbstand2);		// WExtendAbstand2
DefineSmartInterface (ExtendTopRel2);		// WExtendTopRel2

#endif //_SMARTINTERFACES_H_
