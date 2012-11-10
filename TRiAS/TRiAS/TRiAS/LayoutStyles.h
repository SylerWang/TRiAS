// $Header: $
// Copyright� 1999-2000 TRiAS GmbH Potsdam, All rights reserved
// Created: 14.07.2000 22:43:55 
//
// @doc
// @module LayoutStyles.h | Declaration of the LayoutStyle enums

#if !defined(_LAYOUTSTYLES_H__2EA3A74B_2D4A_4E8E_A8BB_5E47E9D28315__INCLUDED_)
#define _LAYOUTSTYLES_H__2EA3A74B_2D4A_4E8E_A8BB_5E47E9D28315__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Header include diagnostics
#if defined(_TRIAS_DBG_HEADER_DIAGNOSTICS)
#pragma message(__TIME__": include " __FILE__ )
#endif

///////////////////////////////////////////////////////////////////////////////
// RahmanStyle
enum FrameStyle {
	FSNoFrame = 0,			// kein Rahmen
	FSSimpleFrame = 1,		// einfache d�nne Linie
	FSThickFrame = 2,		// einfache dicke Linie
	FSDoubleFrame = 3,		// innen d�nn au�en dick
	FSTripleFrame = 4,		// d�nn, dick d�nn
};

///////////////////////////////////////////////////////////////////////////////
// LegendenStyle
enum LegendStyle {
	LSNoLegend = 0,			// keine Legende
	LSSimpleLegend = 1,		// normale Legende
};

///////////////////////////////////////////////////////////////////////////////
// Ma�stybsStyle
enum MasstabStyle {
	MSNoMasstab = 0,		// keine Ma�stabsausgabe
	MSSimpleMasstab = 1,	// einfaches ZahlenFormat
};

#endif // !defined(_LAYOUTSTYLES_H__2EA3A74B_2D4A_4E8E_A8BB_5E47E9D28315__INCLUDED_)
