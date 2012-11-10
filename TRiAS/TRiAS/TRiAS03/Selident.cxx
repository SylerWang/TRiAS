// Auswahl aller Objekte verschiedener Objektklassen --------------------------
// File: SELIDENT.CXX

#include "trias03p.hxx"
#include "trias03.h"

#include <xtsnguid.h>
#include <eonrguid.h>
#include <propguid.h>
#include <statguid.h>

#include <eieruhr.hxx>
#include <funcs03.h>

#if defined(_DEBUG) && defined(WIN32)
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

#include "enumonr.hxx"
#include "selident.hxx"
#include "selidprp.hxx"

///////////////////////////////////////////////////////////////////////////////
// Umrechnen der verschiedenen Darstellungsformen der Objekttypen 
short OTypToBits (ObjTyp iOTyp);

///////////////////////////////////////////////////////////////////////////////
// Konstruktor/Destruktor/Initialisierung 
#pragma warning (disable: 4355)

CSelectIdentDlg::CSelectIdentDlg (CSelIDPropAct *pParent, ResID uiDlg, 
									LPCSTR pcCaption, ADDENTRYPROC pFcnAdd)
		 : CPropertyPage (uiDlg, pcCaption),
		   m_pbSelAll (this, IDB_SELALLCLASSES),
		   m_dwFlags(0), m_pParent(pParent),
		   m_pFcnAdd(pFcnAdd)
{
	m_pIdents = NULL;	// ListViewCtrl
	m_pIEnumObjs = NULL;

	m_fResultPrepared = false;
	m_iCurrPacket = 0;
}

#pragma warning (default: 4355)

CSelectIdentDlg::~CSelectIdentDlg (void)
{
	DELETE_OBJ (m_pIdents);
	if (m_pIEnumObjs) m_pIEnumObjs -> Release();
}

CSelectIdentDlg *CSelectIdentDlg::CreateInstance (
		CSelIDPropAct *pParent, ResID resID, LPCSTR pcCaption, ADDENTRYPROC pFcnAdd)
{
	try {
	CSelectIdentDlg *pDlg = NULL;
	
		pDlg = new CSelectIdentDlg (pParent, resID, pcCaption, pFcnAdd);
		if (pDlg == NULL || !pDlg -> FInit()) {
			DELETE_OBJ (pDlg);
			return NULL;
		}
		return pDlg;
	} catch (...) {
		return NULL;
	}
}

bool CSelectIdentDlg::FInit (void)
{
// IdentifikatorListBox f�llen
	m_pIdents = new CSelIdentListViewWindow (this, IDC_LISTIDENTS);
	if (m_pIdents == NULL) return false;

	m_pIEnumObjs = NULL;
	CoCreateInstance (CLSID_EnumObjectsByNumber, NULL, CLSCTX_INPROC_SERVER,
					  IID_IEnumLONG, (LPVOID *)&m_pIEnumObjs);

	return (NULL != m_pIEnumObjs) ? true : false;
}

// Vergleichsfunktion, um Reihenfolge festzulegen
int CALLBACK CmpEntries (LPARAM lParam1, LPARAM lParam2, LPARAM dwData)
{
CSelIdentItem *pItem1 = reinterpret_cast<CSelIdentItem *>(lParam1);
CSelIdentItem *pItem2 = reinterpret_cast<CSelIdentItem *>(lParam2);
char cbBuffer1[MAX_OKS_LEN];
char cbBuffer2[MAX_OKS_LEN];

// bei Fehler Reihenfolge beibehalten
	if (NULL == pItem1 || NULL == pItem2)
		return -1;
	if (FAILED(ClassFromIdent (pItem1->m_ulIdent, cbBuffer1)))
		return -1;
	if (FAILED(ClassFromIdent (pItem2->m_ulIdent, cbBuffer2)))
		return -1;

	return strcmp (cbBuffer1, cbBuffer2);
}

