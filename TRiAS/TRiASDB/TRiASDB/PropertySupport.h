///////////////////////////////////////////////////////////////////////////
// @doc
// @module PropertySupport.h | Verwaltung diverser Properties f�r ein Objekt

#if !defined(_PROPERTYSUPPORT_H__97993C74_5FE6_11D1_B9E6_080036D63803__INCLUDED_)
#define _PROPERTYSUPPORT_H__97993C74_5FE6_11D1_B9E6_080036D63803__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include <Com/DefaultInitItem.h>
#include <Com/Thunk.h>

#include "EnumProperty.h"

///////////////////////////////////////////////////////////////////////////////
// 
typedef HRESULT (__stdcall *GETDEFAULTVALUEPROC)(BSTR, VARIANT *, PROPERTY_TYPE * = NULL);

HRESULT TxCreatePropertySupportObject (const CLSID *pclsid, IUnknown *punk, LPVOID *ppobj);
HRESULT TxInitPropertySupportObject (struct _PROPERTYSUPPORT_ENTRY *pEntry, ITRiASPropertyCallback *pobj, IUnknown *punk);

#define PROPERTYSUPPORT_NOFLAGS			0x00
#define PROPERTYSUPPORT_AGGREGATE		0x01
#define PROPERTYSUPPORT_DEFAULT			0x02
#define PROPERTYSUPPORT_USECREATORFUNC	0x04
#define PROPERTYSUPPORT_HASINITDATA		0x08
#define PROPERTYSUPPORT_DYNAMICSTRING	0x10

struct _PROPERTYSUPPORT_ENTRY
{
public:
	typedef pair<CComBSTR, WUnknown> CDefEntry;
	typedef list<CDefEntry> CDefEntries;
	typedef HRESULT (__stdcall *GETDEFAULTVALUEPROC)(BSTR, VARIANT *, PROPERTY_TYPE * = NULL);	//lint !e578

	mutable LPCOLESTR szKey;		// PropertyName
	INT_PTR dw;						// the Guid of the support object or the createinstance-function for the object
	DWORD dwFlags;					// this property has some aadditional flags
	union {
		ITRiASPropertyCallback *pobj;	// cached support object(s)
		CDefEntries *pobjs;
	};
	VARIANT vInitData;
	GETDEFAULTVALUEPROC pDefValProc;

	HRESULT GetSupportObject (ITRiASPropertyCallback **ppOut, IUnknown *punk = NULL);
	inline HRESULT SetSupportObject (ITRiASPropertyCallback *pISupp, IUnknown *pIUnk);
	HRESULT GetDefaultSupportObject (LPCOLESTR pcName, ITRiASPropertyCallback **ppOut, IUnknown *punk = NULL);
	inline HRESULT SetDefaultSupportObject (LPCOLESTR pcName, ITRiASPropertyCallback *pISupp, IUnknown *pIUnk);
	inline HRESULT AddDefaultEntry (LPCOLESTR pcName, IUnknown *pIUnk);
	HRESULT ReleaseSupportObjects (LPCOLESTR pcName = NULL);
};

///////////////////////////////////////////////////////////////////////////////
// globale Funktionen (minimize size)
HRESULT TxGetPropertySupportSite (
	_PROPERTYSUPPORT_ENTRY* pEntries, LPCOLESTR pcKey, 
	ITRiASPropertyCallback *pdefault, IUnknown *punk, ITRiASPropertyCallback **ppISite);
HRESULT TxSetPropertySupportSite (_PROPERTYSUPPORT_ENTRY* pEntry, LPCOLESTR pcKey, ITRiASPropertyCallback *pISupp, IUnknown *pIUnk);
HRESULT TxReleasePropertySupportObject (_PROPERTYSUPPORT_ENTRY* pEntry, LPCOLESTR pcKey);
HRESULT TxEnumPropertyEntries (
	_PROPERTYSUPPORT_ENTRY* pEntry, HRESULT (CALLBACK *pFcn)(LPCOLESTR, UINT_PTR), UINT_PTR dwData);
