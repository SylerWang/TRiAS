// stdafx.cpp : source file that includes just the standard includes
//  stdafx.pch will be the pre-compiled header
//  stdafx.obj will contain the pre-compiled type information

#include "stdafx.h"

#ifdef _ATL_STATIC_REGISTRY
#include <statreg.h>
#include <statreg.cpp>
#endif

#include <atlimpl.cpp>
#include <Com/ErrorMacros2Impl.cpp>

#if defined(_USE_PERFMON_COUNTERS)
#include <Com/PerfMonInstanceMapImpl.cpp>
#endif // defined(_USE_PERFMON_COUNTERS)