// Der wohl wichtigste Unterschied zu einem normalen Dialogfenster besteht
// darin, da� alle Controls dieser Dialogseite explizit im WindowInit()-Event-
// handler initialisiert werden m�ssen (s.u.). Alle inhaltlichen Initialisierungen
// k�nnen erst danach erfolgen (und nicht wie gewohnt im Konstruktor)
void CSelectIdentDlg::WindowInit (Event)
{
CEierUhr Wait (this);		// EierUhr anzeigen

// ListViewCtrl initialisieren/Identifikatoren laden (aber nur gew�nschte Typen)
	if (NULL == m_pIdents || !m_pIdents -> FInit() || 
		!(*m_pIdents) -> InitControl((OTPunkt|OTLinie|OTFlaeche|OTText) & ~m_caSelIds.dwHideTypes, 
								m_caSelIds.ulSelectFrom, NULL, CmpEntries, 0L, m_pFcnAdd))
	{
		return;
	}

// new for 'Nashville' (#HK960823)
#if defined(ListView_GetExtendedListViewStyle)
	if (IsWin40()) {
	DWORD dwStyleEx = (*m_pIdents) -> GetExtendedStyle();

		(*m_pIdents) -> SetExtendedStyle (dwStyleEx | LVS_EX_FULLROWSELECT|LVS_EX_HEADERDRAGDROP|LVS_EX_INFOTIP);
	}
#endif 

// Button SelectAll initialisieren und richten
	m_pbSelAll.FInit();
	if ((*m_pIdents) -> GetItemCount())
		m_pbSelAll.Enable();
	else
		m_pbSelAll.Disable();

	AdjustOK();

// Eintr�ge vorselektieren
int iIndex = -1;

	for (ULONG ul = 0; ul < m_caSelIds.cElems; ul++) 
		iIndex = SelectIdent (m_caSelIds.pElems[ul].m_lIdent, m_caSelIds.pElems[ul].m_iOTyp);
	
	if (-1 != iIndex) {	// letzten selektierten mit Focus versehen
		(*m_pIdents) -> EnsureVisible (iIndex, false);
		(*m_pIdents) -> SelectItemFocus (iIndex);
	}
}

///////////////////////////////////////////////////////////////////////////////
// EventHandler 
void CSelectIdentDlg::ButtonClick (ControlEvt e)
{
	switch ((uint)e.GetControlID()) {
	case IDB_SELALLCLASSES:	// alle markieren
		(*m_pIdents) -> ChangeSelectedAll (true);
		SetDirty();
		AdjustOK();
		break;
	}
}

void CSelectIdentDlg::OnItemChanged (NotifyEvt e)
{
NM_LISTVIEW *pNfyData = reinterpret_cast<NM_LISTVIEW *>(e.GetNotifyInfo());

	if (!(pNfyData -> uChanged & LVIF_STATE))
		return;		// Status nicht ge�ndert

// Selektion erhalten/verloren
	if (pNfyData -> uOldState & LVIS_SELECTED ||
		pNfyData -> uNewState & LVIS_SELECTED)
	{
		SetDirty();
		AdjustOK();
	}

//	if (((NM_LISTVIEW *)e.GetNotifyInfo()) -> uChanged & LVIF_STATE)
//		AdjustOK();
}

int CSelectIdentDlg::OnSetActive (NotifyEvt)
{
	AdjustOK();
	return 0;
}

// Der Dialog wurde mit Cancel geschlossen ------------------------------------
void CSelectIdentDlg::OnCancel (NotifyEvt)
{
	// hier evtl. Aufr�umarbeiten durchf�hren
}

int CSelectIdentDlg::OnWizNext (NotifyEvt)
{
	if (PrepareResult()) 	// Ergebnisse zwischenspeichern
		return 0;
	return -1;
}

///////////////////////////////////////////////////////////////////////////////
// Finish wurde gedr�ckt 
int CSelectIdentDlg::OnWizFinish (NotifyEvt)
{
	PrepareResult();	// Ergebnisse zwischenspeichern
	return 0;
}

void CSelectIdentDlg::OnClick (NotifyEvt e)
{
// UINT uiResID = e.GetControlID();
NMHDR *pNMHdr = e.GetNotifyInfo();
POINT pt;

	GetCursorPos (&pt);
	ScreenToClient (pNMHdr -> hwndFrom, &pt);
	pt.x = 1;	// ganz am linken Rand testen

UINT uiFlags = 0L;
int iIndex = (*m_pIdents) -> HitTest ((Point &)pt, &uiFlags);

	if (uiFlags & LVHT_ONITEM && 0 <= iIndex) {
		(*m_pIdents) -> SetItemState (iIndex, LVIS_SELECTED|LVIS_FOCUSED, LVIS_SELECTED|LVIS_FOCUSED);
		(*m_pIdents) -> Update (iIndex);
	}
	CPropertyPage::OnClick(e);
}

///////////////////////////////////////////////////////////////////////////////
// HilfeRoutine 
void CSelectIdentDlg::HelpRequest (HelpRequestEvt e)
{
const HELPINFO *pHI = e.GetHelpInfo();

	TX_ASSERT(pHI);
}

///////////////////////////////////////////////////////////////////////////////
// Hilfsfunktionen, um Objekte aufzusammeln 
extern "C" 
BOOL PASCAL GetObjectsFromIdentDoc (long lONr, DWORD dwOTyp, void *pData)
{
	((IEnum<LONG> *)pData) -> AddItem (lONr);
	return true;	// immer weiter machen
}

