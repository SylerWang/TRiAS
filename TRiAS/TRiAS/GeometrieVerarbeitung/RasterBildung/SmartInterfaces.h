// F�r Gitterbildung ben�tigte SmartInterfaces
// File: SmartInterfaces.h
// W. M�rtl


#ifndef _SMARTINTERFACES_H_
#define _SMARTINTERFACES_H_


#include <IPropSeq.hxx>	// IPropertyActionSequence
#include <Triastlb.h>	// ITRiASDataObject
#include "ReinGuid.h"	// CLSID_GeometrieBereinigung, IID_IExtendGeoRein


///////////////////////////////////////////////////////////////////////////////////////////////
// ben�tigte SmartInterfaces
DefineSmartInterface (ConnectionPointContainer);	
DefineSmartInterface (ConnectionPoint);			// WConnectionPoint
//DefineSmartInterface (PropertySequenceService);	// WPropertySequenceService
DefineSmartInterface (PropertyActionSequence);	// WPropertyActionSequence
DefineSmartInterface (ProgressIndicator);		// WProgressIndicator
DefineSmartInterface (ProgressIndicator2);		// WProgressIndicator2
DefineSmartInterface (DataObject);				// WDataObject
DefineSmartInterface (TRiASDataObject);			// WTRiASDataObject
DefineSmartInterface (ExtendGeoRein);			// WExtendGeoRein


#endif //_SMARTINTERFACES_H_
