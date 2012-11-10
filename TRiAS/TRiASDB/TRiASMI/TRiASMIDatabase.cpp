// $Header: $
// Copyright� 1998-2000 TRiAS GmbH Potsdam, All rights reserved
// Created: 14.09.2000 21:21:48
//
// This file was generated by the TRiASDB Data Server Wizard V1.02.103 (#HK000729)
//
// @doc 
// @module TRiASMIDatabase.cpp | Datenbankobjekt TRiASDB Data Server TRiASMI

#include "stdafx.h"

#include <float.h>
#include <Com/ComBool.h>

#include "Version.h"
#include "Strings.h"

#include "TRiASMI.h"
#include "TRiASMIDatabase.h"

///////////////////////////////////////////////////////////////////////////////
// CTRiASMDatabase

STDMETHODIMP CTRiASMIDatabase::InterfaceSupportsErrorInfo(REFIID riid)
{
	static const IID* arr[] = 
	{
		&IID_ITRiASDatabase,
		&IID_ITRiASPropertyBase,
	};
	for (int i=0; i < sizeof(arr) / sizeof(arr[0]); i++)
	{
		if (InlineIsEqualGUID(*arr[i],riid))
			return S_OK;
	}
	return S_FALSE;
}

HRESULT CTRiASMIDatabase::FinalConstruct (void)
{
	return S_OK;
}

void CTRiASMIDatabase::FinalRelease()
{
}

///////////////////////////////////////////////////////////////////////////////
// ITRiASBase
STDMETHODIMP CTRiASMIDatabase::get_Application (IDispatch **pVal)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	CHECKOUTPOINTER(pVal);

WDispatch disp (m_Application);

	*pVal = disp.detach();
	return S_OK;
}

STDMETHODIMP CTRiASMIDatabase::put_Application (IDispatch *newVal)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	m_Application = newVal;
	return S_OK;
}

STDMETHODIMP CTRiASMIDatabase::get_Parent (IDispatch **pVal)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	CHECKOUTPOINTER(pVal);

WDispatch disp (m_Parent);

	*pVal = disp.detach();
	return S_OK;
}

STDMETHODIMP CTRiASMIDatabase::put_Parent (IDispatch *newVal)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	m_Parent = newVal;
	return S_OK;
}

///////////////////////////////////////////////////////////////////////////////
// ITRiASDatabase
STDMETHODIMP CTRiASMIDatabase::get_Handle (INT_PTR *pVal)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	CHECKOUTPOINTER(pVal);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED);

	*pVal = reinterpret_cast<INT_PTR>(this);
	return S_OK;
}

STDMETHODIMP CTRiASMIDatabase::get_IsDirty (VARIANT_BOOL *pVal)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	CHECKOUTPOINTER(pVal);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED);

	*pVal = m_fIsDirty ? VARIANT_TRUE : VARIANT_FALSE;
	return S_OK;
}

STDMETHODIMP CTRiASMIDatabase::put_IsDirty (VARIANT_BOOL newVal)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED);

	m_fIsDirty = newVal ? true : false;
	return S_OK;
}

STDMETHODIMP CTRiASMIDatabase::get_OpenedAsCopy (VARIANT_BOOL * pVal)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	CHECKOUTPOINTER(pVal);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED);
		
	*pVal = VARIANT_FALSE;
	return S_OK;
}

STDMETHODIMP CTRiASMIDatabase::get_CouldOpenTarget (VARIANT_BOOL * pVal)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	CHECKOUTPOINTER(pVal);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED);
		
	*pVal = VARIANT_FALSE;
	return S_OK;
}

STDMETHODIMP CTRiASMIDatabase::get_SchemaUpdatable (VARIANT_BOOL * pVal)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	CHECKOUTPOINTER(pVal);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED);
		