void TxReleasePropertySupportObjects(_PROPERTYSUPPORT_ENTRY* pEntry);
HRESULT TxChangeMapEntry (_PROPERTYSUPPORT_ENTRY* pEntries, LPCOLESTR pcKey, 
	INT_PTR NewData, DWORD NewFlags, VARIANT vInitData, GETDEFAULTVALUEPROC pFcn = NULL);
HRESULT TxAddMapEntry (_PROPERTYSUPPORT_ENTRY* pEntries, LPCOLESTR pcKey, 
	INT_PTR NewData, DWORD NewFlags, VARIANT vInitData, GETDEFAULTVALUEPROC pFcn = NULL);
HRESULT TxPropertyIsPredefined (_PROPERTYSUPPORT_ENTRY* pEntry, LPCOLESTR pcKey);

///////////////////////////////////////////////////////////////////////////////
// PropertySupport f�r beliebige Objekte
template<class T>
class ATL_NO_VTABLE CManagePropertySupport :
	public ITRiASPropertySupport,
	public ITRiASPropertyMapHandler
{
public:
	typedef HRESULT (__stdcall *GETDEFAULTVALUEPROC)(BSTR, VARIANT *, PROPERTY_TYPE * = NULL);	//lint !e578

		CManagePropertySupport() 
		{
		}
		~CManagePropertySupport() 
		{
		}

	void ReleasePropertySupportObjects()
	{
		TxReleasePropertySupportObjects(((T *)this)->_GetPropertySupportEntries());
	}

// support functions
	HRESULT GetPropertySupportSite (LPCOLESTR pcKey, IUnknown *punk, ITRiASPropertyCallback *pIDefault, ITRiASPropertyCallback **ppISite)
	{
		return TxGetPropertySupportSite (
				((T *)this)->_GetPropertySupportEntries(), pcKey, pIDefault, punk, ppISite);
	}
	HRESULT EnumPropertyEntries (HRESULT (CALLBACK *pFcn)(LPCOLESTR, UINT_PTR), UINT_PTR dwData)
	{
		return TxEnumPropertyEntries (((T *)this)->_GetPropertySupportEntries(), pFcn, dwData);
	}
	HRESULT PropertyIsPredefined (LPCOLESTR pcKey)
	{
		return TxPropertyIsPredefined (((T *)this)->_GetPropertySupportEntries(), pcKey);
	}
	HRESULT SetPropertySupportSite (ITRiASPropertyCallback *pISupp, LPCOLESTR pcKey, IUnknown *pIUnk)
	{
		return TxSetPropertySupportSite (((T *)this)->_GetPropertySupportEntries(), pcKey, pISupp, pIUnk);
	}
	HRESULT ReleasePropertySupportSite (LPCOLESTR pcKey)
	{
		return TxReleasePropertySupportObject (((T *)this)->_GetPropertySupportEntries(), pcKey);
	}

public:
// Funktion, die aus einer Callback-Prozedur heraus gerufen werden kann
	struct CEnumPropertyCallback 
	{
		T *m_pTarget;
		WEnumWTRiASProperty m_Enum;
	};
	static HRESULT CALLBACK RefreshCallBack (LPCSTR pcKey, UINT_PTR dwData)
	{
		USES_CONVERSION;
		return RefreshCallBackW (A2OLE(pcKey), dwData);
	}
	static HRESULT CALLBACK RefreshCallBackW (LPCOLESTR pcKey, UINT_PTR dwData)
	{
		_ASSERTE(0L != dwData);

	T *pTarget = reinterpret_cast<CEnumPropertyCallback *>(dwData) -> m_pTarget;

		_ASSERTE(NULL != pTarget);
		COM_TRY {
		// Property erzeugen und mit Daten f�llen
		WTRiASProperty Prop;
		CComBSTR bstrKey (pcKey);

			if (FAILED(pTarget -> get_Property (bstrKey, Prop.ppi()))) {
			// Eigenschaft existiert noch nicht, also hinzuf�gen
				THROW_FAILED_HRESULT(pTarget -> CreateProperty (bstrKey, Prop.ppi()));
			} else {
			// Eigenschaft existiert bereits, neu einlesen
				THROW_FAILED_HRESULT(Prop -> Refresh());
			}

		// zum gew�nschten Enumerator hinzuf�gen
			THROW_FAILED_HRESULT(reinterpret_cast<CEnumPropertyCallback *>(dwData) -> m_Enum -> AddItem (bstrKey, Prop));

		} COM_CATCH;
		return S_OK;
	}

// ITRiASPropertySupport
// Props zeigt auf einen bereits existierenden Enumerator und wird durch 
// diese Funktion lediglich mit allen Properties gef�llt.
	STDMETHODIMP FillWithProperties (IUnknown **ppIProps) throw(_com_error &)
	{
		AFX_MANAGE_STATE(AfxGetStaticModuleState())

	// die feststehenden Properties hinzuf�gen
	CEnumPropertyCallback CallBackData;

		CallBackData.m_pTarget = static_cast<T *>(this);
		CallBackData.m_Enum = *ppIProps;	// throws hr
		return EnumPropertyEntries (RefreshCallBackW, (UINT_PTR)&CallBackData);
	}

// ITRiASPropertyMapHandler
	STDMETHODIMP ChangeMapEntry (BSTR EntryKey, INT_PTR NewData, 
        DWORD NewFlags, VARIANT vInitData)
	{
		return TxChangeMapEntry (((T *)this)->_GetPropertySupportEntries(), 
            EntryKey, NewData, NewFlags, vInitData, NULL);
	}
	STDMETHODIMP AddMapEntry (BSTR EntryKey, INT_PTR NewData, DWORD NewFlags, 
        VARIANT vInitData)
	{
		if (!((T *)this)->m_PropertyEntryMap)		// sicher initialisieren
			((T *)this)->_GetPropertySupportEntries();
		return TxAddMapEntry (((T *)this)->_AddPropertySupportEntry(), 
            EntryKey, NewData, NewFlags, vInitData);
	}
	STDMETHODIMP AddMapEntry (BSTR EntryKey, INT_PTR NewData, 
        DWORD NewFlags = PROPERTYSUPPORT_NOFLAGS)
	{
		if (!((T *)this)->m_PropertyEntryMap)		// sicher initialisieren
			((T *)this)->_GetPropertySupportEntries();
		return TxAddMapEntry (((T *)this)->_AddPropertySupportEntry(), 
            EntryKey, NewData, NewFlags, vtMissing);
	}

	HRESULT ChangeMapEntry (BSTR EntryKey, INT_PTR NewData, DWORD NewFlags, 
        const VARIANT &vInitData, GETDEFAULTVALUEPROC pFcn)
	{
		return TxChangeMapEntry (((T *)this)->_GetPropertySupportEntries(), 
            EntryKey, NewData, NewFlags, vInitData, pFcn);
	}
};

