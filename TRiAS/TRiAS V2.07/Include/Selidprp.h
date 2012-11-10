// Allgemeines zur PropertyAction 'CLSID_SelectIdentObjTyp' -------------------
// File: SELIDPRP.H

#if !defined(_SELIDPRP_H)
#define _SELIDPRP_H

// GUID ///////////////////////////////////////////////////////////////////////
// 0E54C9E0-20DE-11CF-BA55-00AA0018497C	
DEFINE_GUID(CLSID_SelectIdentObjTyp, 0x0E54C9E0L, 0x20DE, 0x11CF, 0xBA, 0x55, 0x00, 0xAA, 0x00, 0x18, 0x49, 0x7C);

// Name ///////////////////////////////////////////////////////////////////////
const char c_cbSelPrpName[] = "CLSPROP_ROOT\\TRiAS� (allgemein)\\Objektauswahl nach Objektklasse und Objekttyp";

// Erzeugte ZusatzInfos ///////////////////////////////////////////////////////
// 1. IEnumLONG enth�lt alle selektierten Objekte
// ClipBoardFormat und FORMATETC sind global f�r alle PropertyAction's
#include <propactn.h>

// 2. keine weiteren


#endif // _SELIDPRP_H