#if defined(_READWRITE)
#pragma TODO("get_SchemaUpdatable mu� VARIANT_TRUE liefern, wenn die Struktur der Datenquelle modifizierbar ist.")
#endif // defined(_READWRITE)

	*pVal = VARIANT_FALSE;
	return S_OK;
}

STDMETHODIMP CTRiASMIDatabase::get_Name (BSTR *pVal)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	CHECKOUTPOINTER(pVal);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED);

CComBSTR bstrName (m_bstrName);

	if (!bstrName)
		return E_OUTOFMEMORY;

	*pVal = bstrName.Detach();
	return S_OK;
}

STDMETHODIMP CTRiASMIDatabase::get_Version (BSTR * pVal)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	CHECKOUTPOINTER(pVal);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED);

CComBSTR bstrVersion (MITAB_VERSION);

	*pVal = bstrVersion.Detach();
	return S_OK;
}

STDMETHODIMP CTRiASMIDatabase::get_VersionLong (LONG *pVal)
{
	CHECKOUTPOINTER(pVal);
	*pVal = TRIASMI_VERSION_MAJOR*100 + TRIASMI_VERSION_MINOR;
	return S_OK;
}

STDMETHODIMP CTRiASMIDatabase::get_CollatingOrder (LONG * pVal)
{
	CHECKOUTPOINTER(pVal);
	return E_NOTIMPL;
}

STDMETHODIMP CTRiASMIDatabase::get_Connect (BSTR * pVal)
{
	CHECKOUTPOINTER(pVal);
	return E_NOTIMPL;
}

STDMETHODIMP CTRiASMIDatabase::get_Transactions (VARIANT_BOOL * pVal)
{
	CHECKOUTPOINTER(pVal);

	*pVal = VARIANT_FALSE;
	return S_OK;
}

STDMETHODIMP CTRiASMIDatabase::get_Updatable (VARIANT_BOOL * pVal)
{
	CHECKOUTPOINTER(pVal);

#if defined(_READWRITE)
	*pVal = VARIANT_TRUE;
#else
	*pVal = VARIANT_FALSE;
#endif // defined(_READWRITE)
	return S_OK;
}

STDMETHODIMP CTRiASMIDatabase::get_Temporary (VARIANT_BOOL * pVal)
{
	CHECKOUTPOINTER(pVal);
	return E_NOTIMPL;
}

STDMETHODIMP CTRiASMIDatabase::put_Temporary (VARIANT_BOOL pVal)
{
	return E_NOTIMPL;
}

STDMETHODIMP CTRiASMIDatabase::get_TemporaryName (BSTR * pVal)
{
	return get_Name (pVal);
}

STDMETHODIMP CTRiASMIDatabase::get_Type (BSTR * pVal)
{
	CHECKOUTPOINTER(pVal);
		
// ProgID des zugeh�rigen Datenbankobjektes
CComBSTR bstr (g_cbDatabase);

	*pVal = bstr.Detach();
	return S_OK;
}

STDMETHODIMP CTRiASMIDatabase::get_StorageMode (DATABASESTORAGEMODE * pVal)
{
	CHECKOUTPOINTER(pVal);

	*pVal = DATABASESTORAGEMODE_DirectoryBased;
	return S_OK;
}

STDMETHODIMP CTRiASMIDatabase::CreateDatabase (BSTR Name, BSTR Locale, BSTR Source)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#if defined(_READWRITE)
#pragma TODO("CreateDatabase erzeugt eine neue Datenquelle.")
#endif // defined(_READWRITE)
	return E_NOTIMPL;
}

STDMETHODIMP CTRiASMIDatabase::CreateDatabaseFromFiles (IUnknown * FileNames, BSTR Locale, BSTR Source)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	return E_NOTIMPL;
}

STDMETHODIMP CTRiASMIDatabase::CreateDatabaseOnStg (IUnknown *pIUnk, BSTR Name, BSTR Locale, BSTR Source)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	return E_NOTIMPL;
}

