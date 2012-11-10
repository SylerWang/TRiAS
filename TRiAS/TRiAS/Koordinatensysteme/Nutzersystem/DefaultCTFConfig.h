// $Header: $
// Copyright� 1998 Fernerkundungszentrum Potsdam GmbH, All rights reserved
// Created: 11/21/1998 10:49:20 PM
//
// @doc
// @module DefaultCTFConfig.h | Konfigurationskonstanten f�r DefaultCTF

#if !defined(_DEFAULTCTFCONFIG_H__02F179B9_813F_11D2_9EF6_006008447800__INCLUDED_)
#define _DEFAULTCTFCONFIG_H__02F179B9_813F_11D2_9EF6_006008447800__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

///////////////////////////////////////////////////////////////////////////////
// globale Konfigurationskonstanten
#define __ATL_USED__				// ATL in diesem Projekt verwenden
#define __OSPACESTL_USED__			// OspaceSTL in diesem Projekt verwenden
#define __CV__

#define _USE_LEGACY_CODE			// Code kompatibel mit V2.10 halten

#if defined(_DEBUG)
#define _ATLX_ASSERT_ON_FAILURE
#endif // _DEBUG

///////////////////////////////////////////////////////////////////////////////
// TRiAS-Erweitungskonstanten
#define __XT
#define __DEXPROCS
#define __CTF_DLL__

#endif // !defined(_DEFAULTCTFCONFIG_H__02F179B9_813F_11D2_9EF6_006008447800__INCLUDED_)