///////////////////////////////////////////////////////////////////////////////
// PropertySupport f�r beliebige Objekte
template<class T>
class ATL_NO_VTABLE CManagePropertySupportWithDefaultValues :
	public CManagePropertySupport<T>
{
public:
	CManagePropertySupportWithDefaultValues()
		: m_GetDefaultValuesThunk(this)
	{
	}
	~CManagePropertySupportWithDefaultValues()
	{
	}

public:
// voreingestellte Werte diverser Properties liefern
	struct CDefaultPropertyValue // Tabelle der DefaultWerte f�r Properties
	{
		LPCOLESTR m_poleName;
		VARIANT m_vValue;
		PROPERTY_TYPE m_rgType;
	}; 
	CDefaultPropertyValue *GetDefaultValueTable() { return NULL; }

	HRESULT __stdcall GetDefaultValues (BSTR Name, VARIANT * pVal, PROPERTY_TYPE * pType = NULL)
	{
	CDefaultPropertyValue *pDefVals = ((T *)this) -> GetDefaultValueTable();

		if (NULL == pDefVals)
			return S_FALSE;	// keine DefaultWerte gefunden

		while (NULL != pDefVals -> m_poleName) {
			if (!wcscmp (pDefVals -> m_poleName, Name)) {
			CComVariant v (pDefVals -> m_vValue);

				RETURN_FAILED_HRESULT(v.Detach (pVal));
				if (NULL != pType)
					*pType = pDefVals -> m_rgType;
				return S_OK;		// found and ok
			}
			pDefVals++;
		}
		return E_FAIL;
	}

/////////////////////////////////////////////////////////////////////////////
// DefaultWerte f�r Database-Properties (DBHeader)
	class CGetDefaultValuesThunk :
		public CStdThunk<CManagePropertySupportWithDefaultValues<T> >
	{
	public:
		typedef HRESULT (__stdcall *GETDEFAULTVALUEPROC)(BSTR, VARIANT *, PROPERTY_TYPE * = NULL);

		CGetDefaultValuesThunk (CManagePropertySupportWithDefaultValues<T> *pThis)
			{ InitThunk(reinterpret_cast<TMFP>(CManagePropertySupportWithDefaultValues<T>::GetDefaultValues), pThis); }
		GETDEFAULTVALUEPROC GetProc() { return reinterpret_cast<GETDEFAULTVALUEPROC>(GetThunk()); }
	};
	friend CGetDefaultValuesThunk;

	GETDEFAULTVALUEPROC GetDefaultValuesProc() { return m_GetDefaultValuesThunk.GetProc(); }

private:
	CGetDefaultValuesThunk m_GetDefaultValuesThunk;
};

