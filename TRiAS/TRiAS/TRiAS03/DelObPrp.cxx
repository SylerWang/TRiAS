// PropertyAction, welche Ident/Objekttypen ausw�hlt und zusammenstellt -------
// File: DELOBPRP.CXX

#include "trias03p.hxx"
#include "trias03.h"

#include <xtsnguid.h>
#include <eonrguid.h>
#include <statguid.h>

#include <pdataobj.hxx>
#include <funcs03.h>
#include <TrCatIds.h>
#include <registry.hxx>

#include "Strings.h"

#if defined(_DEBUG) && defined(WIN32)
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#include "delobprp.hxx"

///////////////////////////////////////////////////////////////////////////////
// Min-Funktion, da Macro aus stdlib offensichtlich �berladen ist
template<class T>
inline T tmin (T a, T b) { return (a > b) ? b : a; }

///////////////////////////////////////////////////////////////////////////////
// ben�tigte InterfaceWrapper
DefineSmartInterface(DataObject);
DefineSmartInterface(EnumObjectsByNumber);

extern char g_pDLLName[_MAX_PATH];		// dieser Modul

// 0E54C9E0-20DE-11CF-BA55-00AA0018497C	
// DEFINE_GUID(CLSID_SelectIdentObjTyp, 0x0E54C9E0L, 0x20DE, 0x11CF, 0xBA, 0x55, 0x00, 0xAA, 0x00, 0x18, 0x49, 0x7C);
// 'CLSPROP_ROOT\TRiAS� (allgemein)\Objektauswahl nach Identifikator und Objekttyp'
CDelObjPropAct::CDelObjPropAct (void)
{
	m_fIsInitialized = false;
    m_fWarned = true;

// wenn gewarnt werden soll, dann Fl�g r�cksetzen
CCurrentUser regCfg (KEY_READ, g_cbRegConfig);
DWORD dwWarn = 0;

    if (regCfg.GetDWORD(g_cbWarnBeforeDelObj, dwWarn) && 0 != dwWarn)
		m_fWarned = false;

	try {
	ResourceFile RF (g_pDLLName);
	ResString resPropInfo (ResID (IDS_PROPINFO_DELOBJECT, &RF), 64);

		m_strDesc = resPropInfo;
	} catch (...) {
		TX_ASSERT(false);
	}
}

CDelObjPropAct::~CDelObjPropAct (void)
{
}

///////////////////////////////////////////////////////////////////////////////
// IClassProperty specific functions 
STDMETHODIMP CDelObjPropAct::GetPropInfo (LPSTR pBuffer, WORD wLen, DWORD *pdwFlags)
{
	try {
		if (NULL != pBuffer && wLen > 0) {
		// Namen der Property kopieren
		ULONG ulLen = tmin ((size_t)(wLen-1), m_strDesc.length());

			strncpy (pBuffer, m_strDesc.c_str(), ulLen);
			pBuffer[ulLen] = '\0';
		}
	} catch (...) {
		return E_FAIL;
	}

// wenn gew�nscht, Flags �bergeben
	if (pdwFlags) 
		*pdwFlags = PROPCAPS_ACTION_SINK|PROPCAPS_ACTION_MUSTREPAINT|PROPCAPS_ACTION_MUSTREPAINTLEGEND;
	
	return NOERROR;
}

