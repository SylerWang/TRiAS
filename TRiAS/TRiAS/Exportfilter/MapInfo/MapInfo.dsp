# Microsoft Developer Studio Project File - Name="MapInfo" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=MapInfo - Win32 Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "MapInfo.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "MapInfo.mak" CFG="MapInfo - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "MapInfo - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "MapInfo - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""$/TRiAS/TRiAS/Exportfilter/AtlasGIS BNA-Format", ACIAAAAA"
# PROP Scc_LocalPath "."
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "MapInfo - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\WinRel"
# PROP BASE Intermediate_Dir ".\WinRel"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "_Release"
# PROP Intermediate_Dir "_Release"
# PROP Ignore_Export_Lib 0
F90=fl32.exe
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /FR /YX /c
# ADD CPP /nologo /MD /W3 /WX /GX /Zi /O1 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Yu"stdafx.h" /FD /c
# SUBTRACT CPP /Fr
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x407 /d "NDEBUG"
# ADD RSC /l 0x407 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 Shapelib.lib delayimp.lib /delayload:crp32dll.dll /nologo /dll /debug /machine:I386 /out:"_Release\MapInfo.flt" /delayload:ole32.dll /delayload:oleaut32.dll /subsystem:windows,4.0
# SUBTRACT LINK32 /pdb:none
# Begin Custom Build
OutDir=.\_Release
TargetName=MapInfo
InputPath=.\_Release\MapInfo.flt
SOURCE="$(InputPath)"

"$(TRIASDIR_R)\$(TargetName).flt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xcopy /F "$(OutDir)\$(TargetName).flt" "$(TRIASDIR_R)" 
	xcopy /F "$(OutDir)\$(TargetName).pdb" "$(TRIASDIR_R)" 
	
# End Custom Build
# Begin Special Build Tool
SOURCE="$(InputPath)"
PreLink_Cmds=nmake -nologo -f Version.mak CFG=NDEBUG VERSION
# End Special Build Tool

!ELSEIF  "$(CFG)" == "MapInfo - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\WinDebug"
# PROP BASE Intermediate_Dir ".\WinDebug"
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "_Debug"
# PROP Intermediate_Dir "_Debug"
# PROP Ignore_Export_Lib 0
F90=fl32.exe
# ADD BASE CPP /nologo /MT /W3 /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /FR /YX /c
# ADD CPP /nologo /MDd /W3 /WX /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /Yu"stdafx.h" /FD /c
# SUBTRACT CPP /Fr
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x407 /d "_DEBUG"
# ADD RSC /l 0x407 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib /nologo /subsystem:windows /dll /debug /machine:I386
# ADD LINK32 Shapelibd.lib delayimp.lib /delayload:crp32dll.dll /nologo /dll /debug /machine:I386 /out:"_Debug\MapInfoD.flt" /delayload:ole32.dll /delayload:oleaut32.dll /SUBSYSTEM:windows,4.0
# SUBTRACT LINK32 /pdb:none /incremental:no
# Begin Custom Build
OutDir=.\_Debug
TargetName=MapInfoD
InputPath=.\_Debug\MapInfoD.flt
SOURCE="$(InputPath)"

"$(TRIASDIR_D)\$(TargetName).flt" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	xcopy /F "$(OutDir)\$(TargetName).flt" "$(TRIASDIR_D)" 
	xcopy /F "$(OutDir)\$(TargetName).pdb" "$(TRIASDIR_D)" 
	
# End Custom Build
# Begin Special Build Tool
SOURCE="$(InputPath)"
PreLink_Cmds=nmake -nologo -f Version.mak CFG=_DEBUG VERSION
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "MapInfo - Win32 Release"
# Name "MapInfo - Win32 Debug"
# Begin Group "MapInfo"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\MapInfoAttribute.cpp
# End Source File
# Begin Source File

SOURCE=.\MapInfoAttribute.h
# End Source File
# Begin Source File

SOURCE=.\MapInfoDataSource.cpp
# End Source File
# Begin Source File

SOURCE=.\MapInfoDataSource.h
# End Source File
# Begin Source File

SOURCE=.\MapInfoExp.cpp
# End Source File
# Begin Source File

SOURCE=.\MapInfoExport.cpp
# End Source File
# Begin Source File

SOURCE=.\MapInfoExport.h
# End Source File
# Begin Source File

