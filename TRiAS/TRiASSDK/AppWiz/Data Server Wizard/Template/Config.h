// $Header: $
// Copyright� 1998-$$year$$ $$company$$, All rights reserved
// Created: $$date_n_time$$
//
// This file was generated by the TRiASDB Data Server Wizard $$this_version$$
//
$$IF(EMIT_WARRANTIES)
// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY 
// KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
// IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR 
// PURPOSE.
//
$$ENDIF // EMIT_WARRANTIES
// @doc
// @module $$root$$Config.h | Konfigurationskonstanten f�r TRiASDB Data Server $$root$$

#if !defined(_$$SAFE_ROOT$$CONFIG_H__$$GUID_CONFIG_H$$__INCLUDED_)
#define _$$SAFE_ROOT$$CONFIG_H__$$GUID_CONFIG_H$$__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

///////////////////////////////////////////////////////////////////////////////
// globale Konfigurationskonstanten
//#define _MERGE_PROXYSTUB			// merge proxys/stubs with this dll
#define __ATL_USED__				// ATL in diesem Projekt verwenden
#define __OSPACESTL_USED__			// ospace-STL verwenden
#define __MFC_USED__				// MFC verwenden (u.U. rauskommentieren!)

$$IF(READ_WRITE)
///////////////////////////////////////////////////////////////////////////////
// die folgende Definition reinnehmen, wenn der Datenserver wirklich R/W sein soll
// #define _READWRITE

$$ENDIF
///////////////////////////////////////////////////////////////////////////////
// zus�tzliche _DEBUG-Optionen
#if defined(_DEBUG)
#define _ATLX_ASSERT_ON_FAILURE
// evtl. ausf�hrliches AddRef/Release Tracking zuschalten
//#define _ATLX_DEBUG_REFCOUNT_WALKSTACK
//#define _USE_IMAGE_HELP			// dabei MSSymbols verwenden

// evtl. Objekte global z�hlen
#define _ATLX_DEBUG_REFCOUNT
#define _ATLX_DEBUG_OBJECTCOUNT

// Interfaces verfolgen
//#define _ATL_DEBUG_INTERFACES
//#define _ATL_DEBUG_QI
#endif // _DEBUG


#endif // !defined(_$$SAFE_ROOT$$CONFIG_H__$$GUID_CONFIG_H$$__INCLUDED_)
