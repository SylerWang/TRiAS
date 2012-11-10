#include "stdafx.h"

#ifdef LAFX_COLL_SEG
#pragma code_seg(LAFX_COLL_SEG)
#endif

/////////////////////////////////////////////////////////////////////////////
/*{{RCS
initial version
RCS}}*/
static char* pszRCS = "$Id: array_pl.cpp 1.1 1996/07/12 17:16:32 andy Exp $";
/* $Log: array_pl.cpp $
// Revision 1.1  1996/07/12  17:16:32  andy
// initial version
//
*/
/////////////////////////////////////////////////////////////////////////////
#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif
/////////////////////////////////////////////////////////////////////////////

IMPLEMENT_SERIAL(CPointlArray, CObject, 0)

#define new DEBUG_NEW

/////////////////////////////////////////////////////////////////////////////

#include <limits.h>
#define SIZE_T_MAX  UINT_MAX            /* max size for a size_t */

/////////////////////////////////////////////////////////////////////////////

CPointlArray::CPointlArray()
{
	m_pData = NULL;
	m_nSize = m_nMaxSize = m_nGrowBy = 0;
}

CPointlArray::~CPointlArray()
{
	ASSERT_VALID(this);
	delete [] (BYTE*)m_pData;
}

void CPointlArray::SetSize(int nNewSize, int nGrowBy /* = -1 */)
{
	ASSERT_VALID(this);
	ASSERT(nNewSize >= 0);

	if (nGrowBy != -1)
		m_nGrowBy = nGrowBy;  // set new size

	if (nNewSize == 0)
	{
		// shrink to nothing
		delete [] (BYTE*)m_pData;
		m_pData = NULL;
		m_nSize = m_nMaxSize = 0;
	}
	else if (m_pData == NULL)
	{
		// create one with exact size
#ifdef SIZE_T_MAX
		ASSERT((long)nNewSize * sizeof(POINTL) <= SIZE_T_MAX);  // no overflow
#endif
		m_pData = (POINTL*) new BYTE[nNewSize * sizeof(POINTL)];

		memset(m_pData, 0, nNewSize * sizeof(POINTL));  // zero fill

		m_nSize = m_nMaxSize = nNewSize;
	}
	else if (nNewSize <= m_nMaxSize)
	{
		// it fits
		if (nNewSize > m_nSize)
		{
			// initialize the new elements

			memset(&m_pData[m_nSize], 0, (nNewSize-m_nSize) * sizeof(POINTL));

		}

		m_nSize = nNewSize;
	}
	else
	{
		// Otherwise grow array
		int nNewMax;
		if (nNewSize < m_nMaxSize + m_nGrowBy)
			nNewMax = m_nMaxSize + m_nGrowBy;  // granularity
		else
			nNewMax = nNewSize;  // no slush

#ifdef SIZE_T_MAX
		ASSERT((long)nNewMax * sizeof(POINTL) <= SIZE_T_MAX);  // no overflow
#endif
		POINTL* pNewData = (POINTL*) new BYTE[nNewMax * sizeof(POINTL)];

		// copy new data from old
		memcpy(pNewData, m_pData, m_nSize * sizeof(POINTL));

		// construct remaining elements
		ASSERT(nNewSize > m_nSize);

		memset(&pNewData[m_nSize], 0, (nNewSize-m_nSize) * sizeof(POINTL));


		// get rid of old stuff (note: no destructors called)
		delete [] (BYTE*)m_pData;
		m_pData = pNewData;
		m_nSize = nNewSize;
		m_nMaxSize = nNewMax;
	}
}

void CPointlArray::FreeExtra()
{
	ASSERT_VALID(this);

	if (m_nSize != m_nMaxSize)
	{
		// shrink to desired size
#ifdef SIZE_T_MAX
		ASSERT((long)m_nSize * sizeof(POINTL) <= SIZE_T_MAX);  // no overflow
#endif
		POINTL* pNewData = NULL;
		if (m_nSize != 0)
		{
			pNewData = (POINTL*) new BYTE[m_nSize * sizeof(POINTL)];
			// copy new data from old
			memcpy(pNewData, m_pData, m_nSize * sizeof(POINTL));
		}

		// get rid of old stuff (note: no destructors called)
		delete [] (BYTE*)m_pData;
		m_pData = pNewData;
		m_nMaxSize = m_nSize;
	}
}

/////////////////////////////////////////////////////////////////////////////