STDMETHODIMP CTRiASMIDatabase::OpenDatabase (
	BSTR Name, VARIANT_BOOL Exclusive, VARIANT_BOOL fReadOnly, VARIANT_BOOL ModTrack, BSTR Source)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())

#if !defined(_READWRITE)
	_ASSERTE(fReadOnly);		// darf nur schreibgesch�tzt ge�ffnet werden
	if (!fReadOnly)
	{
		RETURN_FAILED_HRESULT(E_INVALIDARG);
	}
#endif // !defined(_READWRITE)

	USES_CONVERSION;
	COM_TRY {
	// Datenbasis �ffnen
		if (FAILED(m_DB.Open(OLE2A(Name), !fReadOnly, false)))
			return TRIASDB_E_COULD_NOT_OPEN;

		m_bstrName = Name;

	// neue PropertiesCollection anlegen und initialisieren
		THROW_FAILED_HRESULT(CreatePropertiesCollection());		// --> TRiASMIPropertyBase.h

	// Tabelle der Objektklassenbeschreibungen initialisierne
		THROW_FAILED_HRESULT(InitObjectsTable());

	// KoordinatenSystemService erzeugen und initialisieren
		THROW_FAILED_HRESULT(InitCoordSystemService());

		m_fOpened = true;		// jetzt ge�ffnet

	} COM_CATCH;
	return S_OK;
}

STDMETHODIMP CTRiASMIDatabase::OpenFilesAsDatabase (
	IUnknown * FileNames, VARIANT_BOOL Exclusive, VARIANT_BOOL ReadOnly, VARIANT_BOOL ModTrack, BSTR Source)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	return E_NOTIMPL;
}

STDMETHODIMP CTRiASMIDatabase::OpenStorageAsDatabase(
	IUnknown *pIUnk, VARIANT_BOOL Exclusive, VARIANT_BOOL fReadOnly, VARIANT_BOOL ModTrack, BSTR Source)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	return E_NOTIMPL;
}

STDMETHODIMP CTRiASMIDatabase::Save()
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#if defined(_READWRITE)
#pragma TODO("Save speichert die �nderungen der Datenquelle.")

	return E_NOTIMPL;
#else
	return TRIASDB_E_DATABASENOTUPDATABLE;
#endif // defined(_READWRITE)
}

STDMETHODIMP CTRiASMIDatabase::SaveAs (BSTR NewName)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
#if defined(_READWRITE)
#pragma TODO("Save speichert die �nderungen der Datenquelle unter einem neuen Namen.")

	return E_NOTIMPL;
#else
	return TRIASDB_E_DATABASENOTUPDATABLE;
#endif // defined(_READWRITE)
}

STDMETHODIMP CTRiASMIDatabase::Close()
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED);

	COM_TRY {
	// alle Objekte abh�ngen (_vor_ FreePropertiesCollection, da sonst neue Coll erzeugt wird)
		if (m_ObjectsDefs.IsValid()) {
		// nur, wenn Collection bereits erzeugt worden ist
			m_ObjectsDefs -> put_Parent (NULL);
			m_ObjectsDefs.Assign(NULL);
		}
		
	// alles freigeben
		ShutdownCoordSystemService();
		ReleasePropertySupportObjects();		// --> TRiASMIPropertySupport.h
		FreePropertiesCollection();				// --> TRiASMIPropertyBase.h

		m_bstrName.Empty();

	// es soolte vorher gespeichert worden sein
		m_DB.Close();

	} COM_CATCH;
	return S_OK;
}

STDMETHODIMP CTRiASMIDatabase::BeginTrans()
{
	return E_NOTIMPL;
}

STDMETHODIMP CTRiASMIDatabase::ClearModificationLog(LONG Entry)
{
	return E_NOTIMPL;
}

STDMETHODIMP CTRiASMIDatabase::CommitTrans()
{
	return E_NOTIMPL;
}

STDMETHODIMP CTRiASMIDatabase::Rollback()
{
	return E_NOTIMPL;
}

