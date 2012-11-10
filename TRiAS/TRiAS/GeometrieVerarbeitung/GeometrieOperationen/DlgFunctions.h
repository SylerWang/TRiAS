// Deklarationen: Funktionen, die in mehreren Dialogen ben�tigt werden
// File: DlgFunctions.h
// W. M�rtl


#ifndef _DLGFUNCTIONS_H
#define _DLGFUNCTIONS_H

	HRESULT GetDefaultIdent (bool bKnowOC, IEnumLONG* pEnumIn, string sUnionName,
							 ulong& ulIdent);
	HRESULT SetDefaultIdent (IEnumLONG* pEnumOut, ulong ulIdent, ulong& ulAnzNeuObj);
	bool NoReadOnlySel (void);
	bool NoReadOnlyAll (void);
	bool TypeCounter (long* plNumber);
	bool GetStartTolerances (double& dFuzzy, double* pdDangle = 0);
	void AdjustSheetWizardBttns (CPropertyPage* pPP, DWORD dwFlags, bool bDisableNext = false);


///////////////////////////////////////////////////////////////////////////////////////////////
// Struktur f�r Daten�bergabe an Routine ReadOnlySelObjects()
struct ROTest
{
	long lONrAO;	// Objektnummer des aktivierten (blinkenden) Bezugsobjektes
	bool bRO;		// Read/Only-Flag
};

#endif // _DLGFUNCTIONS_H
