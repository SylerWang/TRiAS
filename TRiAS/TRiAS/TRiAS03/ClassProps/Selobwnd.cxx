// PropertyAction, welche Objekte aus RechercheFenster ausw�hlt und zusammenstellt
// File: SELOBWND.CXX

#include "trias03p.hxx"
#include "trias03.h"

#include <xtsnguid.h>
#include <eonrguid.h>

#include <pdataobj.hxx>
#include <funcs03.h>

#include "selobwnd.hxx"

///////////////////////////////////////////////////////////////////////////////
// Min-Funktion, da Macro aus stdlib offensichtlich �berladen ist
template<class T>
inline T tmin (T a, T b) { return (a > b) ? b : a; }

///////////////////////////////////////////////////////////////////////////////
// ben�tigte InterfaceWrapper
DefineSmartInterface(DataObject);
DefineEnumIIDWrapper(LONG);
DefineSmartEnumerator(LONG);

extern char g_pDLLName[];		// dieser Modul

// 0E54C9EA-20DE-11CF-BA55-00AA0018497C	
// DEFINE_GUID(CLSID_SelectFromObjectWindow, 0x0E54C9EAL, 0x20DE, 0x11CF, 0xBA, 0x55, 0x00, 0xAA, 0x00, 0x18, 0x49, 0x7C);
// 'CLSPROP_ROOT\TRiAS� (allgemein)\Objektauswahl aus Recherchefenster'

CSelObjWndPropAct :: CSelObjWndPropAct (void)
{
	m_pCfgDlg = NULL;
	m_fIsDirty = false;
	m_fIsInitialized = false;
}

CSelObjWndPropAct :: ~CSelObjWndPropAct (void)
{
	DELETE (m_pCfgDlg);
}

///////////////////////////////////////////////////////////////////////////////
// IClassProperty specific functions 
STDMETHODIMP CSelObjWndPropAct::GetPropInfo (LPSTR pBuffer, WORD wLen, DWORD *pdwFlags)
{
	try {
		if (NULL != pBuffer && wLen > 0) {
		// Namen der Property kopieren
		ResourceFile RF (g_pDLLName);
		ResString resPropInfo (ResID (IDS_PROPINFO_OBJWND, &RF), 64);
		ULONG ulLen = tmin ((size_t)(wLen-1), strlen(resPropInfo));

			strncpy (pBuffer, resPropInfo, ulLen);
			pBuffer[ulLen] = '\0';
		}
	} catch (...) {
		return E_FAIL;
	}

// wenn gew�nscht, Flags �bergeben
	if (pdwFlags) *pdwFlags = PROPCAPS_ACTION_SOURCE;

return NOERROR;
}

STDMETHODIMP CSelObjWndPropAct::HelpInfo (LPSTR pBuffer, ULONG wLen, LPSTR pHelpFile, ULONG *pulHelpCtx)
{
	try {
		if (NULL != pBuffer && wLen > 0) {
		// Beschreibung �bergeben
		ResourceFile RF (g_pDLLName);
		ResString resHelp (ResID (IDS_HELPDESC_OBJWND, &RF), 128);
		ULONG ulLen = tmin ((size_t)(wLen-1), strlen(resHelp));

			strncpy (pBuffer, resHelp, ulLen);
			pBuffer[ulLen] = '\0';
		}
	} catch (...) {
		return E_FAIL;
	}

// HelpFileInfo �bergeben
	if (pHelpFile) pHelpFile[0] = '\0';
	if (pulHelpCtx) *pulHelpCtx = 0L;
	
return NOERROR;
}