STDMETHODIMP CTRiASMIDatabase::ReLoad (RELOADDATABASE rgWhat)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState());

HRESULT hr = S_OK;

	if (RELOADDATABASE_All == rgWhat) {
	// alles neu einlesen
		RETURN_FAILED_HRESULT(OnReLoadObjects());
		RETURN_FAILED_HRESULT(OnReLoadEnvelope());

	} else switch (rgWhat) {
	case RELOADDATABASE_Envelope:
		hr = OnReLoadEnvelope();
		break;

	case RELOADDATABASE_Objects:
		hr = OnReLoadObjects();
		break;

	case RELOADDATABASE_ConnectionInitialized:
		hr = InitObjectsTable();
		break;
	}
	return hr;
}

HRESULT CTRiASMIDatabase::OnReLoadObjects()
{
	return S_OK;
}

HRESULT CTRiASMIDatabase::OnReLoadEnvelope()
{
	return S_OK;
}

///////////////////////////////////////////////////////////////////////////////
// 
STDMETHODIMP CTRiASMIDatabase::RefreshChangesFromModificationLog (
	ITRiASRefreshChangesCallback *pICallback)
{
	return E_NOTIMPL;
}

///////////////////////////////////////////////////////////////////////////////
// ITRiASAccessDatabase

// liefert die Sammlung aller Objektklassen dieser Datenquelle
STDMETHODIMP CTRiASMIDatabase::get_ObjectsDefs (ITRiASObjectsCollection **pVal)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	CHECKOUTPOINTER(pVal);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED)

// wenn die Collection bereits existiert, dann lediglich diese zur�ckliefern
	if (m_ObjectsDefs.IsValid()) 
		return LPUNKNOWN(*pVal = m_ObjectsDefs) -> AddRef(), S_OK;

// ansonsten neu erzeugen
	return EnsureObjectsDefs (pVal);
}

