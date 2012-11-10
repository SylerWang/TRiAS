// -*- Mode: C++ -*-

//         RT.cpp
//
// Copyright (c) 1996, Regents of the University of California
// $Header: /usr/local/devel/GiST/libGiST/RSTree/RT.cpp,v 1.1.1.1 1996/08/06 23:47:24 jmh Exp $

#include <string.h>

#include "libGiST/GiST.h"
#include "RSTree/RT.h"

namespace trias_gist {

typedef struct {
  double dist;
  int ix;
} distix;

extern "C" int 
GiSTdistixcmp(const void *x, const void *y)
{
    distix a = *(distix *)x;
    distix b = *(distix *)y;

    if (a.dist > b.dist)
      return(-1);
    else if (a.dist == b.dist)
      return(0);
    else return(1);
}

extern "C" int GiSTintcmp(const void *x, const void *y);
GiSTlist<GiSTentry*>
RT::RemoveTop(GiSTnode *node)
{
    GiSTlist<GiSTentry*> deleted;
    int count = node->NumEntries();
    int num_rem = (int)((count + 1)*RemoveRatio() + 0.5);
    distix *dvec = new distix[node->NumEntries()];
    int *ivec = new int[num_rem];
    RTentry *uentry = (RTentry *)(node->Union());
    RTkey tmpbox;
    int i;
    
    // compute distance of each node to center of bounding box,
    // and sort by decreasing distance
    for (i = 0; i < node->NumEntries(); i++) {
      dvec[i].ix = i;
      tmpbox = ((RTentry *)((*node)[i].Ptr()))->bbox();
      dvec[i].dist = tmpbox.dist(uentry->bbox());
    }
    delete uentry;

    qsort(dvec, node->NumEntries(), sizeof(distix), GiSTdistixcmp); 

    for (i = 0; i < num_rem; i++)
      ivec[i] = dvec[i].ix;

    delete dvec;

    // sort the first num_rem by index number to make removal easier
    qsort(ivec, num_rem, sizeof(int), GiSTintcmp);

    for (i = num_rem - 1; i >=0 ; i--) {
        RTentry *tmpentry = new RTentry(*(RTentry *)((*node)[ivec[i]].Ptr()));
        deleted.Append(tmpentry);
        node->DeleteEntry(ivec[i]);
    }

    delete ivec;

    return(deleted);
}

}	// namespace trias_gist 