void CPointlArray::SetAtGrow(int nIndex, POINTL newElement)
{
	ASSERT_VALID(this);
	ASSERT(nIndex >= 0);

	if (nIndex >= m_nSize)
		SetSize(nIndex+1);
	m_pData[nIndex] = newElement;
}

void CPointlArray::InsertAt(int nIndex, POINTL newElement, int nCount /*=1*/)
{
	ASSERT_VALID(this);
	ASSERT(nIndex >= 0);    // will expand to meet need
	ASSERT(nCount > 0);     // zero or negative size not allowed

	if (nIndex >= m_nSize)
	{
		// adding after the end of the array
		SetSize(nIndex + nCount);  // grow so nIndex is valid
	}
	else
	{
		// inserting in the middle of the array
		int nOldSize = m_nSize;
		SetSize(m_nSize + nCount);  // grow it to new size
		// shift old data up to fill gap
		memmove(&m_pData[nIndex+nCount], &m_pData[nIndex],
			(nOldSize-nIndex) * sizeof(POINTL));

		// re-init slots we copied from

		memset(&m_pData[nIndex], 0, nCount * sizeof(POINTL));

	}

	// insert new value in the gap
	ASSERT(nIndex + nCount <= m_nSize);
	while (nCount--)
		m_pData[nIndex++] = newElement;
}

void CPointlArray::RemoveAt(int nIndex, int nCount /* = 1 */)
{
	ASSERT_VALID(this);
	ASSERT(nIndex >= 0);
	ASSERT(nCount >= 0);
	ASSERT(nIndex + nCount <= m_nSize);

	// just remove a range
	int nMoveCount = m_nSize - (nIndex + nCount);

	if (nMoveCount)
		memcpy(&m_pData[nIndex], &m_pData[nIndex + nCount],
			nMoveCount * sizeof(POINTL));
	m_nSize -= nCount;
}

void CPointlArray::InsertAt(int nStartIndex, CPointlArray* pNewArray)
{
	ASSERT_VALID(this);
	ASSERT(pNewArray != NULL);
	ASSERT(pNewArray->IsKindOf(RUNTIME_CLASS(CPointlArray)));
	ASSERT_VALID(pNewArray);
	ASSERT(nStartIndex >= 0);

	if (pNewArray->GetSize() > 0)
	{
		InsertAt(nStartIndex, pNewArray->GetAt(0), pNewArray->GetSize());
		for (int i = 0; i < pNewArray->GetSize(); i++)
			SetAt(nStartIndex + i, pNewArray->GetAt(i));
	}
}

/////////////////////////////////////////////////////////////////////////////
// Serialization


void CPointlArray::Serialize(CArchive& ar)
{
	ASSERT_VALID(this);

	CObject::Serialize(ar);

	if (ar.IsStoring())
	{
		ar << (WORD) m_nSize;
		for (int i = 0; i < m_nSize; i++)
		{
			ar << m_pData[i].x;
			ar << m_pData[i].y;
		}
	}
	else
	{
		WORD nOldSize;
		ar >> nOldSize;
		SetSize(nOldSize);

		for (int i = 0; i < m_nSize; i++)
		{
			ar >> m_pData[i].x;
			ar >> m_pData[i].y;
		}
	}
}

/////////////////////////////////////////////////////////////////////////////
// Diagnostics

#ifdef _DEBUG
void CPointlArray::Dump(CDumpContext& dc) const
{
	ASSERT_VALID(this);

#define MAKESTRING(x) #x
	AFX_DUMP1(dc, "a " MAKESTRING(CPointArray) " with ", m_nSize);
	AFX_DUMP0(dc, " elements");
#undef MAKESTRING

	if (dc.GetDepth() > 0)
	{
		AFX_DUMP0(dc, "\n");
		for (int i = 0; i < m_nSize; i++)
		{
			AFX_DUMP1(dc, "\n\t[", i);
			AFX_DUMP1(dc, "] = ", m_pData[i].x);
			AFX_DUMP1(dc, ", ", m_pData[i].y);
		}
	}
}

void CPointlArray::AssertValid() const
{
	CObject::AssertValid();
	if (m_pData == NULL)
	{
		ASSERT(m_nSize == 0);
		ASSERT(m_nMaxSize == 0);
	}
	else
	{
		ASSERT(m_nSize >= 0);
		ASSERT(m_nMaxSize >= 0);
		ASSERT(m_nSize <= m_nMaxSize);
		ASSERT(AfxIsValidAddress(m_pData, m_nMaxSize * sizeof(POINTL)));
	}
}
#endif //_DEBUG

/////////////////////////////////////////////////////////////////////////////
