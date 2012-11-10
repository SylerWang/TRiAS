///////////////////////////////////////////////////////////////////////////
//	CWaitCursor
///////////////////////////////////////////////////////////////////////////
//	Zeigt einen Wartecursor (Sanduhr) an.
//	Bei Zerst�rung der Instanz dieser Klasse wird der urspr�ngliche Cursor
//	wiederhergestellt.
//
//	(c) 1995 uve GmbH FEZ Potsdam
//
//	Stand:			#AD950326
//	Datei:			cwc.cxx
///////////////////////////////////////////////////////////////////////////

#include "stdafx.h"
#include "cwc.h"

CWaitCur :: CWaitCur()
{	m_hOldCursor = SetCursor( LoadCursor( NULL, IDC_WAIT ));
}

CWaitCur :: ~CWaitCur()
{	SetCursor( m_hOldCursor );
}
