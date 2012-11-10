/*  Product: Small Parser

    Copyright (C) 1999  Systementor AB, Stefan Holmberg
    Email - stefan.holmberg@systementor.se
    Web:   - http://www.systementor.se

///////////////////////////////////////////////////////////////////////////////
*/

/* * $History: Parser.h $ 
 * 
 * *****************  Version 3  *****************
 * User: Stefan Holmberg Date: 7/13/99    Time: 9:13p
 * Updated in $/Products/SmallParser
 * Changed Parser interface not to return IDispatch but real interface
 * pointers
 * 
 * *****************  Version 2  *****************
 * User: Stefan Holmberg Date: 7/11/99    Time: 12:24p
 * Updated in $/Products/SmallParser
*/

// Parser.h : Declaration of the cParser

#ifndef __PARSER_H_
#define __PARSER_H_

#include "resource.h"       // main symbols
#include "SelectStmt.h"
#include "UpdateStmt.h"
#include "InsertStmt.h"
#include "DeleteStmt.h"
#include "CreateTableStmt.h"
#include "DropStmt.h"
#include "parser\ParseTree.h"
//#include "parser\SQLObjects.h"

/////////////////////////////////////////////////////////////////////////////
// cParser
class ATL_NO_VTABLE cParser : 
	public CComObjectRootEx<CComObjectThreadModel>,
	public CComCoClass<cParser, &CLSID_Parser>,
	public CTRiASOleDBErrorBase<cParser, &IID_IParser, &CLSID_Parser>,
	public ISupportErrorInfo,
	public IDispatchImpl<IParser, &IID_IParser, &LIBID_TRiASOleDB, 
		TYPELIB_TRiASOLEDB_VERSION_MAJOR, TYPELIB_TRiASOLEDB_VERSION_MINOR>
{
public:
	cParser();
	~cParser();

protected:
	CParseTree m_Tree;
	CComObject<cSelectStmt> *m_pSelectStmt;
	CComObject<cUpdateStmt> *m_pUpdateStmt;
	CComObject<cInsertStmt> *m_pInsertStmt;
	CComObject<cDeleteStmt> *m_pDeleteStmt;
	CComObject<cCreateTableStmt> *m_pCreateTableStmt;
	CComObject<cDropStmt> *m_pDropStmt;

	STATEMENT_TYPE m_STATEMENTTYPE;

	void Clear();
	HRESULT CreateStmt();

public:

	DECLARE_REGISTRY_RESOURCEID(IDR_PARSER)
	DECLARE_GET_CONTROLLING_UNKNOWN()
	DECLARE_PROTECT_FINAL_CONSTRUCT()

	BEGIN_COM_MAP(cParser)
		COM_INTERFACE_ENTRY(IParser)
		COM_INTERFACE_ENTRY(IDispatch)
		COM_INTERFACE_ENTRY(ISupportErrorInfo)
	END_COM_MAP()

// ISupportsErrorInfo
	STDMETHOD(InterfaceSupportsErrorInfo)(REFIID riid);

// IParser
public:
	STDMETHOD(get_DropTableStmt)(/*[out, retval]*/ IDropStmt **pVal);
	STDMETHOD(get_CreateTableStmt)(/*[out, retval]*/ ICreateTableStmt **pVal);
	STDMETHOD(get_DeleteStmt)(/*[out, retval]*/ IDeleteStmt **pVal);
	STDMETHOD(get_InsertStmt)(/*[out, retval]*/ IInsertStmt **pVal);
	STDMETHOD(get_StatementType)(/*[out, retval]*/ STATEMENT_TYPE *pVal);
	STDMETHOD(get_UpdateStmt)(/*[out, retval]*/ IUpdateStmt **pVal);
	STDMETHOD(get_SelectStmt)(/*[out, retval]*/ ISelectStmt **pVal);
	STDMETHOD(ParseSQL)(/*[in]*/ BSTR bstrSQL);
};

#endif //__PARSER_H_