SOURCE=.\MapInfoLayer.cpp
# End Source File
# Begin Source File

SOURCE=.\MapInfoLayer.h
# End Source File
# Begin Source File

SOURCE=.\ExportHelper.cpp
# End Source File
# Begin Source File

SOURCE=.\ExportHelper.h
# End Source File
# Begin Source File

SOURCE=.\Strings.cpp
# End Source File
# Begin Source File

SOURCE=.\Strings.h
# End Source File
# End Group
# Begin Group "DLL Data"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\MapInfo.cpp
# End Source File
# Begin Source File

SOURCE=.\MapInfo.idl

!IF  "$(CFG)" == "MapInfo - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputPath=.\MapInfo.idl

BuildCmds= \
	nmake -nologo -f version.mak CFG=NDEBUG

".\MapInfo.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

".\MapInfo.tlb" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(TRIASTLB)\MapInfo.tlb" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "MapInfo - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputPath=.\MapInfo.idl

BuildCmds= \
	nmake -nologo -f version.mak CFG=_DEBUG

".\MapInfo.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

".\MapInfo.tlb" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

"$(TRIASTLB)\MapInfo.tlb" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\MapInfoImpl.cpp
# End Source File
# Begin Source File

SOURCE=.\MapInfoImpl.h
# End Source File
# Begin Source File

SOURCE=..\ExportInl.cpp
# End Source File
# Begin Source File

SOURCE=.\stdafx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# Begin Source File

SOURCE=.\stdafx.h
# End Source File
# Begin Source File

SOURCE=.\Version.mak

!IF  "$(CFG)" == "MapInfo - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputPath=.\Version.mak

BuildCmds= \
	nmake -nologo -f version.mak CFG=NDEBUG

".\MapInfo.ver" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

".\MapInfo.def" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

".\MapInfo.rcv" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "MapInfo - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputPath=.\Version.mak

BuildCmds= \
	nmake -nologo -f version.mak CFG=_DEBUG

".\MapInfo.ver" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

".\MapInfo.def" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

".\MapInfo.rcv" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;cnt;rtf;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\MapInfo.rc
# End Source File
# Begin Source File

SOURCE=.\MapInfoExport.rgs
# End Source File
# Begin Source File

SOURCE=.\res\MSG00407.bin
# End Source File
# Begin Source File

SOURCE=.\res\MSG00409.bin
# End Source File
# Begin Source File

SOURCE=.\resource.h
# End Source File
# End Group
# Begin Group "Help Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\help\MapInfo.d

!IF  "$(CFG)" == "MapInfo - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputPath=.\help\MapInfo.d
InputName=MapInfo

"$(TRIASINCLUDE)\help\$(InputName).hlp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nmake -nologo -f version.mak CFG=NDEBUG

# End Custom Build

!ELSEIF  "$(CFG)" == "MapInfo - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputPath=.\help\MapInfo.d
InputName=MapInfo

"$(TRIASINCLUDE)\help\$(InputName).hlp" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	nmake -nologo -f version.mak CFG=_DEBUG

# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\MapInfo.mc

!IF  "$(CFG)" == "MapInfo - Win32 Release"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputPath=.\MapInfo.mc

BuildCmds= \
	nmake -nologo -f version.mak CFG=NDEBUG

".\MapInfo.hmc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

".\res\msg00407.bin" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

".\res\msg00409.bin" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ELSEIF  "$(CFG)" == "MapInfo - Win32 Debug"

# PROP Ignore_Default_Tool 1
# Begin Custom Build
InputPath=.\MapInfo.mc

BuildCmds= \
	nmake -nologo -f version.mak CFG=_DEBUG

".\MapInfo.hmc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

".\res\msg00407.bin" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)

".\res\msg00409.bin" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   $(BuildCmds)
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=..\..\TRiASHP\shapelib\dbf_api.html
# End Source File
# Begin Source File

SOURCE=..\..\TRiASHP\shapelib\shp_api.html
# End Source File
# End Group
# Begin Group "Generated Files"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\MapInfo.def
# End Source File
# Begin Source File

SOURCE=.\MapInfo.rcv
# End Source File
# Begin Source File

SOURCE=.\MapInfo.ver
# End Source File
# End Group
# Begin Source File

SOURCE=..\Registry.cpp
# End Source File
# End Target
# End Project