HRESULT CTRiASMIDatabase::EnsureObjectsDefs (ITRiASObjectsCollection **pVal)
{
	_ASSERTE(!m_ObjectsDefs.IsValid());
	COM_TRY {
	WTRiASObjectsCollection ObjsColl (CLSID_TRiASMIObjectsCollection);

		THROW_FAILED_HRESULT(ObjsColl -> put_Application(m_Application));
		THROW_FAILED_HRESULT(ObjsColl -> put_Parent(GetDispatch()));

		if (m_DB.GetLayerCount() > 0) {
		CLayerIterator it (m_DB);
		CMiTabLayer *pLayer = it.GetFirstLayer();
		WTRiASMDSMap ObjsTable (GetProperty (GetProperties(), g_cbMetaDataMap, (IDispatch *)NULL), false);

			_ASSERTE(NULL != pLayer);
			_ASSERTE(ObjsTable.IsValid());

			do {
			// Objektklasse instantiieren
			WTRiASObjects Objs (CLSID_TRiASMIObjects);

			// Objektklasse fertig initialisieren
				THROW_FAILED_HRESULT(WPersistStreamInit(Objs) -> InitNew());
				THROW_FAILED_HRESULT(Objs -> put_Application (m_Application));
				THROW_FAILED_HRESULT(Objs -> put_Parent (GetDispatch()));

			// Namen etc. dieser Objektklasse festlegen
				_ASSERTE(NULL != pLayer -> GetName() && '\0' != *pLayer -> GetName());

			CComBSTR bstrTable(pLayer -> GetName());
				
			// evtl. existierende Beschreibungstabelle auswerten
			WTRiASMDSStringColl ObjsDesc;
			CComBSTR bstrDesc, bstrName;

				if (S_OK == ObjsTable -> Search (bstrTable, mdsSM_SrchName|mdsSM_Compare, ObjsDesc.ppi())) {
				WEnumVARIANT Enum;
				CComVariant v, vIdent;

					THROW_FAILED_HRESULT(ObjsDesc -> _NewEnum (Enum.ppu()));
					THROW_FAILED_HRESULT(Enum -> Reset());

					if (S_OK == Enum -> Next (1, &v, NULL)) {
					// das erste gefundene Element wird verwendet
						THROW_FAILED_HRESULT(v.ChangeType (VT_BSTR));

					// ggf. existierende neue Texte speichern
#if defined(_DEBUG)
					CComBSTR bstrTableT;

						THROW_FAILED_HRESULT(ObjsTable -> GetAt (V_BSTR(&v), &bstrTableT, CLEARED(&bstrName), CLEARED(&bstrDesc), CLEARED(&vIdent)));
						_ASSERTE(bstrTableT == bstrTable);
#else
						THROW_FAILED_HRESULT(ObjsTable -> GetAt (V_BSTR(&v), NULL, CLEARED(&bstrName), CLEARED(&bstrDesc), CLEARED(&vIdent)));
#endif // defined(_DEBUG)

//					CComVariant vOks;
//					ULONG ulOks = wcstoul (V_BSTR(&v), NULL, 16);

						THROW_FAILED_HRESULT(vIdent.ChangeType (VT_UI4));
//						if (0 != ulOks && V_UI4(&vIdent) != ulOks) {
							THROW_FAILED_HRESULT(Objs -> put_OKS (V_BSTR(&v)));			// OKS
//						} 

					// TabellenNamen setzen (wird f�r put_Handle ben�tigt)
						THROW_FAILED_HRESULT(Objs -> put_Name (bstrTable));				// Tabellennamen setzen

					// Handle zuweisen
						THROW_FAILED_HRESULT(Objs -> put_Handle (V_I4(&vIdent)));
						
					// ggf. alles andere wegschreiben
						if (!!bstrName && bstrName.Length() > 0) {
							THROW_FAILED_HRESULT(Objs -> put_Name (bstrName));			// Kurztext
						}
						if (!!bstrDesc && bstrDesc.Length() > 0) {
							THROW_FAILED_HRESULT(Objs -> put_Description (bstrDesc));	// Langtext
						}

					} else {
					// Tabellenname ist erstmal gleichzeitig Kurztext
					INT_PTR hObjs = NULL;

						THROW_FAILED_HRESULT(Objs -> put_Name (bstrTable));
						THROW_FAILED_HRESULT(Objs -> get_Handle (&hObjs));			// Handle erzwingen
					}
				} else {
				// Tabellenname ist erstmal gleichzeitig Kurztext
				INT_PTR hObjs = NULL;

					THROW_FAILED_HRESULT(Objs -> put_Name (bstrTable));
					THROW_FAILED_HRESULT(Objs -> get_Handle (&hObjs));			// Handle erzwingen
				}

			// Typen der Objektklasse setzen
				THROW_FAILED_HRESULT(Objs -> put_CollectionType(OBJECTSCOLLECTIONTYPE_Class));
				THROW_FAILED_HRESULT(Objs -> put_Types(pLayer -> GetTypes()));
				THROW_FAILED_HRESULT(Objs -> put_Updatable(CComBool(pLayer -> GetUpdatable())));

			// Namen der Standard-Objekteigenschaften (Geometrie und Normal) setzen
				THROW_FAILED_HRESULT(Objs -> put_DefaultGeometry (CComBSTR(g_cbGeometry)));
				THROW_FAILED_HRESULT(Objs -> put_PrimaryKey (CComBSTR(g_cbMapInfoId)));

			// an der erzeugten Objektklasse unsere Nummer (cursor) speichern
				THROW_FAILED_HRESULT(SetPropertyBy (Objs, g_cbObjectsCursor, CComVariant(reinterpret_cast<ULONG>(pLayer), VT_I4), true));
				THROW_FAILED_HRESULT(pLayer -> EnsureInitialized(Objs));

			// die neu instantiierte Objektklasse zur Menge der Objektklassen hinzuf�gen
				THROW_FAILED_HRESULT(ObjsColl -> _Add (Objs, VARIANT_TRUE));

				pLayer = it.GetNextLayer();
			} while (NULL != pLayer);
		}
		m_ObjectsDefs = ObjsColl;
		if (NULL != pVal)
			*pVal = ObjsColl.detach();

	} COM_CATCH;
	return S_OK;
}

