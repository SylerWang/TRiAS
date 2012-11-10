// Klasse f�r das Nachf�hren eines achsenparallelen Kreuzes
// File: DragCrossObject.h
// W. M�rtl

#ifndef _DRAGCROSSOBJECT_H
#define _DRAGCROSSOBJECT_H


#include "CrossObject.h"



class DragCrossObject : public CrossObject
{
public:
// Konstruktor
		DragCrossObject (Point Pt, Dimension dim, pPen pMyPen = NULL)
			: CrossObject (Pt, dim, pMyPen) {}
};

#endif	// _DRAGCROSSOBJECT_H