// Helperklasse, die eine Kopie der klassenspezifischen PropertyMap h�lt
class CPropertyEntryMapWrapper
{
private:
	_PROPERTYSUPPORT_ENTRY *m_pPropEntryMap;

public:
	CPropertyEntryMapWrapper() : m_pPropEntryMap(NULL) {}
	~CPropertyEntryMapWrapper() 
	{ 
		if (NULL != m_pPropEntryMap) {
			TxReleasePropertySupportObjects(m_pPropEntryMap);
			delete m_pPropEntryMap; 
		}
	}

	_PROPERTYSUPPORT_ENTRY *CopyEntryMap (_PROPERTYSUPPORT_ENTRY *pTargetMap)
	{
		if (NULL == m_pPropEntryMap)	// Map anlegen und kopieren
			m_pPropEntryMap = AllocAndCopyEntryMap(pTargetMap, CountEntries(pTargetMap));

		_ASSERTE(NULL != m_pPropEntryMap);
		return m_pPropEntryMap;
	}
	_PROPERTYSUPPORT_ENTRY* _AddPropertySupportEntry() 
	{
	int iSize = CountEntries(m_pPropEntryMap);
	_PROPERTYSUPPORT_ENTRY *pMap = AllocAndCopyEntryMap(m_pPropEntryMap, iSize, 1);

		if (NULL != pMap) {
		// letzten Eintrag Kennzeichnen
			memset (&pMap[iSize], '\0', sizeof(_PROPERTYSUPPORT_ENTRY));	// ist jetzt der letzte Eintrag
			pMap[iSize-1].dwFlags = PROPERTYSUPPORT_DYNAMICSTRING;
			pMap[iSize-1].dw = (INT_PTR)&GUID_NULL;

		// umkopieren
			delete m_pPropEntryMap;
			m_pPropEntryMap = pMap;
		}
		_ASSERTE(NULL != m_pPropEntryMap);
		return m_pPropEntryMap;
	}
	bool operator! () { return (NULL == m_pPropEntryMap) ? true : false; }

protected:
	int CountEntries(_PROPERTYSUPPORT_ENTRY *pTargetMap)
	{
	int iCnt = 1;	// abschlie�ender Satz (Endekennung) mu� mitkopiert werden

		for (_PROPERTYSUPPORT_ENTRY *p = pTargetMap; NULL != p -> dw; iCnt++, p++)
			;
		return iCnt;
	}
	_PROPERTYSUPPORT_ENTRY *AllocAndCopyEntryMap (_PROPERTYSUPPORT_ENTRY *pTargetMap, int iCnt, int iDeltaSize = 0)
	{
	_PROPERTYSUPPORT_ENTRY *pPropEntryMap = NULL;

		ATLTRY(pPropEntryMap = new _PROPERTYSUPPORT_ENTRY[iCnt+iDeltaSize]);
		if (NULL == pPropEntryMap) return NULL;

		memcpy (pPropEntryMap, pTargetMap, iCnt*sizeof(_PROPERTYSUPPORT_ENTRY));
		return pPropEntryMap;
	}
};

