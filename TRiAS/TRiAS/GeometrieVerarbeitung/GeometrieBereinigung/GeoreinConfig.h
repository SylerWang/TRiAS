// $Header: $
// Copyright� 1999 TRiAS GmbH, All rights reserved
// Created: 11/22/1998 10:23:21 PM
//
// @doc
// @module GeoreinConfig.h | Konfigurationskonstanten f�r Georein

#if !defined(_GEOREINCONFIG_H__CB8A8F8A_8195_11D2_9EF6_006008447800__INCLUDED_)
#define _GEOREINCONFIG_H__CB8A8F8A_8195_11D2_9EF6_006008447800__INCLUDED_

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
#define ATL_NO_NAMESPACE			// ...aber ohne namespace

#define __OSPACESTL_USED__			// OspaceSTL in diesem Projekt verwenden
#define __CV__

#if defined(_DEBUG)
#define _ATLX_ASSERT_ON_FAILURE
#endif // _DEBUG

///////////////////////////////////////////////////////////////////////////////
// TRiAS-Erweitungskonstanten
#define DLL
#define __XT
#define __DEXPROCS
#define __XTENSNDLL__

#endif // !defined(_GEOREINCONFIG_H__CB8A8F8A_8195_11D2_9EF6_006008447800__INCLUDED_)