STDMETHODIMP CDelObjPropAct::HelpInfo (LPSTR pBuffer, ULONG wLen, LPSTR pHelpFile, ULONG *pulHelpCtx)
{
	try {
		if (NULL != pBuffer && wLen > 0) {
		// Beschreibung �bergeben
		ResourceFile RF (g_pDLLName);
		ResString resHelp (ResID (IDS_HELPDESC_DELOBJECT, &RF), 128);
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
	
	return S_OK;
}

///////////////////////////////////////////////////////////////////////////////
// IPropertyAction methods 
STDMETHODIMP CDelObjPropAct::AddConfigPages (
				LPFNADDPROPSHEETPAGE lpfnAddPage, LPARAM lParam, 
				LPCSTR pcDesc, UINT *puiCnt)
{
	if (puiCnt) *puiCnt = 0;
	return S_OK;
}

STDMETHODIMP CDelObjPropAct::BeginAction (IProgressIndicator *pIProgInd)
{
	try {
		m_Progress = pIProgInd;		// throws hr
	} catch (_com_error& hr) {
		return _COM_ERROR(hr);
	}
	return S_OK;
}

STDMETHODIMP CDelObjPropAct::DoAction (IDataObject *pEnumObj, DWORD dwReserved)
{
WEnumObjectsByNumber IEnumObj;
ResourceFile RF (g_pDLLName);
HRESULT hr = GetEnumLONGData (pEnumObj, IID_IEnumObjectsByNumber, IEnumObj.ppv());

	if (S_OK != hr) 
		return S_OK;		// nothing to do

// ProgressIndicator initialisieren
	USES_CONVERSION;

	if (NULL != (IProgressIndicator2 *)m_Progress) {
	ULONG lCnt = 0;

		IEnumObj -> GetCount (&lCnt);
		if (0 >= lCnt) 
			return S_OK;		// nothing to do

	DWORD dwFlags = PIFLAG_CAPTION|PIFLAG_STATUS|PIFLAG_RESULT|PIFLAG_TIME|PIFLAG_ADJUSTPERCENT;

		// JG only a test
		dwFlags |= PIFLAG_AVI_DELETE;
		m_Progress -> Restart (0, lCnt, (PIFLAGS)dwFlags);

	ResString resStatus (ResID (IDS_DELOBJECTSTATUS, &RF), 128);
	int iPercent;

		m_Progress -> ChangeText (PIFLAGS_CAPTION, A2OLE(m_strDesc.c_str()));
		m_Progress -> ChangeText (PIFLAGS_STATUS, A2OLE(resStatus.Addr()));
		m_Progress -> ChangeText (PIFLAGS_RESULT, L"");
		m_Progress -> SetPosition (0, &iPercent);
	}

// alle geforderten Objekte mit Undo l�schen
	try {
	LONG lONr;
	ResString resUndo (ResID(IDS_PROPINFO_DELOBJECT, &RF), 128);
	ResString resResult (ResID (IDS_DELOBJECTRESULT, &RF), 64);
	char cbResult[64];

		DEX_BeginUndoLevel(resUndo.Addr());

	// Objekte l�schen
		for (IEnumObj -> Reset(); S_OK == IEnumObj -> Next (1, &lONr, NULL); /**/) {
		// wenn gewarnt werden soll, dann dieses jetzt tun
			if (!m_fWarned) {
			char cbCaption[128];

				GetPropInfo (cbCaption, sizeof(cbCaption), NULL);

			ResourceFile RF (g_pDLLName);
			ResString resWarn (ResID (IDS_WARNOBJECTDELETE, &RF), 255);
			Window Wnd (__hWndM);
			MessBox mb(cbCaption, resWarn, &Wnd);

				mb.SetType (YesNoButtons|QuestionMarkIcon);
				switch (mb.Show()) {
				case YesReply:
					break;

				default:
				case NoReply:
					return E_ABORT;			// ganz abbrechen
				}
				m_fWarned = true;
			}

		// jetzt wirklich l�schen
			DEX_DeleteObjectEx(lONr);
			if (NULL != (IProgressIndicator2 *)m_Progress) {
				
				wsprintf (cbResult, resResult, lONr);
				m_Progress -> ChangeText (PIFLAGS_RESULT, A2OLE(cbResult));

				// JG 980916
				INT retval = 0;
				// m_Progress -> IncrementPosition (NULL);
				m_Progress -> IncrementPosition (&retval);
				if (S_OK == m_Progress -> IsCanceled()) 
					break;
			}
		}

		DEX_EndUndoLevel();
	
	} catch (_com_error& hr) {
	// kein undo machen, sondern die Liste abschlie�en (HK040608)
		DEX_EndUndoLevel();
//		DEX_CancelUndoLevel(false);
		return _COM_ERROR(hr);
	}
	return S_OK;
}

STDMETHODIMP CDelObjPropAct::EndAction (DWORD, IDataObject **ppDataObj)
{
	if (NULL == ppDataObj) return E_POINTER;

	*ppDataObj = NULL;	// keine AusgabeDaten
	return S_OK;		// nicht nochmal rufen
}

///////////////////////////////////////////////////////////////////////////////
// IPersist methods
STDMETHODIMP CDelObjPropAct::GetClassID (LPCLSID lpClassID)
{
	if (NULL == lpClassID)
		return E_POINTER;

	*lpClassID = CLSID_DeleteObjects;
	return NOERROR;
}

// IPersistStreamInit methods
STDMETHODIMP CDelObjPropAct::IsDirty (void)
{
	return S_FALSE;		// immer nicht dirty
}

STDMETHODIMP CDelObjPropAct::Load (LPSTREAM pStm)
{
	if (m_fIsInitialized)
		return E_UNEXPECTED;		// already initialized with InitNew

// zuerst Bezeichner einlesen
HRESULT hr = CPropertyAction::Load (pStm);

	if (FAILED(hr)) return hr;

	m_fIsInitialized = true;
	return S_OK;
}

STDMETHODIMP CDelObjPropAct::InitNew (void)
{
	if (m_fIsInitialized)
		return E_UNEXPECTED;		// already initialized with Load

	m_fIsInitialized = true;
	return S_OK;
}

///////////////////////////////////////////////////////////////////////////////
// IPropertyInfo specific functions 
STDMETHODIMP CDelObjPropAct::SetPropInfo (LPCSTR pcBuffer, DWORD dwFlags) 
{
	if (NULL == pcBuffer) return E_POINTER;

	m_strDesc = pcBuffer;
	return S_OK;
}

