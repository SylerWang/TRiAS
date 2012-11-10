// Toolbarzugriff aus Erweiterungen heraus
// File: TOOLBTTN.CXX
// H. Kaiser


#include "geoeditp.hxx"

#include <toolguid.h>	// CLSID_TRiASUIOwner in uiowner.h
#include <itoolbar.h>	// ITRiASUIOwner in uiowner.h
#include "uiowner.h"	// CUIOwner

#include "editguid.h"	// CLSID_GeometrieEditierung in geoedit.hxx
#include "geoedit.hxx"



///////////////////////////////////////////////////////////////////////////////////////////////////
// UIOwner-Member

///////////////////////////////////////////////////////////////////////////////////////////////////
// *** ITRiASUIOwner specific functions ***

// ------------------------------------------------------------------------------------------------
// 'OnUpdateUI' wird unaufgefordert gerufen, wenn TRiAS nichts zu tun hat, und aktualisiert
// z.B. den Status eines ToolButtons (Enable/Disable, Checked/Unchecked etc).
// Solange kein Projekt ge�ffnet ist, bleibt der Knopf passiv ('Enable(false)'). Danach wird der
// Knopf gedr�ckt ('SetCheck(1)', wenn unser ButtonID als aktives Tool gemeldet wird, ansonsten
// bleibt der Button ungedr�ckt ('SetCheck(0)').
HRESULT CUIOwner :: OnUpdateUI (ITRiASBar* pIBar, ITRiASCmdUI* pICmdUI)
{
	if (NULL == pIBar) return E_POINTER;

	if (! DEX_TestActiveProject() ||						// kein Projekt ge�ffnet
		0 == DEX_GetObjectCount() ||						// Projekt enth�lt keine Objekte
		NULL == (GeoEditExtension*)g_pTE ||
		! ((GeoEditExtension*)g_pTE)->IsSightSelected())	// keine Sicht ausgew�hlt
	{
		pICmdUI -> put_IsEnabled (false);	// ToolButton passivieren
		pICmdUI -> put_CheckState (0);		// ToolButton ungedr�ckt machen
		return NOERROR;
	}

// Projekt ist ge�ffnet und nicht leer, dann aktives Werkzeug abfragen
int uiID = 0;

	pICmdUI -> get_CmdID (&uiID);	// ID des Buttons besorgen

	if (ID_TOOL_MODIFYOBJ == uiID)	// Modify-Button
	{
		if (0 < DEX_ActiveObjectsCount())
			pICmdUI -> put_IsEnabled (true);	// aktivieren, wenn mindestens ein Recherchefenster ge�ffnet ist
		else
		{
			if (ID_TOOL_MODIFYOBJ == (int)DEX_GetActiveTool())
				DEX_ChangeActiveTool (0);		// "Pfeil"-ToolButton aktivieren
			pICmdUI -> put_IsEnabled (false);	// Modify-Button passivieren, wenn kein
												//  Recherchefenster ge�ffnet ist
		}
	}
	else
		pICmdUI -> put_IsEnabled (true);	// einen anderen, nicht den Modify-Button, aktvieren

	return pICmdUI -> put_CheckState (uiID == (int)DEX_GetActiveTool() ? 1 : 0);
}


// ------------------------------------------------------------------------------------------------
// 'OnSelect' wird gerufen, wenn ein beschreibender Text f�r unseren Button ben�tigt wird
// (ToolTip oder Statuszeile)
 
// Dabei mu� in pBuffer eine Zeichenkette geliefert werden, die zuerst den in der Statuszeile
// anzuzeigenden Text enth�lt. Wenn ein ToolTip angezeigt werden soll, dann mu� dieser Text
// anschlie�end nach einem '\n' in 'pBuffer' geliefert werden:
//		"StatuszeilenText\nToolTipText"
// Wenn 'pulWritten != NULL' ist, dann hier die Anzahl der in 'pBuffer' abgelegten Zeichen liefern.
// ACHTUNG: Nicht mehr als 'ulLen' Zeichen schreiben.
HRESULT CUIOwner :: OnSelect (ITRiASBar* pIBar, UINT uiID, LPSTR pBuffer, ULONG ulLen, ULONG* pulWritten)
{
	if (NULL == pIBar || NULL == pBuffer || 0 == ulLen) 
		return E_POINTER;

	try
	{
	ResString str (ResID (uiID, &g_pTE -> RF()), 128);
	ULONG ulToWrite = min (ulLen-1, ULONG(str.Len()));

		strncpy (pBuffer, str, ulToWrite);
		pBuffer[ulToWrite] = '\0';

		if (pulWritten)
			*pulWritten = ulToWrite;

	}
	catch (...)
	{
		return E_OUTOFMEMORY;
	} 

	return NOERROR;
}


// ------------------------------------------------------------------------------------------------
// 'OnCommand' wird gerufen, wenn unser Button durch den Nutzer gedr�ckt wurde.

// Dieses herrliche Ereignis mu� TRiAS mitgeteilt werden, damit unser Button das aktuelle Werkzeug
// ist (aktuelles Werkzeug == ButtonID)
HRESULT CUIOwner :: OnCommand (ITRiASBar* pIBar, UINT uiID, int nCode)
{
	if (NULL == pIBar) return E_POINTER;

	if (0 != nCode) return S_FALSE;

	DEX_ChangeActiveTool(uiID);

	return NOERROR;
}
