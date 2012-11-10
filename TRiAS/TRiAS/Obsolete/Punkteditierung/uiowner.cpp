// UIOwner.cpp : Implementation of ToolBarOwner for MainToolbar/EditPntButton

#include "editobjp.hxx"
#include "editobjr.h"

#include <toolguid.h>
#include <itoolbar.h>

#include "UIOwner.h"

/////////////////////////////////////////////////////////////////////////////
// *** ITRiASUIOwner specific functions ***

// 'OnUpdateUI' wird immer dann gerufen, wenn der Status unseres Knopfes 
// aktualisiert werden soll (Enable/Disable, Checked/Unchecked etc).
//
// Solange kein Projekt ge�ffnet ist, bleibt der Knopf passiv ('Enable(false)').
// Danach wird der Knopf gedr�ckt ('SetChecked(1)', wenn unser ButtonID als
// aktives Tool gemeldet wird, ansonsten bleibt der Button ungedr�ckt
// ('SetChecked(0)').
HRESULT CUIOwner::OnUpdateUI (ITRiASBar *pIBar, ITRiASCmdUI *pICmdUI)
{
	if (NULL == pIBar) return E_POINTER;

// Testen, ob �berhaupt ein Projekt ge�ffnet ist
char cbBuffer[_MAX_PATH];

	if (!DEX_GetActiveProject(cbBuffer)) {
		pICmdUI -> Enable (false);
		return NOERROR;
	}

// Projekt ist ge�ffnet, aktives Werkzeug abfragen
int uiID = 0;

	pICmdUI -> Enable(true);
	pICmdUI -> GetID (&uiID);		// ID des Buttons besorgen

return pICmdUI -> SetCheck (uiID == (int)DEX_GetActiveTool() ? 1 : 0);
}

// 'OnSelect' wird gerufen, wenn ein beschreibender Text f�r unseren Button
// ben�tigt wird (ToolTip oder Statuszeile)
// 
// Dabei mu� in pBuffer eine Zeichenkette geliefert werden, die zuerst den
// in der Statuszeile anzuzeigenden Text enth�lt. Wenn ein ToolTip angezeigt
// werden soll, dann mu� dieser Text anschlie�end nach einem '\n' in 'pBuffer'
// geliefert werden:
//		"StatuszeilenText\nToolTipText"
// Wenn 'pulWritten != NULL' ist, dann hier die Anzahl der in 'pBuffer'
// abgelegten Zeichen liefern. ACHTUNG: Nicht mehr als 'ulLen' Zeichen 
// schreiben.
HRESULT CUIOwner::OnSelect (ITRiASBar *pIBar, UINT uiID, LPSTR pBuffer, ULONG ulLen, ULONG *pulWritten)
{
	if (NULL == pIBar || NULL == pBuffer || 0 == ulLen) 
		return E_POINTER;

	try {
	ResString str (ResID (IDS_STATUSTEXT, &g_pTE -> RF()), 128);
	ULONG ulToWrite = min (ulLen-1, ULONG(str.Len()));

		strncpy (pBuffer, str, ulToWrite);
		pBuffer[ulToWrite] = '\0';

		if (pulWritten)
			*pulWritten = ulToWrite;

	} catch (...) {
		return E_OUTOFMEMORY;
	} 

return NOERROR;
}

// 'OnCommand' wird gerufen, wenn unser Button durch den Nutzer gedr�ckt wurde.
//
// Dieses herrliche Ereignis mu� TRiAS mitgeteilt werden, damit unser Button
// das aktuelle Werkzeug ist (aktuelles Werkzeug == ButtonID)
HRESULT CUIOwner::OnCommand (ITRiASBar *pIBar, UINT uiID, int nCode)
{
	if (nCode != 0) return S_FALSE;
	if (NULL == pIBar) return E_POINTER;

	DEX_ChangeActiveTool(uiID);

return NOERROR;
}

