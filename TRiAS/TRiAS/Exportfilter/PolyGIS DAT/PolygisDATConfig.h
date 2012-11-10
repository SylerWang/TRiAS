// $Header: $
// Copyright� 1999-2002 Geopunkt GmbH & Co. KG, NL Potsdam, All rights reserved
// Created: 27.11.2002 09:50:40 
//
// @doc
// @module PolygisDATConfig.h | Konfigurationskonstanten f�r Xtension

#if !defined(_POLYGISDATCONFIG_H__815EDE35_4614_4EA3_9599_E9A5092FF834__INCLUDED_)
#define _POLYGISDATCONFIG_H__815EDE35_4614_4EA3_9599_E9A5092FF834__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

///////////////////////////////////////////////////////////////////////////////
// globale Konfigurationskonstanten
//#define _MERGE_PROXYSTUB
#define __ATL_USED__				// ATL in diesem Projekt verwenden

///////////////////////////////////////////////////////////////////////////////
// uncomment one
#pragma TODO("Decide if to use MFC or WTL!")
#define __MFC__
//#define __WTL__

#if _MSC_VER < 1300
#define __OSPACESTL_USED__			// OspaceSTL in diesem Projekt verwenden
#else
#define OS_NO_STREAM_SUPPORT
#endif // _MSC_VER < 1300

#define _USE_LEGACY_CODE			// Code kompatibel mit V2.10 halten

#if defined(_DEBUG)
#define _ATLX_ASSERT_ON_FAILURE
#define _ATLX_DEBUG_OBJECTCOUNT
#endif // _DEBUG

///////////////////////////////////////////////////////////////////////////////
// TRiAS-Erweitungs-Spezifika
#define __XT
#define __DEXPROCS
#define __XTNSNDLL__
#define __ATL_XTENSION_BASE__

///////////////////////////////////////////////////////////////////////////////
// WTL 
#if defined(__WTL__)
#define _ATL_NO_MSIMG
#define _ATL_NO_OPENGL
#endif // defined(__WTL__)

///////////////////////////////////////////////////////////////////////////////
// zus�tzliche Bibliotheken
#if defined(_DEBUG)

#if defined(__WTL__)
#pragma comment(lib, "ixtwtld.lib")
#endif // defined(__WTL__)
#if defined(__MFC__)
#pragma comment(lib, "ixtmad50.lib")
#endif // defined(__MFC__)
#if defined(__OSPACESTL_USED__)
#pragma comment(lib, "ospace5d.lib")
#endif // defined(__OSPACESTL_USED__)

#else

#if defined(__WTL__)
#pragma comment(lib, "ixtwtlr.lib")
#endif // defined(__WTL__)
#if defined(__MFC__)
#pragma comment(lib, "ixtmar50.lib")
#endif // defined(__MFC__)
#if defined(__OSPACESTL_USED__)
#pragma comment(lib, "ospace5r.lib")
#endif // defined(__OSPACESTL_USED__)

#endif // defined(_DEBUG

#endif // !defined(_POLYGISDATCONFIG_H__815EDE35_4614_4EA3_9599_E9A5092FF834__INCLUDED_)