///////////////////////////////////////////////////////////////////////////////
// Macros f�r PROPERTYSUPPORT_MAP
#define INIT_VTMISSING	{VT_ERROR, 0, 0, 0, {DISP_E_PARAMNOTFOUND}}

#define BEGIN_PROPERTYSUPPORT_MAP(x) public: \
	typedef x _ComPropertyClass; \
	CPropertyEntryMapWrapper m_PropertyEntryMap;\
	_PROPERTYSUPPORT_ENTRY* _AddPropertySupportEntry() { return m_PropertyEntryMap._AddPropertySupportEntry(); } \
	_PROPERTYSUPPORT_ENTRY* _GetPropertySupportEntries() { \
	static _PROPERTYSUPPORT_ENTRY _entries[] = { 

#define PROPERTYSUPPORT_ENTRY(key,clsid)\
	{key, (INT_PTR)&clsid, PROPERTYSUPPORT_NOFLAGS, NULL, INIT_VTMISSING, NULL},
#define PROPERTYSUPPORT_ENTRY_AGGR(key,clsid)\
	{key, (INT_PTR)&clsid, PROPERTYSUPPORT_AGGREGATE, NULL, INIT_VTMISSING, NULL},
#define PROPERTYSUPPORT_ENTRY_DEFAULT(clsid)\
	{NULL, (INT_PTR)&clsid, PROPERTYSUPPORT_DEFAULT, NULL, INIT_VTMISSING, NULL},
#define PROPERTYSUPPORT_ENTRY_AGGR_DEFAULT(clsid)\
	{NULL, (INT_PTR)&clsid, PROPERTYSUPPORT_DEFAULT|PROPERTYSUPPORT_AGGREGATE, NULL, INIT_VTMISSING, NULL},

#define PROPERTYSUPPORT_ENTRY_CLASS(key,class)\
	{key, (INT_PTR)&class::_CreatorClass::CreateInstance, PROPERTYSUPPORT_USECREATORFUNC, NULL, INIT_VTMISSING, NULL},

// das gleiche nochmal, jedoch mit InitialisierungsDaten
#define INIT_VARIANTDATA(x)		{V_VT(&x), 0, 0, 0, {V_I4(&x)}}
#define PROPERTYSUPPORT_ENTRY2(key,clsid,v)\
	{key, (INT_PTR)&clsid, PROPERTYSUPPORT_NOFLAGS|PROPERTYSUPPORT_HASINITDATA, NULL, INIT_VARIANTDATA(v), NULL},
#define PROPERTYSUPPORT_ENTRY_INITFUNC(key,clsid,f)\
	{key, (INT_PTR)&clsid, PROPERTYSUPPORT_NOFLAGS|PROPERTYSUPPORT_HASINITDATA, NULL, INIT_VTMISSING, f},
#define PROPERTYSUPPORT_ENTRY_AGGR2(key,clsid,v)\
	{key, (INT_PTR)&clsid, PROPERTYSUPPORT_AGGREGATE|PROPERTYSUPPORT_HASINITDATA, NULL, INIT_VARIANTDATA(v), NULL},
#define PROPERTYSUPPORT_ENTRY_DEFAULTINITFUNC(key,clsid)\
	{key, (INT_PTR)&clsid, PROPERTYSUPPORT_NOFLAGS|PROPERTYSUPPORT_HASINITDATA, NULL, INIT_VTMISSING, GetDefaultValuesProc()},
#define PROPERTYSUPPORT_ENTRY_DEFAULT2(clsid,v)\
	{NULL, (INT_PTR)&clsid, PROPERTYSUPPORT_DEFAULT|PROPERTYSUPPORT_HASINITDATA, NULL, INIT_VARIANTDATA(v), NULL},
#define PROPERTYSUPPORT_ENTRY_AGGR_DEFAULT2(clsid,v)\
	{NULL, (INT_PTR)&clsid, PROPERTYSUPPORT_DEFAULT|PROPERTYSUPPORT_AGGREGATE|PROPERTYSUPPORT_HASINITDATA, NULL, INIT_VARIANTDATA(v), NULL},

#define PROPERTYSUPPORT_ENTRY_CLASS2(key,class,v)\
	{key, (INT_PTR)&class::_CreatorClass::CreateInstance, PROPERTYSUPPORT_USECREATORFUNC|PROPERTYSUPPORT_HASINITDATA, NULL, INIT_VARIANTDATA(v), NULL},

#define END_PROPERTYSUPPORT_MAP()   {NULL, NULL, 0L, NULL, INIT_VTMISSING, NULL},}; \
	return m_PropertyEntryMap.CopyEntryMap(_entries); }

///////////////////////////////////////////////////////////////////////////////
// Default values
#define BEGIN_PROPERTYSUPPORT_DEFAULTVALUE_MAP(x) \
    typedef x _ComDefaultValuePropertyClass; \
	_ComDefaultValuePropertyClass::CDefaultPropertyValue *GetDefaultValueTable() { \
		static _ComDefaultValuePropertyClass::CDefaultPropertyValue m_Values[] = { 

#define PROPERTYSUPPORT_DEFAULTVALUE_ENTRY(prop,vartype,val,proptype) \
	{prop, { vartype, 0, 0, 0, { val } }, PROPERTY_TYPE(proptype) },

#define END_PROPERTYSUPPORT_DEFAULTVALUE_MAP() \
	{ NULL, { VT_EMPTY, 0, 0, 0, { 0 } }, PROPERTY_TYPE_Normal }, }; return m_Values; }

///////////////////////////////////////////////////////////////////////////////
// predicate for loading properties
template<class T>
class CInitProperty :
	public unary_initialize<__Interface<ITRiASProperty> >
{
public:
	typedef unary_initialize<__Interface<ITRiASProperty> > base_t;
	typedef base_t::unary_initialize_target unary_initialize_target;

private:
	T *m_pTarget;

public:
	explicit CInitProperty (T *pTarget) : m_pTarget (pTarget) { _ASSERTE(NULL != m_pTarget); }

	IUnknown *GetUnknown() { return m_pTarget -> GetUnknown(); }
	T *GetTarget() { return m_pTarget; }

// zus�tzliche Initialisierungen der frisch geladenen Property (z.B. setzen eines
// zu bedienenden IPropertyEvent-Interfaces). das entscheidende passiert
// in der Funktion GetPropertySupportSite
	result_type operator() (argument_type Prop)
	{
	CComBSTR bstrName;
	__Interface<ITRiASPropertyCallback> Supp;

		RETURN_FAILED_HRESULT(Prop -> get_Name (CLEARED(&bstrName)));
		RETURN_FAILED_HRESULT(__Interface<IObjectWithSite>(Prop) -> GetSite (IID_ITRiASPropertyCallback, Supp.ppv()));
		RETURN_FAILED_HRESULT(GetTarget() -> SetPropertySupportSite (Supp, bstrName, GetUnknown()));
		
		return S_OK;
	}
};

#endif // !defined(_PROPERTYSUPPORT_H__97993C74_5FE6_11D1_B9E6_080036D63803__INCLUDED_)