// liefert bzw. erzeugt eine neue Objektklasse dieser Datenquelle
STDMETHODIMP CTRiASMIDatabase::get_ObjectsDef(
	VARIANT vItem, VARIANT_BOOL fCreate, BSTR Type, ITRiASObjects **pIObjDef)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	CHECKOUTPOINTER(pIObjDef);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED)

	if (!m_ObjectsDefs.IsValid())
	{
		RETURN_FAILED_HRESULT(EnsureObjectsDefs());
	}
	_ASSERTE(m_ObjectsDefs.IsValid());

HRESULT hr = m_ObjectsDefs -> Item (vItem, pIObjDef);

	if (TRIASDB_E_UNKNOWN_OBJECTS == hr && fCreate) {	// evtl. neu erzeugen
	CComVariant v;

		hr = v.ChangeType (VT_BSTR, &vItem);
		if (SUCCEEDED(hr)) {
		CIID ClsId (Type, CIID::INITCIID_InitFromProgId);

			if (!ClsId)	
				hr = m_ObjectsDefs -> Add (V_BSTR(&v), CComBSTR(g_cbNil), pIObjDef);	// default type verwenden
			else
				hr = m_ObjectsDefs -> Add (V_BSTR(&v), CComBSTR(ClsId.ProgID().c_str()), pIObjDef);
			if (S_OK == hr) hr = S_FALSE;				// Objektmenge wurde neu erzeugt
		}
	}
	return hr;
}

///////////////////////////////////////////////////////////////////////////////
// Umschlie�enden Datenbank-Container liefern
STDMETHODIMP CTRiASMIDatabase::get_Envelope (ENVELOPETYPE rgType, IDispatch **pVal)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	CHECKOUTPOINTER(pVal);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED)

	COM_TRY {
	// Koordinaten deskalieren
	double dXMin = DBL_MAX, dYMin = DBL_MAX, dXMax = -DBL_MAX, dYMax = -DBL_MAX;

		if (m_DB.GetLayerCount() > 0) {
		CLayerIterator it (m_DB);
		CMiTabLayer *pLayer = it.GetFirstLayer();

			_ASSERTE(NULL != pLayer);
			do {
			// GetBoundingRect liefert Koordinaten im Projektkoordinatensystem ab (fTransform == true)
			double dXMinT = DBL_MAX, dYMinT = DBL_MAX, dXMaxT = -DBL_MAX, dYMaxT = -DBL_MAX;

				if (SUCCEEDED(pLayer -> GetBoundingRect (&dXMinT, &dYMinT, &dXMaxT, &dYMaxT))) {
					dXMin = min(dXMin, dXMinT);
					dYMin = min(dYMin, dYMinT);
					dXMax = max(dXMax, dXMaxT);
					dYMax = max(dYMax, dYMaxT);
				}
				pLayer = it.GetNextLayer();
			} while (NULL != pLayer);
		}
				
	// Container der Datenquelle setzen
	WTRiASSimpleRectangle Rect (CLSID_TRiASCSRectangleGeometry);
	
		THROW_FAILED_HRESULT(WPersistStreamInit(Rect) -> InitNew());
		THROW_FAILED_HRESULT(Rect -> SetRect (dXMin, dYMin, dXMax, dYMax));
		*pVal = Rect.detach();

	} COM_CATCH;
	return S_OK;
}

