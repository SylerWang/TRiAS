// Klasse f�r ein achsenparalleles Kreuz
// File: CrossObject.h
// W. M�rtl

#ifndef _CROSSOBJECT_H
#define _CROSSOBJECT_H


class CrossObject : public DrawObject
{
protected:
	CoOrd		m_b;		// halbe Breite (H�lfte von dim.Width())
	CoOrd		m_h;		// halbe H�he (H�lfte von dim.Height())
	pPen		m_pMyPen;

	void		DrawEx (DWORD dw);

public:
		CrossObject (Point ptCentre, Dimension dim, pPen pen = NULL);
		~CrossObject (void) {};

	Rectangle	BoundingBox (void);
	Point 		ChangePosition (Point NewCentr);
};

#endif	// _CROSSOBJECT_H