bool FillTrees (long lIdent, short iOTyp, IEnum<LONG> *pIEnum)
{
// Enumerator f�llen
ENUMLONGKEYEX ELK;

	ELK.eKey = lIdent;
	ELK.eFcn = (ENUMLONGKEYEXPROC)GetObjectsFromIdentDoc;
	ELK.ePtr = pIEnum;
	ELK.eData = (DWORD)iOTyp;
	return DEX_EnumIdentObjectsEx (ELK);
}

///////////////////////////////////////////////////////////////////////////////
// �bergibt die zu verarbeitende Objektmenge 
HRESULT CSelectIdentDlg::SetEnumLONG (IEnum<LONG> *pIEnum)
{
LONG lONr = 0L;

	if (m_pIEnumObjs) {
		for (pIEnum -> Reset(); S_OK == pIEnum -> Next (1, &lONr, NULL); /**/) {
		// und zu lokalem Enumerator aller umklassifizieren Objekte hinzuf�gen
			m_pIEnumObjs -> AddItem (lONr);
		}
	}

	m_iCurrPacket = 0;
	return S_OK;
}

///////////////////////////////////////////////////////////////////////////////
// Fragt den Dialog nach seinen Daten 
HRESULT CSelectIdentDlg::GetEnumLONG (IEnum<LONG> **ppIEnum, bool fMakePackets)
{
	if (NULL == ppIEnum) 
		return E_POINTER;

HRESULT hr = S_OK;

	COM_TRY {
	WEnumLONG IObjs (CLSID_EnumObjectsByNumber); // Enumerator generieren
	ULONG ulCount = (NULL != m_pIEnumObjs) ? m_pIEnumObjs -> Count() : 0L;

		if (ulCount > 0) {
			_ASSERTE(!fMakePackets);	// mit EIngabemenge werden keine Pakete gebildet

		// Eingabeobjektmenge gegeben, also lediglich filtern
			SetMaxTicks(ulCount);

		// alle Ident/Objekttyp Paare in set speichern
			typedef map<LONG, int, less<LONG> > CIdents;

		CIdents Ids;

			for (ULONG i = 0; i < m_caSelIds.cElems; i++) 
			{
				Ids.insert(m_caSelIds.pElems[i].m_lIdent, m_caSelIds.pElems[i].m_iOTyp);
			}

		// alle Objekte der Eingabemenge durchgehen und Zugeh�rigkeit testen
		LONG lONr = 0;

			for (m_pIEnumObjs -> Reset(); S_OK == m_pIEnumObjs -> Next (1, &lONr, NULL); /**/) {
			LONG lIdent = DEX_GetObjIdent (lONr);
			int iTyp = DEX_GetObjectType (lONr);
			CIdents::iterator it = Ids.find (lIdent);

				if (it == Ids.end()) {
				// evtl. Zuordnungsobjektklasse
				CIdents::iterator it = Ids.find (DEX_GetObjIdentEx (lONr));		

					if (it != Ids.end() && ((*it).second & OTypToBits((ObjTyp)iTyp))) {
						IObjs -> AddItem (lONr);	// zur Ausgabemenge hinzuf�gen
						Tick();
					}
				} 
				else {
				// normale Objektklasse
					if (it != Ids.end() && ((*it).second & OTypToBits((ObjTyp)iTyp))) {
						IObjs -> AddItem (lONr);	// zur Ausgabemenge hinzuf�gen
						Tick();
					}
				}
				if (FAILED(GoOn()))
					_com_issue_error(E_ABORT);
			}
		} 
		else {
		// Enumerator f�llen
			if (!fMakePackets) {
			// JG 980915 ProgIndicator behandeln
				SetMaxTicks(m_caSelIds.cElems);	
				for (ULONG i = 0; i < m_caSelIds.cElems; i++) {
					FillTrees (m_caSelIds.pElems[i].m_lIdent, 
						m_caSelIds.pElems[i].m_iOTyp, IObjs);
					Tick();
					if (FAILED(GoOn()))
						_com_issue_error(E_ABORT);
				}
			}
			else {
			// JG 980915 ProgIndicator behandeln
				if (0 == m_iCurrPacket)
					SetMaxTicks(m_caSelIds.cElems);

			// das n�chste Paket liefern
				FillTrees (m_caSelIds.pElems[m_iCurrPacket].m_lIdent, 
					m_caSelIds.pElems[m_iCurrPacket].m_iOTyp, IObjs);
				Tick();
				if (FAILED(GoOn()))
					_com_issue_error(E_ABORT);

			// ggf. letztes Paket gearbeitet
				hr = (++m_iCurrPacket == m_caSelIds.cElems) ? S_OK : S_FALSE;
			}
		}
		*ppIEnum = IObjs.detach();

	// explizit Statusanzeige auf 100 %
		if (S_OK == hr)
			TickToEnd();

	} COM_CATCH_NOASSERT_ON(E_ABORT);
	return hr;
}