///////////////////////////////////////////////////////////////////////////////
// IPropertyAction methods 
STDMETHODIMP CSelObjWndPropAct::AddConfigPages (
				LPFNADDPROPSHEETPAGE lpfnAddPage, LPARAM lParam, 
			    DWORD dwFlags, LPCSTR pcDesc, UINT *puiCnt)
{
char cbCaption[128];

	try {
	ResourceFile RF (g_pDLLName);

		if (NULL != pcDesc)		// Caption ist gegeben
			strcpy (cbCaption, pcDesc);
		else	// von zugeh�riger ClassProperty unseren Namen besorgen
			GetPropInfo (cbCaption, sizeof(cbCaption), NULL);

	// zugeh�rigen ConfigDialog (PropertyPage(s)) anlegen
		DELETE(m_pCfgDlg);	// evtl. vorherigen freigeben
		m_pCfgDlg = CSelectObjWndDlg::CreateInstance (
				ResID(IDD_SELECTOBJWND_WIZ, &RF), cbCaption, dwFlags);
		if (NULL == m_pCfgDlg) throw E_OUTOFMEMORY;

	//
	// Achtung MFC-Falle !
	// Normalerweise m��te an dieser Stelle lpfnAddPage mit unserem 
	// HPROPERTYPAGE gerufen werden, wir aber wissen (darf man das ?), da�
	// sich hinter dem eigentlich durchzureichendem lParam der Pointer auf
	// unsern PropertySheet verbirgt.
	//
		if (UINT_MAX == ((CPropertySheet *)lParam) -> AddPage (m_pCfgDlg))
			throw E_UNEXPECTED;

	// wir haben eine (1) Page hinzugef�gt
		if (puiCnt) *puiCnt = 1;

	} catch (HRESULT hr_result) {
		DELETE (m_pCfgDlg);
		if (puiCnt) *puiCnt = 0;
		return hr_result;
	}
	
return NOERROR;
}

STDMETHODIMP CSelObjWndPropAct::PreConfigPages (IDataObject *pIDataObj)
{
	if (NULL == m_pCfgDlg)
		return ResultFromScode(E_UNEXPECTED);

HWND hORWnd = NULL;
HRESULT hr = GetHWNDData (pIDataObj, &hORWnd);

	if (SUCCEEDED(hr)) 
		m_pCfgDlg -> SetHWND (hORWnd);

return hr;
}

STDMETHODIMP CSelObjWndPropAct::EndAction (DWORD, IDataObject **ppDataObj)
{
	*ppDataObj = NULL;

WEnumLONG IEnumObj;
HRESULT hr = m_pCfgDlg -> GetEnumLONG (IEnumObj.ppi());
	
	if (FAILED(hr)) return hr;
	if (!IEnumObj) return NOERROR;

// DataObject generieren, welches Info's �ber unser Ergenis enth�lt
	*ppDataObj = NULL;
	try {
	WDataObject IDO;
	
		hr = DataObjectCreateInstance (NULL, IID_IDataObject, IDO.ppv());
		if (FAILED(hr)) throw hr;

	// schreiben des EnumLONG ins DataObject
	HRESULT hr2 = SetEnumLONGData (IEnumObj, CLSID_EnumObjectsByNumber, IDO);

		if (FAILED(hr2)) throw hr2;

	// Resultat an n�chste PropertyAction weiterzureichen
		*ppDataObj = IDO.detach();

	} catch (HRESULT hr_result) {
		DELETE (m_pCfgDlg);	// DialogPage freigeben
		return hr_result;
	}

// S_FALSE hei�t, da� GetEnumLONG nicht mehr gerufen werden mu�
	if (S_FALSE != GetScode(hr)) {	// letzter Enumerator
		DELETE (m_pCfgDlg);	// DialogPage freigeben
	}

return hr;
}

///////////////////////////////////////////////////////////////////////////////
// IPersist methods
STDMETHODIMP CSelObjWndPropAct::GetClassID (LPCLSID lpClassID)
{
	if (NULL == lpClassID)
		return E_POINTER;

	*lpClassID = CLSID_SelectFromObjectWindow;
	return NOERROR;
}

// IPersistStreamInit methods
STDMETHODIMP CSelObjWndPropAct::IsDirty (void)
{
	return m_fIsDirty;
}

STDMETHODIMP CSelObjWndPropAct::Load (LPSTREAM pStm)
{
	if (m_fIsInitialized)
		return E_UNEXPECTED;		// already initialized with InitNew

	m_fIsInitialized = true;
	m_fIsDirty = false;

return NOERROR;
}

STDMETHODIMP CSelObjWndPropAct::Save (LPSTREAM pStm, BOOL fClearDirty)
{
	return E_NOTIMPL;
}

STDMETHODIMP CSelObjWndPropAct::GetSizeMax (ULARGE_INTEGER FAR* pcbSize)
{
	return E_NOTIMPL;
}

STDMETHODIMP CSelObjWndPropAct::InitNew (void)
{
	if (m_fIsInitialized)
		return E_UNEXPECTED;		// already initialized with Load

	m_fIsInitialized = true;
	m_fIsDirty = false;

return NOERROR;
}
