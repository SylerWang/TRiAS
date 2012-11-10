// $Header: $
// Copyrightę 1998-2002 GEOPunkt GmbH & Co. KG, NL Potsdam, All rights reserved
// Created: 25.02.2002 16:45:45 
//
// This file was generated by the TRiASDB Data Server Wizard V1.02.117 (#HK010502)
//
// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
// KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR 
// PURPOSE.
//
// @doc
// @module TDBPGISSmartIFs.cpp | Definition of required smart interface classes

#if !defined(_TDBPGISSMARTIFS_H__BEA48776_59FC_49A7_95ED_EE983EB30F4F__INCLUDED_)
#define _TDBPGISSMARTIFS_H__BEA48776_59FC_49A7_95ED_EE983EB30F4F__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

///////////////////////////////////////////////////////////////////////////////
// SmartIF's

DefineSmartInterface(Dispatch);
DefineSmartInterface(PersistStreamInit);
DefineSmartInterface(Moniker);
DefineSmartInterface(ObjectWithSite);

DefineSmartInterface(TRiASConnection);
DefineSmartInterface(TRiASPropertyBase);
DefineSmartInterface(TRiASProperties);
DefineSmartInterface(TRiASProperty);
DefineSmartInterface(TRiASPropertyCallback);
DefineSmartInterface(TRiASDatabase);
DefineSmartInterface(TRiASObjectsCollection);
DefineSmartInterface(TRiASObjects);
DefineSmartInterface(TRiASObject);
DefineSmartInterface(TRiASObjectHandleMap);
DefineSmartInterface(TRiASFeatures);
DefineSmartInterface(TRiASFeature);

DefineSmartInterface(TRiASCS);
DefineSmartInterface(TRiASCSGCS);
DefineSmartInterface(TRiASCSDatumTransformation);
DefineSmartInterface(TRiASCSStorageService);
DefineSmartInterface(TRiASCSTransform);
DefineSmartInterface(TRiASCSGeometryProperties);
DefineSmartInterface(TRiASTransformGeometry);
DefineSmartInterface(TRiASCloneGeometry);		

DefineSmartInterface(TRiASSimpleRectangle);

DefineSmartInterface(ParseStringPairs);

// BEGIN_SAMPLE_CODE
DefineSmartInterface(TRiASPropertyMapHandler);
// END_SAMPLE_CODE

#endif // defined(_TDBPGISSMARTIFS_H__BEA48776_59FC_49A7_95ED_EE983EB30F4F__INCLUDED_)