STDMETHODIMP CTRiASMIDatabase::get_ObjectCount (long *pVal)
{
	AFX_MANAGE_STATE(AfxGetStaticModuleState())
	CHECKOUTPOINTER(pVal);
	ERROR_EXPR_TRUE(!IsOpened(), TRIASDB_E_DATABASE_NOT_OPENED)

	if (m_DB.GetLayerCount() > 0) {
	CLayerIterator it (m_DB);
	CMiTabLayer *pLayer = it.GetFirstLayer();

		_ASSERTE(NULL != pLayer);
		do {
			*pVal += pLayer -> GetObjectCount();
			pLayer = it.GetNextLayer();
		} while (NULL != pLayer);
	} else
		*pVal = 0;

	return S_OK;
}

STDMETHODIMP CTRiASMIDatabase::get_AttachedCS (BSTR bstrDbName, BSTR *pbstrAssocCS)
{
	return E_NOTIMPL;
}

STDMETHODIMP CTRiASMIDatabase::get_ConnectionFilter(ITRiASConnectionFilter **ppIGeom)
{
	return E_NOTIMPL;
}

STDMETHODIMP CTRiASMIDatabase::put_ConnectionFilter(ITRiASConnectionFilter *pIGeom)
{
	return E_NOTIMPL;
}

STDMETHODIMP CTRiASMIDatabase::get_Views (ITRiASViews **pVal)
{
	return E_NOTIMPL;
}

STDMETHODIMP CTRiASMIDatabase::get_StartViewName (BSTR *pVal)
{
	return E_NOTIMPL;
}

///////////////////////////////////////////////////////////////////////////////
// Koordinatensystem neu initialisieren
HRESULT CTRiASMIDatabase::InitCoordSystemService()
{
	COM_TRY {
	// CTF-Service holen/initialisieren
	WTRiASProperties Props (GetProperties());
	WTRiASCSTransform CST (GetProperty (Props, g_cbTRiASCSTransform, (IDispatch *)NULL), false);

		if (!CST.IsValid()) {
		// neuen CTF-Service erzeugen und am Objekt ablegen
			CST = WTRiASCSTransform(CLSID_TRiASCSTransform);

		// als Property an der Datenbank speichern
			THROW_FAILED_HRESULT(SetProperty (Props, g_cbTRiASCSTransform, CComVariant(CST), true));
		}

	// Ausgabesystem von der Connection holen (hat sich u.U. ge�ndert) und an unserem Transformator
	// setzen
	WTRiASConnection Conn;

		THROW_FAILED_HRESULT(FindSpecificParent (m_Parent, Conn.ppi()));

	WTRiASCS CSOut (GetPropertyFrom (WTRiASPropertyBase(Conn), g_cbTRiASCSService, (IDispatch *)NULL), false);

		_ASSERTE(CSOut.IsValid());	// mu� bereits existieren
		THROW_FAILED_HRESULT(CST -> putref_OutputCS (CSOut));
		THROW_FAILED_HRESULT(CSOut -> Recompute());		// TransformationsPfad neu berechnen

	} COM_CATCH;
	return S_OK;
}

// Koordinatensystem freigeben
HRESULT CTRiASMIDatabase::ShutdownCoordSystemService()
{
	COM_TRY {
	WTRiASCSTransform CST (GetProperty (GetProperties(), g_cbTRiASCSTransform, (IDispatch *)NULL), false);

		ERROR_EXPR_TRUE(!CST.IsValid(), E_UNEXPECTED);
		THROW_FAILED_HRESULT(CST -> ShutDown());
	} COM_CATCH;
	return S_OK;
}

///////////////////////////////////////////////////////////////////////////////
// Verwaltung der Tabelle der Objektklassenbeschreibungen (an der Connection)
HRESULT CTRiASMIDatabase::InitObjectsTable()
{
	COM_TRY {
	// Tabelle der Objektklassenbeschreibungen holen/initialisieren
	WTRiASMDSMap ObjsTable (GetProperty (GetProperties(), g_cbMetaDataMap, (IDispatch *)NULL), false);

		if (!ObjsTable.IsValid()) {
		// neue Tabelle erzeugen, wenn selbige noch nicht existiert
			ObjsTable = WTRiASMDSMap(CLSID_TRiASMDSMap);

		// als Property an der Datenbank speichern
			THROW_FAILED_HRESULT(SetProperty (GetProperties(), g_cbMetaDataMap, CComVariant(ObjsTable), true));
		}

	} COM_CATCH;
	return S_OK;
}

