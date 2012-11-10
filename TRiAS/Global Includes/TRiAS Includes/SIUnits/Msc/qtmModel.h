#ifndef QTMMODEL_H
#define QTMMODEL_H


// ----------------------------------------------------------------------
//
// NT_qtmModel.h
//
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\\
//                                                                     \\
// NOTICE:                                                             \\
//   This file is part of "The SI Library of Unit-Based Computation."  \\
//   See "doc/README" for copyright, license, and other information.   \\
//                                                                     \\
//-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-\\
//
// History:
//   29-Jan-1999  MF   Initial code from NT_stdModel.h
//
// ----------------------------------------------------------------------


#ifndef SIMODEL_H
  #define SIMODEL_H
#else
  #error "Attempted to #include multiple model headers."
#endif


namespace si {

  // -----  Decide underlying type and model:
  //
  typedef double RepType;

  // Go thru NT_wv.h to have the OutLook enum before ourModel is set
  #define SI_wv_OutLook
  #include "wv.h"
  #undef SI_wv_OutLook
 
  enum { ourModel = quantumModel };

} // namespace si

#include "si.h"

namespace si  {


  
  // -----  Provide the standard dimensions, units, and constants:
  //
  #include "allModel_h"



  // -----  Ensure linkage to correct library:
  //
  extern bool const qtmModelIsHere;
         bool const qtmModelNeeded(qtmModelIsHere);


}  // namespace si


#endif  // QTMMODEL_H





