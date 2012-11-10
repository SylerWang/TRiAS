// SmartInterfaces f�r Geometrie-Editierung
// File: SmartInterfaces.h
// W. M�rtl


#ifndef _SMARTINTERFACES_H_
#define _SMARTINTERFACES_H_


#include <TRiASHelper.h>	// IProgressIndicator2
#include <xtsnguid.h>		// IID_IDragDropAction, IID_ITRiASDropTarget
//#include "editguid.h"		// CLSID_GeometrieEditierung


///////////////////////////////////////////////////////////////////////////////////////////////
// ben�tigte SmartInterfaces
// durch das Makro DefineSmartInterface() wird z.B. f�r das Interface IConnectionPoint
// die Wraper-Klasse WConnectionPoint erzeugt
DefineSmartInterface (ConnectionPointContainer);	// WConnectionPointContainer
DefineSmartInterface (ConnectionPoint);				// WConnectionPoint
DefineSmartInterface (ProgressIndicator2);			// WProgressIndicator2
DefineSmartInterface (DataObject);					// WDataObject

#endif //_SMARTINTERFACES_H_