/////////////////////////////////////////////////////////////////////////////
// OleItemContainerSupport
// nach einer bestimmten Objektklasse fragen
HRESULT CTRiASMIDatabase::GetObjectsDef (
	LPCTSTR pcItem, DWORD dwSpeedNeeded, REFIID riid, LPVOID *ppvObj, bool fTestRunningOnly)
{
	if (!m_ObjectsDefs) {
		if (BINDSPEED_IMMEDIATE == dwSpeedNeeded)
			return MK_E_EXCEEDEDDEADLINE;

	// evtl. Neuerzeugen der ben�tigten Collection
	WTRiASObjectsCollection Coll;

		RETURN_FAILED_HRESULT(get_ObjectsDefs (Coll.ppi()));	// fills in m_ObjectsDefs
	}
	_ASSERTE(m_ObjectsDefs.IsValid());

HRESULT hr = S_OK;

	COM_TRY {
	WTRiASObjects Objs;
		
		hr = m_ObjectsDefs -> Item (CComVariant(pcItem), Objs.ppi());
		if (TRIASDB_E_UNKNOWN_OBJECTS == hr && !fTestRunningOnly) {
		// Objektklasse ist neu und mu� erzeugt werden
			if (BINDSPEED_IMMEDIATE == dwSpeedNeeded)
				return MK_E_EXCEEDEDDEADLINE;
			hr = m_ObjectsDefs -> Add (CComBSTR(pcItem), CComBSTR("TRiASDB.TRiASMIObjects.1"), Objs.ppi());
		}

		if (SUCCEEDED(hr) && !fTestRunningOnly && NULL != ppvObj)	// Objektklasse ist (jetzt) bekannt
		{
			_ASSERTE(Objs.IsValid());
			THROW_FAILED_HRESULT(Objs -> QueryInterface (riid, ppvObj));
		}
	} COM_CATCH;
	return hr;
}

/////////////////////////////////////////////////////////////////////////////
// nach einem bestimmten Objekt fragen
HRESULT CTRiASMIDatabase::GetObjectDef (
	LPCTSTR pcItem, DWORD dwSpeedNeeded, REFIID riid, LPVOID *ppvObj, bool fTestRunningOnly)
{
	if (BINDSPEED_IMMEDIATE == dwSpeedNeeded)	// mu� immer in der eigentlichen Datenbank gesucht werden
		return MK_E_EXCEEDEDDEADLINE;

	COM_TRY {
#pragma TODO("Objekt anhand des �bergenenen Displaynames wiederfinden.")

	} COM_CATCH;
	return S_OK;
}

// DisplayName parsen und Moniker liefern
HRESULT CTRiASMIDatabase::ParseObjectsDef (
	LPCTSTR pcItem, ULONG ulSkipped, ULONG *pulEaten, IMoniker **ppmkOut)
{
CComBSTR bstrItem(pcItem);

	RETURN_FAILED_HRESULT(CreateItemMoniker (g_cbMkDel, bstrItem, ppmkOut));
	*pulEaten += bstrItem.Length();
	return S_OK;
}

HRESULT CTRiASMIDatabase::ParseObjectDef (
	LPCTSTR pcItem, ULONG ulSkipped, ULONG *pulEaten, IMoniker **ppmkOut)
{
CComBSTR bstrItem(pcItem);

	RETURN_FAILED_HRESULT(CreateItemMoniker (g_cbMkDel, bstrItem, ppmkOut));
	*pulEaten += bstrItem.Length();
	return S_OK;
}

