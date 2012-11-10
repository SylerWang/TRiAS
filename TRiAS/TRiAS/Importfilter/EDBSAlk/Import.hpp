///////////////////////////////////////////////////////////////////////
//	TRiAS - Erweiterung: EDBS - Import
///////////////////////////////////////////////////////////////////////
//	Datei:			import.hpp
//
//	Stand:			15.11.1994
//	Beschreibung:	Import-Objekt
//	Entwicklung:	15.11.94	Beginn der Kodierung
//////////////////////////////////////////////////////////////////////

#ifndef	_IMPORT_HPP
#define _IMPORT_HPP

#include	<fstream.h>

#if defined(WIN32)	// Bis Hartmut das Problem allgemein l�sen konnte!!!
// Zeichenkettenkonvertierung ANSI <--> UNICODE -------------------------------
#pragma warning (disable: 4273)		// inconsistent dll linkage.  dllexport assumed.
LPWSTR ConvertStrAtoW (const char *strIn, LPWSTR buf, UINT size);
LPWSTR WideString (const char *strIn);
char *ConvertStrWtoA (LPCWSTR strIn, char *buf, UINT size);
char *AnsiString (LPCWSTR strIn);
#pragma warning (default: 4273)
#endif

class CPunkt;

///////////////////////////////////////////////////////////////////////////////
// Koordinatensysteme
#import	"tlb/TRiASCS.tlb" \
	raw_interfaces_only raw_native_types no_namespace named_guids 

///////////////////////////////////////////////////////////////////////
//	CImportEDBS

class CImportEDBS : public CImportGeoData
{
private:
	HWND		m_hWnd;		// ParentWnd
	CString		m_strFileName;
	short		m_iFileCount;
	short		m_iCurrFileNum;
	bool		m_bEnde;
	long		edbs_file_length;
	bool		m_bAENDprocessed;

	ITRiASCSPtr m_CS;

public:
//				CImportEDBS( LPUNKNOWN );
				CImportEDBS();
				~CImportEDBS();
//--- Interface
	STDMETHODIMP	ImportEDBS( const char *pFile );

// *** IImportGeoData methods
	STDMETHOD_(DWORD, Capabilities)(THIS);
	STDMETHOD(Configure) (THIS_ HWND hWnd);
	STDMETHOD(ImportData) (THIS_ IEnumString *pEnumFiles, DWORD dwFlags);

// *** IImportGeoDataSelectCS methods
	STDMETHOD(put_CS) (THIS_ IUnknown *pICS);

	IUnknown *get_CS() const { return m_CS; }

//-------------
	void		StartImport();
	void		Interpretiere( void* );
	void		GeoObjektEinordnen( void* );


protected:
	CPunkt* m_pktEnd;
	CPunkt* m_pktStart;
	CStringArray m_strarrTxt3;
	CStringArray m_strarrTxt2;
	CStringArray m_strarrTxt1;
	CStringArray m_strarrTxt;
	void GeoDataEinordnen( void*, int );
	void SavedGeoDataEinordnen( void*, int );
	void FreeSavedData();
	void SaveData( void* );
	BOOL GeometrieSaved();
	BOOL m_bDataSaved;
	BOOL m_bSavedDataUsed;
	void		CreateTriasObjekt( void* );
};


///////////////////////////////////////////////////////////////////////
//	CErrStream

class CErrStream : public ofstream
{
public:
				CErrStream( const char* );
				~CErrStream();
};


#endif	// _IMPORT_HPP