///////////////////////////////////////////////////////////////////////////////
// HilfsRoutinen 
void CSelectIdentDlg::AdjustOK (bool fDisableNext)
{
DWORD dwBttns = 0;
int iCnt = (*m_pIdents) -> GetSelectedCount();

	if (!(m_dwFlags & ADDPAGES_FIRSTPAGE))
		dwBttns |= PSWIZB_BACK;

	if (0 < iCnt && !fDisableNext) {
		if (m_dwFlags & ADDPAGES_LASTPAGE)
			dwBttns |= PSWIZB_FINISH;
		else
			dwBttns |= PSWIZB_NEXT;
	} else if (m_dwFlags & ADDPAGES_LASTPAGE)
		dwBttns |= PSWIZB_DISABLEDFINISH;

	SetSheetWizardButtons (dwBttns);
}

// Ergebnisdaten aus Controls lesen und zwischenspeichern ---------------------
bool CSelectIdentDlg::PrepareResult (void)
{
int iCnt = GetSelectedCount();

	try {
	// Feld aufbauen und mit selektierten Eintr�gen f�llen
		m_caSelIds.SetData (iCnt, (SELIDRESULT *)CoTaskMemAlloc (iCnt*sizeof(SELIDRESULT)));
		if (NULL == m_caSelIds.pElems)
			_com_issue_error(E_OUTOFMEMORY);

		m_fResultPrepared = true;
	
	} catch (...) {
		return false;
	}

// Daten aus Page lesen und speichern
long lIdent = 0;
short iOTyp = 0;
int i = 0;

// liefert alle Objekte die selektierten Eintr�gen entsprechen
	iCnt = 0;
	if (GetFirstIdent (lIdent, iOTyp, i)) {
		do {
			m_caSelIds.pElems[iCnt].m_lIdent = lIdent;
			m_caSelIds.pElems[iCnt].m_iOTyp = iOTyp;
			iCnt++;
		} while (i < (int)m_caSelIds.cElems && GetNextIdent (lIdent, iOTyp, i));
	}

	m_caSelIds.cElems = iCnt;	// wahre Anzahl

return true;
}

///////////////////////////////////////////////////////////////////////////////
// AbfrageRoutinen ------------------------------------------------------------
bool CSelectIdentDlg::GetFirstIdent (long &rlIdent, short &riOTyp, int &riCnt)
{
	return (*m_pIdents) -> GetFirstIdentEx (rlIdent, riOTyp, riCnt);
}

bool CSelectIdentDlg::GetNextIdent (long &rlIdent, short &riOTyp, int &riCnt)
{
	return (*m_pIdents) -> GetNextIdentEx (rlIdent, riOTyp, riCnt);
}

int CSelectIdentDlg::GetItemCount (void)
{
	return (*m_pIdents) -> GetItemCount();
}

int CSelectIdentDlg::GetSelectedCount (void)
{
	return (*m_pIdents) -> GetSelectedCount();
}

int CSelectIdentDlg::SelectIdent (long lIdent, short iOTyp, bool fSel)
{
int fResult = -1;

	if (iOTyp & OTPunkt) 
		fResult = (*m_pIdents) -> SelectIdent (lIdent, OTPunkt, fSel);
	if (iOTyp & OTLinie) 
		fResult = (*m_pIdents) -> SelectIdent (lIdent, OTLinie, fSel);
	if (iOTyp & OTFlaeche) 
		fResult = (*m_pIdents) -> SelectIdent (lIdent, OTFlaeche, fSel);
	if (iOTyp & OTText) 
		fResult = (*m_pIdents) -> SelectIdent (lIdent, OTText, fSel);

	AdjustOK();
	return fResult;
}

// Setzen und Abfragen der Dialoginformationen
HRESULT CSelectIdentDlg::GetSelectedInfo (CCaSelIdResult *pSelInfo)
{
	if (!m_fResultPrepared)	return S_FALSE;

	try {
		*pSelInfo = m_caSelIds;		// throws hr
	} catch (_com_error& hr) {
		return _COM_ERROR(hr);
	}

	return NOERROR;
}

HRESULT CSelectIdentDlg::SetSelectedInfo (CCaSelIdResult *pSelInfo, bool fNoShow)
{
// AnfangsInitialisierung
	m_fResultPrepared = fNoShow;

	if (NULL == pSelInfo) return E_POINTER;

	try {
		m_caSelIds = *pSelInfo;		// umkopieren
	} catch (_com_error& hr) {
		return _COM_ERROR(hr);
	}

	return NOERROR;
}

///////////////////////////////////////////////////////////////////////////////
// Sonstiges
void CSelectIdentDlg::SetDirty (bool fDirty)
{ 
	if (m_pParent) m_pParent -> SetDirty (fDirty); 
}
