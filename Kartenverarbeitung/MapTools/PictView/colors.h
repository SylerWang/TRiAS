#ifndef __COLORS_H__
#define __COLORS_H__

// Machine generated IDispatch wrapper class(es) created by Microsoft Visual C++

// NOTE: Do not modify the contents of this file.  If this class is regenerated by
//  Microsoft Visual C++, your modifications will be overwritten.

/////////////////////////////////////////////////////////////////////////////
// CColors wrapper class

class CColors : public CWnd
{
protected:
	DECLARE_DYNCREATE(CColors)
public:
	CLSID const& GetClsid()
	{
		static CLSID const clsid
			= { 0x77472c73, 0x3566, 0x11d0, { 0xb4, 0xbf, 0x0, 0xa0, 0x24, 0x14, 0x57, 0x48 } };
		return clsid;
	}
	virtual BOOL Create(LPCTSTR lpszClassName,
		LPCTSTR lpszWindowName, DWORD dwStyle,
		const RECT& rect,
		CWnd* pParentWnd, UINT nID,
		CCreateContext* pContext = NULL)
	{ return CreateControl(GetClsid(), lpszWindowName, dwStyle, rect, pParentWnd, nID); }

    BOOL Create(LPCTSTR lpszWindowName, DWORD dwStyle,
		const RECT& rect, CWnd* pParentWnd, UINT nID,
		CFile* pPersist = NULL, BOOL bStorage = FALSE,
		BSTR bstrLicKey = NULL)
	{ return CreateControl(GetClsid(), lpszWindowName, dwStyle, rect, pParentWnd, nID,
		pPersist, bStorage, bstrLicKey); }

// Attributes
public:
	short GetRGBRed();
	void SetRGBRed(short);
	short GetRGBGreen();
	void SetRGBGreen(short);
	short GetRGBBlue();
	void SetRGBBlue(short);
	short GetHSBHue();
	void SetHSBHue(short);
	short GetHSBSaturation();
	void SetHSBSaturation(short);
	short GetHSBBrightness();
	void SetHSBBrightness(short);

// Operations
public:
};

#endif // __COLORS_H__
