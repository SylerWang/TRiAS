# Microsoft Developer Studio Generated NMAKE File, Format Version 4.20
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

!IF "$(CFG)" == ""
CFG=GbmTRiAS - Win32 Debug_210
!MESSAGE No configuration specified.  Defaulting to GbmTRiAS - Win32 Debug_210.
!ENDIF 

!IF "$(CFG)" != "GbmTRiAS - Win32 Release" && "$(CFG)" !=\
 "GbmTRiAS - Win32 Debug" && "$(CFG)" != "GbmTRiAS - Win32 SmartDebug" &&\
 "$(CFG)" != "GbmTRiAS - Win32 SmartDebug_210" && "$(CFG)" !=\
 "GbmTRiAS - Win32 Release_210" && "$(CFG)" != "GbmTRiAS - Win32 Debug_210"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "GbmTRiAS.mak" CFG="GbmTRiAS - Win32 Debug_210"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "GbmTRiAS - Win32 Release" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "GbmTRiAS - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "GbmTRiAS - Win32 SmartDebug" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "GbmTRiAS - Win32 SmartDebug_210" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "GbmTRiAS - Win32 Release_210" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE "GbmTRiAS - Win32 Debug_210" (based on\
 "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "GbmTRiAS - Win32 SmartDebug_210"
MTL=mktyplib.exe
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
OUTDIR=.\Release
INTDIR=.\Release

ALL : "..\..\..\..\..\Programme\TRiAS\TRiAS\GbmTRiAS.ext"\
 "$(OUTDIR)\GbmTRiAS.bsc"

CLEAN : 
	-@erase "$(INTDIR)\About.obj"
	-@erase "$(INTDIR)\About.sbr"
	-@erase "$(INTDIR)\AuxUIOwner.obj"
	-@erase "$(INTDIR)\AuxUIOwner.sbr"
	-@erase "$(INTDIR)\CulcuDlg.obj"
	-@erase "$(INTDIR)\CulcuDlg.sbr"
	-@erase "$(INTDIR)\DeleteDialog.obj"
	-@erase "$(INTDIR)\DeleteDialog.sbr"
	-@erase "$(INTDIR)\DIBAPI.OBJ"
	-@erase "$(INTDIR)\DIBAPI.SBR"
	-@erase "$(INTDIR)\DIBFILE.OBJ"
	-@erase "$(INTDIR)\DIBFILE.SBR"
	-@erase "$(INTDIR)\DLDlg.obj"
	-@erase "$(INTDIR)\DLDlg.sbr"
	-@erase "$(INTDIR)\DlgEditVorlage.obj"
	-@erase "$(INTDIR)\DlgEditVorlage.sbr"
	-@erase "$(INTDIR)\DlgSelPrint.obj"
	-@erase "$(INTDIR)\DlgSelPrint.sbr"
	-@erase "$(INTDIR)\DlgTB.obj"
	-@erase "$(INTDIR)\DlgTB.sbr"
	-@erase "$(INTDIR)\DlgVisu.obj"
	-@erase "$(INTDIR)\DlgVisu.sbr"
	-@erase "$(INTDIR)\DlgZFkt.obj"
	-@erase "$(INTDIR)\DlgZFkt.sbr"
	-@erase "$(INTDIR)\EditIDEDlg.obj"
	-@erase "$(INTDIR)\EditIDEDlg.sbr"
	-@erase "$(INTDIR)\EditPage7.obj"
	-@erase "$(INTDIR)\EditPage7.sbr"
	-@erase "$(INTDIR)\EdPage1.obj"
	-@erase "$(INTDIR)\EdPage1.sbr"
	-@erase "$(INTDIR)\EdPage2.obj"
	-@erase "$(INTDIR)\EdPage2.sbr"
	-@erase "$(INTDIR)\EdPage3.obj"
	-@erase "$(INTDIR)\EdPage3.sbr"
	-@erase "$(INTDIR)\EdPage4.obj"
	-@erase "$(INTDIR)\EdPage4.sbr"
	-@erase "$(INTDIR)\EdPage5.obj"
	-@erase "$(INTDIR)\EdPage5.sbr"
	-@erase "$(INTDIR)\EdPage6.obj"
	-@erase "$(INTDIR)\EdPage6.sbr"
	-@erase "$(INTDIR)\ErfassPrivDlg.obj"
	-@erase "$(INTDIR)\ErfassPrivDlg.sbr"
	-@erase "$(INTDIR)\FlAbgleichDlg.obj"
	-@erase "$(INTDIR)\FlAbgleichDlg.sbr"
	-@erase "$(INTDIR)\GbmTRiAS.obj"
	-@erase "$(INTDIR)\GbmTRiAS.pch"
	-@erase "$(INTDIR)\GbmTRiAS.res"
	-@erase "$(INTDIR)\GbmTRiAS.sbr"
	-@erase "$(INTDIR)\GSTeilenDlg.obj"
	-@erase "$(INTDIR)\GSTeilenDlg.sbr"
	-@erase "$(INTDIR)\InterDialog.obj"
	-@erase "$(INTDIR)\InterDialog.sbr"
	-@erase "$(INTDIR)\MyPropS.obj"
	-@erase "$(INTDIR)\MyPropS.sbr"
	-@erase "$(INTDIR)\NF_OG1.obj"
	-@erase "$(INTDIR)\NF_OG1.sbr"
	-@erase "$(INTDIR)\NF_PG1.obj"
	-@erase "$(INTDIR)\NF_PG1.sbr"
	-@erase "$(INTDIR)\NF_PG1FL.obj"
	-@erase "$(INTDIR)\NF_PG1FL.sbr"
	-@erase "$(INTDIR)\NF_PG1GB.obj"
	-@erase "$(INTDIR)\NF_PG1GB.sbr"
	-@erase "$(INTDIR)\NF_PG2D.obj"
	-@erase "$(INTDIR)\NF_PG2D.sbr"
	-@erase "$(INTDIR)\NF_PG2H.obj"
	-@erase "$(INTDIR)\NF_PG2H.sbr"
	-@erase "$(INTDIR)\Nf_pg3.obj"
	-@erase "$(INTDIR)\Nf_pg3.sbr"
	-@erase "$(INTDIR)\ObjProp.obj"
	-@erase "$(INTDIR)\ObjProp.sbr"
	-@erase "$(INTDIR)\ObjProp2.obj"
	-@erase "$(INTDIR)\ObjProp2.sbr"
	-@erase "$(INTDIR)\OpProDlg.obj"
	-@erase "$(INTDIR)\OpProDlg.sbr"
	-@erase "$(INTDIR)\OrteSet.obj"
	-@erase "$(INTDIR)\OrteSet.sbr"
	-@erase "$(INTDIR)\PreviewDialog.obj"
	-@erase "$(INTDIR)\PreviewDialog.sbr"
	-@erase "$(INTDIR)\PrintAnlaDialog.obj"
	-@erase "$(INTDIR)\PrintAnlaDialog.sbr"
	-@erase "$(INTDIR)\PrintAnlage.obj"
	-@erase "$(INTDIR)\PrintAnlage.sbr"
	-@erase "$(INTDIR)\PrintHandler.obj"
	-@erase "$(INTDIR)\PrintHandler.sbr"
	-@erase "$(INTDIR)\RButton.obj"
	-@erase "$(INTDIR)\RButton.sbr"
	-@erase "$(INTDIR)\RectDlg.obj"
	-@erase "$(INTDIR)\RectDlg.sbr"
	-@erase "$(INTDIR)\ResiWnd.obj"
	-@erase "$(INTDIR)\ResiWnd.sbr"
	-@erase "$(INTDIR)\SetNF_PG4.obj"
	-@erase "$(INTDIR)\SetNF_PG4.sbr"
	-@erase "$(INTDIR)\SetOI.obj"
	-@erase "$(INTDIR)\SetOI.sbr"
	-@erase "$(INTDIR)\SetOP1.obj"
	-@erase "$(INTDIR)\SetOP1.sbr"
	-@erase "$(INTDIR)\SetOP2.obj"
	-@erase "$(INTDIR)\SetOP2.sbr"
	-@erase "$(INTDIR)\SetOP3.obj"
	-@erase "$(INTDIR)\SetOP3.sbr"
	-@erase "$(INTDIR)\SetOP4.obj"
	-@erase "$(INTDIR)\SetOP4.sbr"
	-@erase "$(INTDIR)\SetParam.obj"
	-@erase "$(INTDIR)\SetParam.sbr"
	-@erase "$(INTDIR)\SetSI.obj"
	-@erase "$(INTDIR)\SetSI.sbr"
	-@erase "$(INTDIR)\SetVorlagen.obj"
	-@erase "$(INTDIR)\SetVorlagen.sbr"
	-@erase "$(INTDIR)\SetZW_PG1GB.obj"
	-@erase "$(INTDIR)\SetZW_PG1GB.sbr"
	-@erase "$(INTDIR)\SetZW_PG2D.obj"
	-@erase "$(INTDIR)\SetZW_PG2D.sbr"
	-@erase "$(INTDIR)\SetZW_PG2H.obj"
	-@erase "$(INTDIR)\SetZW_PG2H.sbr"
	-@erase "$(INTDIR)\SPage1.obj"
	-@erase "$(INTDIR)\SPage1.sbr"
	-@erase "$(INTDIR)\SPage2.obj"
	-@erase "$(INTDIR)\SPage2.sbr"
	-@erase "$(INTDIR)\StatDlg.obj"
	-@erase "$(INTDIR)\StatDlg.sbr"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\StdAfx.sbr"
	-@erase "$(INTDIR)\StrasseSet.obj"
	-@erase "$(INTDIR)\StrasseSet.sbr"
	-@erase "$(INTDIR)\Strings.obj"
	-@erase "$(INTDIR)\Strings.sbr"
	-@erase "$(INTDIR)\SuchPage0.obj"
	-@erase "$(INTDIR)\SuchPage0.sbr"
	-@erase "$(INTDIR)\SuchPage1.obj"
	-@erase "$(INTDIR)\SuchPage1.sbr"
	-@erase "$(INTDIR)\SuchPage2.obj"
	-@erase "$(INTDIR)\SuchPage2.sbr"
	-@erase "$(INTDIR)\SuchPage3.obj"
	-@erase "$(INTDIR)\SuchPage3.sbr"
	-@erase "$(INTDIR)\SuchPage4.obj"
	-@erase "$(INTDIR)\SuchPage4.sbr"
	-@erase "$(INTDIR)\SuchResDlg.obj"
	-@erase "$(INTDIR)\SuchResDlg.sbr"
	-@erase "$(INTDIR)\TestDialogBar.obj"
	-@erase "$(INTDIR)\TestDialogBar.sbr"
	-@erase "$(INTDIR)\TriDBSet.obj"
	-@erase "$(INTDIR)\TriDBSet.sbr"
	-@erase "$(INTDIR)\VerzSet.obj"
	-@erase "$(INTDIR)\VerzSet.sbr"
	-@erase "$(INTDIR)\VerzSet2.obj"
	-@erase "$(INTDIR)\VerzSet2.sbr"
	-@erase "$(INTDIR)\ViewPortDlg.obj"
	-@erase "$(INTDIR)\ViewPortDlg.sbr"
	-@erase "$(INTDIR)\Xstring.obj"
	-@erase "$(INTDIR)\Xstring.sbr"
	-@erase "$(OUTDIR)\GbmTRiAS.bsc"
	-@erase "$(OUTDIR)\GbmTRiAS.exp"
	-@erase "$(OUTDIR)\GbmTRiAS.lib"
	-@erase "..\..\..\..\..\Programme\TRiAS\TRiAS\GbmTRiAS.ext"
	-@erase ".\Color.ebc"
	-@erase ".\GS_Ana.ebc"
	-@erase ".\K2000.ebc"
	-@erase ".\Macro1.ebc"
	-@erase ".\Macro2.ebc"
	-@erase ".\TopoAna.ebc"
	-@erase ".\Visu.ebc"
	-@erase ".\Visu1.ebc"
	-@erase ".\ZF_001.ebc"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "d:\work\Include.ot5" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D "_AFXEXT" /D "__ATL_11_USED__" /D "__ATL_USED__" /D "OS_STL_ASSERT" /D "OS_ALTERNATIVE_STRING_NAMES" /D "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS" /D "ATL_NO_NAMESPACE" /Fr /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MD /W3 /GX /O2 /I "d:\work\Include.ot5" /D "NDEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS" /D "_WINDLL" /D\
 "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D "_AFXEXT" /D\
 "__ATL_11_USED__" /D "__ATL_USED__" /D "OS_STL_ASSERT" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS"\
 /D "ATL_NO_NAMESPACE" /Fr"$(INTDIR)/" /Fp"$(INTDIR)/GbmTRiAS.pch" /Yu"stdafx.h"\
 /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\Release/
CPP_SBRS=.\Release/
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x407 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x407 /d "NDEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0x407 /fo"$(INTDIR)/GbmTRiAS.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/GbmTRiAS.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\About.sbr" \
	"$(INTDIR)\AuxUIOwner.sbr" \
	"$(INTDIR)\CulcuDlg.sbr" \
	"$(INTDIR)\DeleteDialog.sbr" \
	"$(INTDIR)\DIBAPI.SBR" \
	"$(INTDIR)\DIBFILE.SBR" \
	"$(INTDIR)\DLDlg.sbr" \
	"$(INTDIR)\DlgEditVorlage.sbr" \
	"$(INTDIR)\DlgSelPrint.sbr" \
	"$(INTDIR)\DlgTB.sbr" \
	"$(INTDIR)\DlgVisu.sbr" \
	"$(INTDIR)\DlgZFkt.sbr" \
	"$(INTDIR)\EditIDEDlg.sbr" \
	"$(INTDIR)\EditPage7.sbr" \
	"$(INTDIR)\EdPage1.sbr" \
	"$(INTDIR)\EdPage2.sbr" \
	"$(INTDIR)\EdPage3.sbr" \
	"$(INTDIR)\EdPage4.sbr" \
	"$(INTDIR)\EdPage5.sbr" \
	"$(INTDIR)\EdPage6.sbr" \
	"$(INTDIR)\ErfassPrivDlg.sbr" \
	"$(INTDIR)\FlAbgleichDlg.sbr" \
	"$(INTDIR)\GbmTRiAS.sbr" \
	"$(INTDIR)\GSTeilenDlg.sbr" \
	"$(INTDIR)\InterDialog.sbr" \
	"$(INTDIR)\MyPropS.sbr" \
	"$(INTDIR)\NF_OG1.sbr" \
	"$(INTDIR)\NF_PG1.sbr" \
	"$(INTDIR)\NF_PG1FL.sbr" \
	"$(INTDIR)\NF_PG1GB.sbr" \
	"$(INTDIR)\NF_PG2D.sbr" \
	"$(INTDIR)\NF_PG2H.sbr" \
	"$(INTDIR)\Nf_pg3.sbr" \
	"$(INTDIR)\ObjProp.sbr" \
	"$(INTDIR)\ObjProp2.sbr" \
	"$(INTDIR)\OpProDlg.sbr" \
	"$(INTDIR)\OrteSet.sbr" \
	"$(INTDIR)\PreviewDialog.sbr" \
	"$(INTDIR)\PrintAnlaDialog.sbr" \
	"$(INTDIR)\PrintAnlage.sbr" \
	"$(INTDIR)\PrintHandler.sbr" \
	"$(INTDIR)\RButton.sbr" \
	"$(INTDIR)\RectDlg.sbr" \
	"$(INTDIR)\ResiWnd.sbr" \
	"$(INTDIR)\SetNF_PG4.sbr" \
	"$(INTDIR)\SetOI.sbr" \
	"$(INTDIR)\SetOP1.sbr" \
	"$(INTDIR)\SetOP2.sbr" \
	"$(INTDIR)\SetOP3.sbr" \
	"$(INTDIR)\SetOP4.sbr" \
	"$(INTDIR)\SetParam.sbr" \
	"$(INTDIR)\SetSI.sbr" \
	"$(INTDIR)\SetVorlagen.sbr" \
	"$(INTDIR)\SetZW_PG1GB.sbr" \
	"$(INTDIR)\SetZW_PG2D.sbr" \
	"$(INTDIR)\SetZW_PG2H.sbr" \
	"$(INTDIR)\SPage1.sbr" \
	"$(INTDIR)\SPage2.sbr" \
	"$(INTDIR)\StatDlg.sbr" \
	"$(INTDIR)\StdAfx.sbr" \
	"$(INTDIR)\StrasseSet.sbr" \
	"$(INTDIR)\Strings.sbr" \
	"$(INTDIR)\SuchPage0.sbr" \
	"$(INTDIR)\SuchPage1.sbr" \
	"$(INTDIR)\SuchPage2.sbr" \
	"$(INTDIR)\SuchPage3.sbr" \
	"$(INTDIR)\SuchPage4.sbr" \
	"$(INTDIR)\SuchResDlg.sbr" \
	"$(INTDIR)\TestDialogBar.sbr" \
	"$(INTDIR)\TriDBSet.sbr" \
	"$(INTDIR)\VerzSet.sbr" \
	"$(INTDIR)\VerzSet2.sbr" \
	"$(INTDIR)\ViewPortDlg.sbr" \
	"$(INTDIR)\Xstring.sbr"

"$(OUTDIR)\GbmTRiAS.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /dll /machine:I386
# ADD LINK32 cont32r.lib stdcppr.lib ixtmfr42.lib ot5042r.lib /nologo /subsystem:windows /dll /machine:I386 /out:"D:/Programme/TRiAS/TRiAS/GbmTRiAS.ext"
# SUBTRACT LINK32 /debug /nodefaultlib
LINK32_FLAGS=cont32r.lib stdcppr.lib ixtmfr42.lib ot5042r.lib /nologo\
 /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)/GbmTRiAS.pdb"\
 /machine:I386 /def:".\GbmTRiAS.def"\
 /out:"D:/Programme/TRiAS/TRiAS/GbmTRiAS.ext" /implib:"$(OUTDIR)/GbmTRiAS.lib" 
DEF_FILE= \
	".\GbmTRiAS.def"
LINK32_OBJS= \
	"$(INTDIR)\About.obj" \
	"$(INTDIR)\AuxUIOwner.obj" \
	"$(INTDIR)\CulcuDlg.obj" \
	"$(INTDIR)\DeleteDialog.obj" \
	"$(INTDIR)\DIBAPI.OBJ" \
	"$(INTDIR)\DIBFILE.OBJ" \
	"$(INTDIR)\DLDlg.obj" \
	"$(INTDIR)\DlgEditVorlage.obj" \
	"$(INTDIR)\DlgSelPrint.obj" \
	"$(INTDIR)\DlgTB.obj" \
	"$(INTDIR)\DlgVisu.obj" \
	"$(INTDIR)\DlgZFkt.obj" \
	"$(INTDIR)\EditIDEDlg.obj" \
	"$(INTDIR)\EditPage7.obj" \
	"$(INTDIR)\EdPage1.obj" \
	"$(INTDIR)\EdPage2.obj" \
	"$(INTDIR)\EdPage3.obj" \
	"$(INTDIR)\EdPage4.obj" \
	"$(INTDIR)\EdPage5.obj" \
	"$(INTDIR)\EdPage6.obj" \
	"$(INTDIR)\ErfassPrivDlg.obj" \
	"$(INTDIR)\FlAbgleichDlg.obj" \
	"$(INTDIR)\GbmTRiAS.obj" \
	"$(INTDIR)\GbmTRiAS.res" \
	"$(INTDIR)\GSTeilenDlg.obj" \
	"$(INTDIR)\InterDialog.obj" \
	"$(INTDIR)\MyPropS.obj" \
	"$(INTDIR)\NF_OG1.obj" \
	"$(INTDIR)\NF_PG1.obj" \
	"$(INTDIR)\NF_PG1FL.obj" \
	"$(INTDIR)\NF_PG1GB.obj" \
	"$(INTDIR)\NF_PG2D.obj" \
	"$(INTDIR)\NF_PG2H.obj" \
	"$(INTDIR)\Nf_pg3.obj" \
	"$(INTDIR)\ObjProp.obj" \
	"$(INTDIR)\ObjProp2.obj" \
	"$(INTDIR)\OpProDlg.obj" \
	"$(INTDIR)\OrteSet.obj" \
	"$(INTDIR)\PreviewDialog.obj" \
	"$(INTDIR)\PrintAnlaDialog.obj" \
	"$(INTDIR)\PrintAnlage.obj" \
	"$(INTDIR)\PrintHandler.obj" \
	"$(INTDIR)\RButton.obj" \
	"$(INTDIR)\RectDlg.obj" \
	"$(INTDIR)\ResiWnd.obj" \
	"$(INTDIR)\SetNF_PG4.obj" \
	"$(INTDIR)\SetOI.obj" \
	"$(INTDIR)\SetOP1.obj" \
	"$(INTDIR)\SetOP2.obj" \
	"$(INTDIR)\SetOP3.obj" \
	"$(INTDIR)\SetOP4.obj" \
	"$(INTDIR)\SetParam.obj" \
	"$(INTDIR)\SetSI.obj" \
	"$(INTDIR)\SetVorlagen.obj" \
	"$(INTDIR)\SetZW_PG1GB.obj" \
	"$(INTDIR)\SetZW_PG2D.obj" \
	"$(INTDIR)\SetZW_PG2H.obj" \
	"$(INTDIR)\SPage1.obj" \
	"$(INTDIR)\SPage2.obj" \
	"$(INTDIR)\StatDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\StrasseSet.obj" \
	"$(INTDIR)\Strings.obj" \
	"$(INTDIR)\SuchPage0.obj" \
	"$(INTDIR)\SuchPage1.obj" \
	"$(INTDIR)\SuchPage2.obj" \
	"$(INTDIR)\SuchPage3.obj" \
	"$(INTDIR)\SuchPage4.obj" \
	"$(INTDIR)\SuchResDlg.obj" \
	"$(INTDIR)\TestDialogBar.obj" \
	"$(INTDIR)\TriDBSet.obj" \
	"$(INTDIR)\VerzSet.obj" \
	"$(INTDIR)\VerzSet2.obj" \
	"$(INTDIR)\ViewPortDlg.obj" \
	"$(INTDIR)\Xstring.obj"

"..\..\..\..\..\Programme\TRiAS\TRiAS\GbmTRiAS.ext" : "$(OUTDIR)" $(DEF_FILE)\
 $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "..\..\..\..\..\TRiAS\TRiAS32d\GbmTRiAD.ext" "$(OUTDIR)\GbmTRiAS.bsc"

CLEAN : 
	-@erase "$(INTDIR)\About.obj"
	-@erase "$(INTDIR)\About.sbr"
	-@erase "$(INTDIR)\AuxUIOwner.obj"
	-@erase "$(INTDIR)\AuxUIOwner.sbr"
	-@erase "$(INTDIR)\CulcuDlg.obj"
	-@erase "$(INTDIR)\CulcuDlg.sbr"
	-@erase "$(INTDIR)\DeleteDialog.obj"
	-@erase "$(INTDIR)\DeleteDialog.sbr"
	-@erase "$(INTDIR)\DIBAPI.OBJ"
	-@erase "$(INTDIR)\DIBAPI.SBR"
	-@erase "$(INTDIR)\DIBFILE.OBJ"
	-@erase "$(INTDIR)\DIBFILE.SBR"
	-@erase "$(INTDIR)\DLDlg.obj"
	-@erase "$(INTDIR)\DLDlg.sbr"
	-@erase "$(INTDIR)\DlgEditVorlage.obj"
	-@erase "$(INTDIR)\DlgEditVorlage.sbr"
	-@erase "$(INTDIR)\DlgSelPrint.obj"
	-@erase "$(INTDIR)\DlgSelPrint.sbr"
	-@erase "$(INTDIR)\DlgTB.obj"
	-@erase "$(INTDIR)\DlgTB.sbr"
	-@erase "$(INTDIR)\DlgVisu.obj"
	-@erase "$(INTDIR)\DlgVisu.sbr"
	-@erase "$(INTDIR)\DlgZFkt.obj"
	-@erase "$(INTDIR)\DlgZFkt.sbr"
	-@erase "$(INTDIR)\EditIDEDlg.obj"
	-@erase "$(INTDIR)\EditIDEDlg.sbr"
	-@erase "$(INTDIR)\EditPage7.obj"
	-@erase "$(INTDIR)\EditPage7.sbr"
	-@erase "$(INTDIR)\EdPage1.obj"
	-@erase "$(INTDIR)\EdPage1.sbr"
	-@erase "$(INTDIR)\EdPage2.obj"
	-@erase "$(INTDIR)\EdPage2.sbr"
	-@erase "$(INTDIR)\EdPage3.obj"
	-@erase "$(INTDIR)\EdPage3.sbr"
	-@erase "$(INTDIR)\EdPage4.obj"
	-@erase "$(INTDIR)\EdPage4.sbr"
	-@erase "$(INTDIR)\EdPage5.obj"
	-@erase "$(INTDIR)\EdPage5.sbr"
	-@erase "$(INTDIR)\EdPage6.obj"
	-@erase "$(INTDIR)\EdPage6.sbr"
	-@erase "$(INTDIR)\ErfassPrivDlg.obj"
	-@erase "$(INTDIR)\ErfassPrivDlg.sbr"
	-@erase "$(INTDIR)\FlAbgleichDlg.obj"
	-@erase "$(INTDIR)\FlAbgleichDlg.sbr"
	-@erase "$(INTDIR)\GbmTRiAS.obj"
	-@erase "$(INTDIR)\GbmTRiAS.pch"
	-@erase "$(INTDIR)\GbmTRiAS.res"
	-@erase "$(INTDIR)\GbmTRiAS.sbr"
	-@erase "$(INTDIR)\GSTeilenDlg.obj"
	-@erase "$(INTDIR)\GSTeilenDlg.sbr"
	-@erase "$(INTDIR)\InterDialog.obj"
	-@erase "$(INTDIR)\InterDialog.sbr"
	-@erase "$(INTDIR)\MyPropS.obj"
	-@erase "$(INTDIR)\MyPropS.sbr"
	-@erase "$(INTDIR)\NF_OG1.obj"
	-@erase "$(INTDIR)\NF_OG1.sbr"
	-@erase "$(INTDIR)\NF_PG1.obj"
	-@erase "$(INTDIR)\NF_PG1.sbr"
	-@erase "$(INTDIR)\NF_PG1FL.obj"
	-@erase "$(INTDIR)\NF_PG1FL.sbr"
	-@erase "$(INTDIR)\NF_PG1GB.obj"
	-@erase "$(INTDIR)\NF_PG1GB.sbr"
	-@erase "$(INTDIR)\NF_PG2D.obj"
	-@erase "$(INTDIR)\NF_PG2D.sbr"
	-@erase "$(INTDIR)\NF_PG2H.obj"
	-@erase "$(INTDIR)\NF_PG2H.sbr"
	-@erase "$(INTDIR)\Nf_pg3.obj"
	-@erase "$(INTDIR)\Nf_pg3.sbr"
	-@erase "$(INTDIR)\ObjProp.obj"
	-@erase "$(INTDIR)\ObjProp.sbr"
	-@erase "$(INTDIR)\ObjProp2.obj"
	-@erase "$(INTDIR)\ObjProp2.sbr"
	-@erase "$(INTDIR)\OpProDlg.obj"
	-@erase "$(INTDIR)\OpProDlg.sbr"
	-@erase "$(INTDIR)\OrteSet.obj"
	-@erase "$(INTDIR)\OrteSet.sbr"
	-@erase "$(INTDIR)\PreviewDialog.obj"
	-@erase "$(INTDIR)\PreviewDialog.sbr"
	-@erase "$(INTDIR)\PrintAnlaDialog.obj"
	-@erase "$(INTDIR)\PrintAnlaDialog.sbr"
	-@erase "$(INTDIR)\PrintAnlage.obj"
	-@erase "$(INTDIR)\PrintAnlage.sbr"
	-@erase "$(INTDIR)\PrintHandler.obj"
	-@erase "$(INTDIR)\PrintHandler.sbr"
	-@erase "$(INTDIR)\RButton.obj"
	-@erase "$(INTDIR)\RButton.sbr"
	-@erase "$(INTDIR)\RectDlg.obj"
	-@erase "$(INTDIR)\RectDlg.sbr"
	-@erase "$(INTDIR)\ResiWnd.obj"
	-@erase "$(INTDIR)\ResiWnd.sbr"
	-@erase "$(INTDIR)\SetNF_PG4.obj"
	-@erase "$(INTDIR)\SetNF_PG4.sbr"
	-@erase "$(INTDIR)\SetOI.obj"
	-@erase "$(INTDIR)\SetOI.sbr"
	-@erase "$(INTDIR)\SetOP1.obj"
	-@erase "$(INTDIR)\SetOP1.sbr"
	-@erase "$(INTDIR)\SetOP2.obj"
	-@erase "$(INTDIR)\SetOP2.sbr"
	-@erase "$(INTDIR)\SetOP3.obj"
	-@erase "$(INTDIR)\SetOP3.sbr"
	-@erase "$(INTDIR)\SetOP4.obj"
	-@erase "$(INTDIR)\SetOP4.sbr"
	-@erase "$(INTDIR)\SetParam.obj"
	-@erase "$(INTDIR)\SetParam.sbr"
	-@erase "$(INTDIR)\SetSI.obj"
	-@erase "$(INTDIR)\SetSI.sbr"
	-@erase "$(INTDIR)\SetVorlagen.obj"
	-@erase "$(INTDIR)\SetVorlagen.sbr"
	-@erase "$(INTDIR)\SetZW_PG1GB.obj"
	-@erase "$(INTDIR)\SetZW_PG1GB.sbr"
	-@erase "$(INTDIR)\SetZW_PG2D.obj"
	-@erase "$(INTDIR)\SetZW_PG2D.sbr"
	-@erase "$(INTDIR)\SetZW_PG2H.obj"
	-@erase "$(INTDIR)\SetZW_PG2H.sbr"
	-@erase "$(INTDIR)\SPage1.obj"
	-@erase "$(INTDIR)\SPage1.sbr"
	-@erase "$(INTDIR)\SPage2.obj"
	-@erase "$(INTDIR)\SPage2.sbr"
	-@erase "$(INTDIR)\StatDlg.obj"
	-@erase "$(INTDIR)\StatDlg.sbr"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\StdAfx.sbr"
	-@erase "$(INTDIR)\StrasseSet.obj"
	-@erase "$(INTDIR)\StrasseSet.sbr"
	-@erase "$(INTDIR)\Strings.obj"
	-@erase "$(INTDIR)\Strings.sbr"
	-@erase "$(INTDIR)\SuchPage0.obj"
	-@erase "$(INTDIR)\SuchPage0.sbr"
	-@erase "$(INTDIR)\SuchPage1.obj"
	-@erase "$(INTDIR)\SuchPage1.sbr"
	-@erase "$(INTDIR)\SuchPage2.obj"
	-@erase "$(INTDIR)\SuchPage2.sbr"
	-@erase "$(INTDIR)\SuchPage3.obj"
	-@erase "$(INTDIR)\SuchPage3.sbr"
	-@erase "$(INTDIR)\SuchPage4.obj"
	-@erase "$(INTDIR)\SuchPage4.sbr"
	-@erase "$(INTDIR)\SuchResDlg.obj"
	-@erase "$(INTDIR)\SuchResDlg.sbr"
	-@erase "$(INTDIR)\TestDialogBar.obj"
	-@erase "$(INTDIR)\TestDialogBar.sbr"
	-@erase "$(INTDIR)\TriDBSet.obj"
	-@erase "$(INTDIR)\TriDBSet.sbr"
	-@erase "$(INTDIR)\vc40.idb"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\VerzSet.obj"
	-@erase "$(INTDIR)\VerzSet.sbr"
	-@erase "$(INTDIR)\VerzSet2.obj"
	-@erase "$(INTDIR)\VerzSet2.sbr"
	-@erase "$(INTDIR)\ViewPortDlg.obj"
	-@erase "$(INTDIR)\ViewPortDlg.sbr"
	-@erase "$(INTDIR)\Xstring.obj"
	-@erase "$(INTDIR)\Xstring.sbr"
	-@erase "$(OUTDIR)\GbmTRiAD.exp"
	-@erase "$(OUTDIR)\GbmTRiAD.lib"
	-@erase "$(OUTDIR)\GbmTRiAD.pdb"
	-@erase "$(OUTDIR)\GbmTRiAS.bsc"
	-@erase "..\..\..\..\..\TRiAS\TRiAS32d\GbmTRiAD.ext"
	-@erase "..\..\..\..\..\TRiAS\TRiAS32d\GbmTRiAD.ilk"
	-@erase ".\Color.ebc"
	-@erase ".\GS_Ana.ebc"
	-@erase ".\K2000.ebc"
	-@erase ".\Macro1.ebc"
	-@erase ".\Macro2.ebc"
	-@erase ".\TopoAna.ebc"
	-@erase ".\Visu.ebc"
	-@erase ".\Visu1.ebc"
	-@erase ".\ZF_001.ebc"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /I "d:\work\Include.ot5" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D "_AFXEXT" /D "__ATL_11_USED__" /D "__ATL_USED__" /D "OS_STL_ASSERT" /D "OS_ALTERNATIVE_STRING_NAMES" /D "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS" /D "ATL_NO_NAMESPACE" /FR /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /Zi /Od /I "d:\work\Include.ot5" /D "_DEBUG"\
 /D "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS" /D "_WINDLL" /D\
 "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D "_AFXEXT" /D\
 "__ATL_11_USED__" /D "__ATL_USED__" /D "OS_STL_ASSERT" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS"\
 /D "ATL_NO_NAMESPACE" /FR"$(INTDIR)/" /Fp"$(INTDIR)/GbmTRiAS.pch" /Yu"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.\Debug/
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0x407 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x407 /d "_DEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0x407 /fo"$(INTDIR)/GbmTRiAS.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/GbmTRiAS.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\About.sbr" \
	"$(INTDIR)\AuxUIOwner.sbr" \
	"$(INTDIR)\CulcuDlg.sbr" \
	"$(INTDIR)\DeleteDialog.sbr" \
	"$(INTDIR)\DIBAPI.SBR" \
	"$(INTDIR)\DIBFILE.SBR" \
	"$(INTDIR)\DLDlg.sbr" \
	"$(INTDIR)\DlgEditVorlage.sbr" \
	"$(INTDIR)\DlgSelPrint.sbr" \
	"$(INTDIR)\DlgTB.sbr" \
	"$(INTDIR)\DlgVisu.sbr" \
	"$(INTDIR)\DlgZFkt.sbr" \
	"$(INTDIR)\EditIDEDlg.sbr" \
	"$(INTDIR)\EditPage7.sbr" \
	"$(INTDIR)\EdPage1.sbr" \
	"$(INTDIR)\EdPage2.sbr" \
	"$(INTDIR)\EdPage3.sbr" \
	"$(INTDIR)\EdPage4.sbr" \
	"$(INTDIR)\EdPage5.sbr" \
	"$(INTDIR)\EdPage6.sbr" \
	"$(INTDIR)\ErfassPrivDlg.sbr" \
	"$(INTDIR)\FlAbgleichDlg.sbr" \
	"$(INTDIR)\GbmTRiAS.sbr" \
	"$(INTDIR)\GSTeilenDlg.sbr" \
	"$(INTDIR)\InterDialog.sbr" \
	"$(INTDIR)\MyPropS.sbr" \
	"$(INTDIR)\NF_OG1.sbr" \
	"$(INTDIR)\NF_PG1.sbr" \
	"$(INTDIR)\NF_PG1FL.sbr" \
	"$(INTDIR)\NF_PG1GB.sbr" \
	"$(INTDIR)\NF_PG2D.sbr" \
	"$(INTDIR)\NF_PG2H.sbr" \
	"$(INTDIR)\Nf_pg3.sbr" \
	"$(INTDIR)\ObjProp.sbr" \
	"$(INTDIR)\ObjProp2.sbr" \
	"$(INTDIR)\OpProDlg.sbr" \
	"$(INTDIR)\OrteSet.sbr" \
	"$(INTDIR)\PreviewDialog.sbr" \
	"$(INTDIR)\PrintAnlaDialog.sbr" \
	"$(INTDIR)\PrintAnlage.sbr" \
	"$(INTDIR)\PrintHandler.sbr" \
	"$(INTDIR)\RButton.sbr" \
	"$(INTDIR)\RectDlg.sbr" \
	"$(INTDIR)\ResiWnd.sbr" \
	"$(INTDIR)\SetNF_PG4.sbr" \
	"$(INTDIR)\SetOI.sbr" \
	"$(INTDIR)\SetOP1.sbr" \
	"$(INTDIR)\SetOP2.sbr" \
	"$(INTDIR)\SetOP3.sbr" \
	"$(INTDIR)\SetOP4.sbr" \
	"$(INTDIR)\SetParam.sbr" \
	"$(INTDIR)\SetSI.sbr" \
	"$(INTDIR)\SetVorlagen.sbr" \
	"$(INTDIR)\SetZW_PG1GB.sbr" \
	"$(INTDIR)\SetZW_PG2D.sbr" \
	"$(INTDIR)\SetZW_PG2H.sbr" \
	"$(INTDIR)\SPage1.sbr" \
	"$(INTDIR)\SPage2.sbr" \
	"$(INTDIR)\StatDlg.sbr" \
	"$(INTDIR)\StdAfx.sbr" \
	"$(INTDIR)\StrasseSet.sbr" \
	"$(INTDIR)\Strings.sbr" \
	"$(INTDIR)\SuchPage0.sbr" \
	"$(INTDIR)\SuchPage1.sbr" \
	"$(INTDIR)\SuchPage2.sbr" \
	"$(INTDIR)\SuchPage3.sbr" \
	"$(INTDIR)\SuchPage4.sbr" \
	"$(INTDIR)\SuchResDlg.sbr" \
	"$(INTDIR)\TestDialogBar.sbr" \
	"$(INTDIR)\TriDBSet.sbr" \
	"$(INTDIR)\VerzSet.sbr" \
	"$(INTDIR)\VerzSet2.sbr" \
	"$(INTDIR)\ViewPortDlg.sbr" \
	"$(INTDIR)\Xstring.sbr"

"$(OUTDIR)\GbmTRiAS.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /dll /debug /machine:I386
# ADD LINK32 cont32d.lib stdcppd.lib ot5042d.lib ixtmfd42.lib /nologo /subsystem:windows /dll /debug /machine:I386 /out:"d:/TRiAS/TRiAS32d/GbmTRiAD.ext"
# SUBTRACT LINK32 /verbose /profile /pdb:none /nodefaultlib
LINK32_FLAGS=cont32d.lib stdcppd.lib ot5042d.lib ixtmfd42.lib /nologo\
 /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)/GbmTRiAD.pdb" /debug\
 /machine:I386 /def:".\GbmTRiAS.def" /out:"d:/TRiAS/TRiAS32d/GbmTRiAD.ext"\
 /implib:"$(OUTDIR)/GbmTRiAD.lib" 
DEF_FILE= \
	".\GbmTRiAS.def"
LINK32_OBJS= \
	"$(INTDIR)\About.obj" \
	"$(INTDIR)\AuxUIOwner.obj" \
	"$(INTDIR)\CulcuDlg.obj" \
	"$(INTDIR)\DeleteDialog.obj" \
	"$(INTDIR)\DIBAPI.OBJ" \
	"$(INTDIR)\DIBFILE.OBJ" \
	"$(INTDIR)\DLDlg.obj" \
	"$(INTDIR)\DlgEditVorlage.obj" \
	"$(INTDIR)\DlgSelPrint.obj" \
	"$(INTDIR)\DlgTB.obj" \
	"$(INTDIR)\DlgVisu.obj" \
	"$(INTDIR)\DlgZFkt.obj" \
	"$(INTDIR)\EditIDEDlg.obj" \
	"$(INTDIR)\EditPage7.obj" \
	"$(INTDIR)\EdPage1.obj" \
	"$(INTDIR)\EdPage2.obj" \
	"$(INTDIR)\EdPage3.obj" \
	"$(INTDIR)\EdPage4.obj" \
	"$(INTDIR)\EdPage5.obj" \
	"$(INTDIR)\EdPage6.obj" \
	"$(INTDIR)\ErfassPrivDlg.obj" \
	"$(INTDIR)\FlAbgleichDlg.obj" \
	"$(INTDIR)\GbmTRiAS.obj" \
	"$(INTDIR)\GbmTRiAS.res" \
	"$(INTDIR)\GSTeilenDlg.obj" \
	"$(INTDIR)\InterDialog.obj" \
	"$(INTDIR)\MyPropS.obj" \
	"$(INTDIR)\NF_OG1.obj" \
	"$(INTDIR)\NF_PG1.obj" \
	"$(INTDIR)\NF_PG1FL.obj" \
	"$(INTDIR)\NF_PG1GB.obj" \
	"$(INTDIR)\NF_PG2D.obj" \
	"$(INTDIR)\NF_PG2H.obj" \
	"$(INTDIR)\Nf_pg3.obj" \
	"$(INTDIR)\ObjProp.obj" \
	"$(INTDIR)\ObjProp2.obj" \
	"$(INTDIR)\OpProDlg.obj" \
	"$(INTDIR)\OrteSet.obj" \
	"$(INTDIR)\PreviewDialog.obj" \
	"$(INTDIR)\PrintAnlaDialog.obj" \
	"$(INTDIR)\PrintAnlage.obj" \
	"$(INTDIR)\PrintHandler.obj" \
	"$(INTDIR)\RButton.obj" \
	"$(INTDIR)\RectDlg.obj" \
	"$(INTDIR)\ResiWnd.obj" \
	"$(INTDIR)\SetNF_PG4.obj" \
	"$(INTDIR)\SetOI.obj" \
	"$(INTDIR)\SetOP1.obj" \
	"$(INTDIR)\SetOP2.obj" \
	"$(INTDIR)\SetOP3.obj" \
	"$(INTDIR)\SetOP4.obj" \
	"$(INTDIR)\SetParam.obj" \
	"$(INTDIR)\SetSI.obj" \
	"$(INTDIR)\SetVorlagen.obj" \
	"$(INTDIR)\SetZW_PG1GB.obj" \
	"$(INTDIR)\SetZW_PG2D.obj" \
	"$(INTDIR)\SetZW_PG2H.obj" \
	"$(INTDIR)\SPage1.obj" \
	"$(INTDIR)\SPage2.obj" \
	"$(INTDIR)\StatDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\StrasseSet.obj" \
	"$(INTDIR)\Strings.obj" \
	"$(INTDIR)\SuchPage0.obj" \
	"$(INTDIR)\SuchPage1.obj" \
	"$(INTDIR)\SuchPage2.obj" \
	"$(INTDIR)\SuchPage3.obj" \
	"$(INTDIR)\SuchPage4.obj" \
	"$(INTDIR)\SuchResDlg.obj" \
	"$(INTDIR)\TestDialogBar.obj" \
	"$(INTDIR)\TriDBSet.obj" \
	"$(INTDIR)\VerzSet.obj" \
	"$(INTDIR)\VerzSet2.obj" \
	"$(INTDIR)\ViewPortDlg.obj" \
	"$(INTDIR)\Xstring.obj"

"..\..\..\..\..\TRiAS\TRiAS32d\GbmTRiAD.ext" : "$(OUTDIR)" $(DEF_FILE)\
 $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "GbmTRiAS"
# PROP BASE Intermediate_Dir "GbmTRiAS"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "..\..\..\..\..\Programme\TRiAS\TRiAS\GbmTRiAS.ext"\
 "$(OUTDIR)\GbmTRiAS.bsc"

CLEAN : 
	-@erase "$(INTDIR)\About.obj"
	-@erase "$(INTDIR)\About.sbr"
	-@erase "$(INTDIR)\AuxUIOwner.obj"
	-@erase "$(INTDIR)\AuxUIOwner.sbr"
	-@erase "$(INTDIR)\CulcuDlg.obj"
	-@erase "$(INTDIR)\CulcuDlg.sbr"
	-@erase "$(INTDIR)\DeleteDialog.obj"
	-@erase "$(INTDIR)\DeleteDialog.sbr"
	-@erase "$(INTDIR)\DIBAPI.OBJ"
	-@erase "$(INTDIR)\DIBAPI.SBR"
	-@erase "$(INTDIR)\DIBFILE.OBJ"
	-@erase "$(INTDIR)\DIBFILE.SBR"
	-@erase "$(INTDIR)\DLDlg.obj"
	-@erase "$(INTDIR)\DLDlg.sbr"
	-@erase "$(INTDIR)\DlgEditVorlage.obj"
	-@erase "$(INTDIR)\DlgEditVorlage.sbr"
	-@erase "$(INTDIR)\DlgSelPrint.obj"
	-@erase "$(INTDIR)\DlgSelPrint.sbr"
	-@erase "$(INTDIR)\DlgTB.obj"
	-@erase "$(INTDIR)\DlgTB.sbr"
	-@erase "$(INTDIR)\DlgVisu.obj"
	-@erase "$(INTDIR)\DlgVisu.sbr"
	-@erase "$(INTDIR)\DlgZFkt.obj"
	-@erase "$(INTDIR)\DlgZFkt.sbr"
	-@erase "$(INTDIR)\EditIDEDlg.obj"
	-@erase "$(INTDIR)\EditIDEDlg.sbr"
	-@erase "$(INTDIR)\EditPage7.obj"
	-@erase "$(INTDIR)\EditPage7.sbr"
	-@erase "$(INTDIR)\EdPage1.obj"
	-@erase "$(INTDIR)\EdPage1.sbr"
	-@erase "$(INTDIR)\EdPage2.obj"
	-@erase "$(INTDIR)\EdPage2.sbr"
	-@erase "$(INTDIR)\EdPage3.obj"
	-@erase "$(INTDIR)\EdPage3.sbr"
	-@erase "$(INTDIR)\EdPage4.obj"
	-@erase "$(INTDIR)\EdPage4.sbr"
	-@erase "$(INTDIR)\EdPage5.obj"
	-@erase "$(INTDIR)\EdPage5.sbr"
	-@erase "$(INTDIR)\EdPage6.obj"
	-@erase "$(INTDIR)\EdPage6.sbr"
	-@erase "$(INTDIR)\ErfassPrivDlg.obj"
	-@erase "$(INTDIR)\ErfassPrivDlg.sbr"
	-@erase "$(INTDIR)\FlAbgleichDlg.obj"
	-@erase "$(INTDIR)\FlAbgleichDlg.sbr"
	-@erase "$(INTDIR)\GbmTRiAS.obj"
	-@erase "$(INTDIR)\GbmTRiAS.pch"
	-@erase "$(INTDIR)\GbmTRiAS.res"
	-@erase "$(INTDIR)\GbmTRiAS.sbr"
	-@erase "$(INTDIR)\GSTeilenDlg.obj"
	-@erase "$(INTDIR)\GSTeilenDlg.sbr"
	-@erase "$(INTDIR)\InterDialog.obj"
	-@erase "$(INTDIR)\InterDialog.sbr"
	-@erase "$(INTDIR)\MyPropS.obj"
	-@erase "$(INTDIR)\MyPropS.sbr"
	-@erase "$(INTDIR)\NF_OG1.obj"
	-@erase "$(INTDIR)\NF_OG1.sbr"
	-@erase "$(INTDIR)\NF_PG1.obj"
	-@erase "$(INTDIR)\NF_PG1.sbr"
	-@erase "$(INTDIR)\NF_PG1FL.obj"
	-@erase "$(INTDIR)\NF_PG1FL.sbr"
	-@erase "$(INTDIR)\NF_PG1GB.obj"
	-@erase "$(INTDIR)\NF_PG1GB.sbr"
	-@erase "$(INTDIR)\NF_PG2D.obj"
	-@erase "$(INTDIR)\NF_PG2D.sbr"
	-@erase "$(INTDIR)\NF_PG2H.obj"
	-@erase "$(INTDIR)\NF_PG2H.sbr"
	-@erase "$(INTDIR)\Nf_pg3.obj"
	-@erase "$(INTDIR)\Nf_pg3.sbr"
	-@erase "$(INTDIR)\ObjProp.obj"
	-@erase "$(INTDIR)\ObjProp.sbr"
	-@erase "$(INTDIR)\ObjProp2.obj"
	-@erase "$(INTDIR)\ObjProp2.sbr"
	-@erase "$(INTDIR)\OpProDlg.obj"
	-@erase "$(INTDIR)\OpProDlg.sbr"
	-@erase "$(INTDIR)\OrteSet.obj"
	-@erase "$(INTDIR)\OrteSet.sbr"
	-@erase "$(INTDIR)\PreviewDialog.obj"
	-@erase "$(INTDIR)\PreviewDialog.sbr"
	-@erase "$(INTDIR)\PrintAnlaDialog.obj"
	-@erase "$(INTDIR)\PrintAnlaDialog.sbr"
	-@erase "$(INTDIR)\PrintAnlage.obj"
	-@erase "$(INTDIR)\PrintAnlage.sbr"
	-@erase "$(INTDIR)\PrintHandler.obj"
	-@erase "$(INTDIR)\PrintHandler.sbr"
	-@erase "$(INTDIR)\RButton.obj"
	-@erase "$(INTDIR)\RButton.sbr"
	-@erase "$(INTDIR)\RectDlg.obj"
	-@erase "$(INTDIR)\RectDlg.sbr"
	-@erase "$(INTDIR)\ResiWnd.obj"
	-@erase "$(INTDIR)\ResiWnd.sbr"
	-@erase "$(INTDIR)\SetNF_PG4.obj"
	-@erase "$(INTDIR)\SetNF_PG4.sbr"
	-@erase "$(INTDIR)\SetOI.obj"
	-@erase "$(INTDIR)\SetOI.sbr"
	-@erase "$(INTDIR)\SetOP1.obj"
	-@erase "$(INTDIR)\SetOP1.sbr"
	-@erase "$(INTDIR)\SetOP2.obj"
	-@erase "$(INTDIR)\SetOP2.sbr"
	-@erase "$(INTDIR)\SetOP3.obj"
	-@erase "$(INTDIR)\SetOP3.sbr"
	-@erase "$(INTDIR)\SetOP4.obj"
	-@erase "$(INTDIR)\SetOP4.sbr"
	-@erase "$(INTDIR)\SetParam.obj"
	-@erase "$(INTDIR)\SetParam.sbr"
	-@erase "$(INTDIR)\SetSI.obj"
	-@erase "$(INTDIR)\SetSI.sbr"
	-@erase "$(INTDIR)\SetVorlagen.obj"
	-@erase "$(INTDIR)\SetVorlagen.sbr"
	-@erase "$(INTDIR)\SetZW_PG1GB.obj"
	-@erase "$(INTDIR)\SetZW_PG1GB.sbr"
	-@erase "$(INTDIR)\SetZW_PG2D.obj"
	-@erase "$(INTDIR)\SetZW_PG2D.sbr"
	-@erase "$(INTDIR)\SetZW_PG2H.obj"
	-@erase "$(INTDIR)\SetZW_PG2H.sbr"
	-@erase "$(INTDIR)\SPage1.obj"
	-@erase "$(INTDIR)\SPage1.sbr"
	-@erase "$(INTDIR)\SPage2.obj"
	-@erase "$(INTDIR)\SPage2.sbr"
	-@erase "$(INTDIR)\StatDlg.obj"
	-@erase "$(INTDIR)\StatDlg.sbr"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\StdAfx.sbr"
	-@erase "$(INTDIR)\StrasseSet.obj"
	-@erase "$(INTDIR)\StrasseSet.sbr"
	-@erase "$(INTDIR)\Strings.obj"
	-@erase "$(INTDIR)\Strings.sbr"
	-@erase "$(INTDIR)\SuchPage0.obj"
	-@erase "$(INTDIR)\SuchPage0.sbr"
	-@erase "$(INTDIR)\SuchPage1.obj"
	-@erase "$(INTDIR)\SuchPage1.sbr"
	-@erase "$(INTDIR)\SuchPage2.obj"
	-@erase "$(INTDIR)\SuchPage2.sbr"
	-@erase "$(INTDIR)\SuchPage3.obj"
	-@erase "$(INTDIR)\SuchPage3.sbr"
	-@erase "$(INTDIR)\SuchPage4.obj"
	-@erase "$(INTDIR)\SuchPage4.sbr"
	-@erase "$(INTDIR)\SuchResDlg.obj"
	-@erase "$(INTDIR)\SuchResDlg.sbr"
	-@erase "$(INTDIR)\TestDialogBar.obj"
	-@erase "$(INTDIR)\TestDialogBar.sbr"
	-@erase "$(INTDIR)\TriDBSet.obj"
	-@erase "$(INTDIR)\TriDBSet.sbr"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\VerzSet.obj"
	-@erase "$(INTDIR)\VerzSet.sbr"
	-@erase "$(INTDIR)\VerzSet2.obj"
	-@erase "$(INTDIR)\VerzSet2.sbr"
	-@erase "$(INTDIR)\ViewPortDlg.obj"
	-@erase "$(INTDIR)\ViewPortDlg.sbr"
	-@erase "$(INTDIR)\Xstring.obj"
	-@erase "$(INTDIR)\Xstring.sbr"
	-@erase "$(OUTDIR)\GbmTRiAS.bsc"
	-@erase "$(OUTDIR)\GbmTRiAS.exp"
	-@erase "$(OUTDIR)\GbmTRiAS.lib"
	-@erase "..\..\..\..\..\Programme\TRiAS\TRiAS\GbmTRiAS.ext"
	-@erase ".\Color.ebc"
	-@erase ".\GS_Ana.ebc"
	-@erase ".\K2000.ebc"
	-@erase ".\Macro1.ebc"
	-@erase ".\Macro2.ebc"
	-@erase ".\TopoAna.ebc"
	-@erase ".\Visu.ebc"
	-@erase ".\Visu1.ebc"
	-@erase ".\ZF_001.ebc"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /Fr /Yu"stdafx.h" /c
# ADD CPP /nologo /MD /W3 /GX /Zi /Od /I "d:\work\Include.ot5" /D "NDEBUG" /D "_SMARTDEBUG" /D "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D "_AFXEXT" /D "__ATL_11_USED__" /D "__ATL_USED__" /D "OS_STL_ASSERT" /D "OS_ALTERNATIVE_STRING_NAMES" /D "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS" /D "ATL_NO_NAMESPACE" /Fr /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MD /W3 /GX /Zi /Od /I "d:\work\Include.ot5" /D "NDEBUG" /D\
 "_SMARTDEBUG" /D "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS"\
 /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D "_AFXEXT" /D\
 "__ATL_11_USED__" /D "__ATL_USED__" /D "OS_STL_ASSERT" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS"\
 /D "ATL_NO_NAMESPACE" /Fr"$(INTDIR)/" /Fp"$(INTDIR)/GbmTRiAS.pch" /Yu"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.\Debug/
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x407 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x407 /d "NDEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0x407 /fo"$(INTDIR)/GbmTRiAS.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/GbmTRiAS.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\About.sbr" \
	"$(INTDIR)\AuxUIOwner.sbr" \
	"$(INTDIR)\CulcuDlg.sbr" \
	"$(INTDIR)\DeleteDialog.sbr" \
	"$(INTDIR)\DIBAPI.SBR" \
	"$(INTDIR)\DIBFILE.SBR" \
	"$(INTDIR)\DLDlg.sbr" \
	"$(INTDIR)\DlgEditVorlage.sbr" \
	"$(INTDIR)\DlgSelPrint.sbr" \
	"$(INTDIR)\DlgTB.sbr" \
	"$(INTDIR)\DlgVisu.sbr" \
	"$(INTDIR)\DlgZFkt.sbr" \
	"$(INTDIR)\EditIDEDlg.sbr" \
	"$(INTDIR)\EditPage7.sbr" \
	"$(INTDIR)\EdPage1.sbr" \
	"$(INTDIR)\EdPage2.sbr" \
	"$(INTDIR)\EdPage3.sbr" \
	"$(INTDIR)\EdPage4.sbr" \
	"$(INTDIR)\EdPage5.sbr" \
	"$(INTDIR)\EdPage6.sbr" \
	"$(INTDIR)\ErfassPrivDlg.sbr" \
	"$(INTDIR)\FlAbgleichDlg.sbr" \
	"$(INTDIR)\GbmTRiAS.sbr" \
	"$(INTDIR)\GSTeilenDlg.sbr" \
	"$(INTDIR)\InterDialog.sbr" \
	"$(INTDIR)\MyPropS.sbr" \
	"$(INTDIR)\NF_OG1.sbr" \
	"$(INTDIR)\NF_PG1.sbr" \
	"$(INTDIR)\NF_PG1FL.sbr" \
	"$(INTDIR)\NF_PG1GB.sbr" \
	"$(INTDIR)\NF_PG2D.sbr" \
	"$(INTDIR)\NF_PG2H.sbr" \
	"$(INTDIR)\Nf_pg3.sbr" \
	"$(INTDIR)\ObjProp.sbr" \
	"$(INTDIR)\ObjProp2.sbr" \
	"$(INTDIR)\OpProDlg.sbr" \
	"$(INTDIR)\OrteSet.sbr" \
	"$(INTDIR)\PreviewDialog.sbr" \
	"$(INTDIR)\PrintAnlaDialog.sbr" \
	"$(INTDIR)\PrintAnlage.sbr" \
	"$(INTDIR)\PrintHandler.sbr" \
	"$(INTDIR)\RButton.sbr" \
	"$(INTDIR)\RectDlg.sbr" \
	"$(INTDIR)\ResiWnd.sbr" \
	"$(INTDIR)\SetNF_PG4.sbr" \
	"$(INTDIR)\SetOI.sbr" \
	"$(INTDIR)\SetOP1.sbr" \
	"$(INTDIR)\SetOP2.sbr" \
	"$(INTDIR)\SetOP3.sbr" \
	"$(INTDIR)\SetOP4.sbr" \
	"$(INTDIR)\SetParam.sbr" \
	"$(INTDIR)\SetSI.sbr" \
	"$(INTDIR)\SetVorlagen.sbr" \
	"$(INTDIR)\SetZW_PG1GB.sbr" \
	"$(INTDIR)\SetZW_PG2D.sbr" \
	"$(INTDIR)\SetZW_PG2H.sbr" \
	"$(INTDIR)\SPage1.sbr" \
	"$(INTDIR)\SPage2.sbr" \
	"$(INTDIR)\StatDlg.sbr" \
	"$(INTDIR)\StdAfx.sbr" \
	"$(INTDIR)\StrasseSet.sbr" \
	"$(INTDIR)\Strings.sbr" \
	"$(INTDIR)\SuchPage0.sbr" \
	"$(INTDIR)\SuchPage1.sbr" \
	"$(INTDIR)\SuchPage2.sbr" \
	"$(INTDIR)\SuchPage3.sbr" \
	"$(INTDIR)\SuchPage4.sbr" \
	"$(INTDIR)\SuchResDlg.sbr" \
	"$(INTDIR)\TestDialogBar.sbr" \
	"$(INTDIR)\TriDBSet.sbr" \
	"$(INTDIR)\VerzSet.sbr" \
	"$(INTDIR)\VerzSet2.sbr" \
	"$(INTDIR)\ViewPortDlg.sbr" \
	"$(INTDIR)\Xstring.sbr"

"$(OUTDIR)\GbmTRiAS.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 cont32r.lib stdcppr.lib ixtmfr42.lib ot5042r.lib /nologo /subsystem:windows /dll /machine:I386 /out:"D:/Programme/TRiAS/TRiAS/GbmTRiAS.ext"
# SUBTRACT BASE LINK32 /debug /nodefaultlib
# ADD LINK32 cont32r.lib stdcppr.lib ixtmfr42.lib ot5042r.lib ospace2r.lib /nologo /subsystem:windows /dll /profile /debug /machine:I386 /out:"D:/Programme/TRiAS/TRiAS/GbmTRiAS.ext"
# SUBTRACT LINK32 /verbose /nodefaultlib
LINK32_FLAGS=cont32r.lib stdcppr.lib ixtmfr42.lib ot5042r.lib ospace2r.lib\
 /nologo /subsystem:windows /dll /profile /debug /machine:I386\
 /def:".\GbmTRiAS.def" /out:"D:/Programme/TRiAS/TRiAS/GbmTRiAS.ext"\
 /implib:"$(OUTDIR)/GbmTRiAS.lib" 
DEF_FILE= \
	".\GbmTRiAS.def"
LINK32_OBJS= \
	"$(INTDIR)\About.obj" \
	"$(INTDIR)\AuxUIOwner.obj" \
	"$(INTDIR)\CulcuDlg.obj" \
	"$(INTDIR)\DeleteDialog.obj" \
	"$(INTDIR)\DIBAPI.OBJ" \
	"$(INTDIR)\DIBFILE.OBJ" \
	"$(INTDIR)\DLDlg.obj" \
	"$(INTDIR)\DlgEditVorlage.obj" \
	"$(INTDIR)\DlgSelPrint.obj" \
	"$(INTDIR)\DlgTB.obj" \
	"$(INTDIR)\DlgVisu.obj" \
	"$(INTDIR)\DlgZFkt.obj" \
	"$(INTDIR)\EditIDEDlg.obj" \
	"$(INTDIR)\EditPage7.obj" \
	"$(INTDIR)\EdPage1.obj" \
	"$(INTDIR)\EdPage2.obj" \
	"$(INTDIR)\EdPage3.obj" \
	"$(INTDIR)\EdPage4.obj" \
	"$(INTDIR)\EdPage5.obj" \
	"$(INTDIR)\EdPage6.obj" \
	"$(INTDIR)\ErfassPrivDlg.obj" \
	"$(INTDIR)\FlAbgleichDlg.obj" \
	"$(INTDIR)\GbmTRiAS.obj" \
	"$(INTDIR)\GbmTRiAS.res" \
	"$(INTDIR)\GSTeilenDlg.obj" \
	"$(INTDIR)\InterDialog.obj" \
	"$(INTDIR)\MyPropS.obj" \
	"$(INTDIR)\NF_OG1.obj" \
	"$(INTDIR)\NF_PG1.obj" \
	"$(INTDIR)\NF_PG1FL.obj" \
	"$(INTDIR)\NF_PG1GB.obj" \
	"$(INTDIR)\NF_PG2D.obj" \
	"$(INTDIR)\NF_PG2H.obj" \
	"$(INTDIR)\Nf_pg3.obj" \
	"$(INTDIR)\ObjProp.obj" \
	"$(INTDIR)\ObjProp2.obj" \
	"$(INTDIR)\OpProDlg.obj" \
	"$(INTDIR)\OrteSet.obj" \
	"$(INTDIR)\PreviewDialog.obj" \
	"$(INTDIR)\PrintAnlaDialog.obj" \
	"$(INTDIR)\PrintAnlage.obj" \
	"$(INTDIR)\PrintHandler.obj" \
	"$(INTDIR)\RButton.obj" \
	"$(INTDIR)\RectDlg.obj" \
	"$(INTDIR)\ResiWnd.obj" \
	"$(INTDIR)\SetNF_PG4.obj" \
	"$(INTDIR)\SetOI.obj" \
	"$(INTDIR)\SetOP1.obj" \
	"$(INTDIR)\SetOP2.obj" \
	"$(INTDIR)\SetOP3.obj" \
	"$(INTDIR)\SetOP4.obj" \
	"$(INTDIR)\SetParam.obj" \
	"$(INTDIR)\SetSI.obj" \
	"$(INTDIR)\SetVorlagen.obj" \
	"$(INTDIR)\SetZW_PG1GB.obj" \
	"$(INTDIR)\SetZW_PG2D.obj" \
	"$(INTDIR)\SetZW_PG2H.obj" \
	"$(INTDIR)\SPage1.obj" \
	"$(INTDIR)\SPage2.obj" \
	"$(INTDIR)\StatDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\StrasseSet.obj" \
	"$(INTDIR)\Strings.obj" \
	"$(INTDIR)\SuchPage0.obj" \
	"$(INTDIR)\SuchPage1.obj" \
	"$(INTDIR)\SuchPage2.obj" \
	"$(INTDIR)\SuchPage3.obj" \
	"$(INTDIR)\SuchPage4.obj" \
	"$(INTDIR)\SuchResDlg.obj" \
	"$(INTDIR)\TestDialogBar.obj" \
	"$(INTDIR)\TriDBSet.obj" \
	"$(INTDIR)\VerzSet.obj" \
	"$(INTDIR)\VerzSet2.obj" \
	"$(INTDIR)\ViewPortDlg.obj" \
	"$(INTDIR)\Xstring.obj"

"..\..\..\..\..\Programme\TRiAS\TRiAS\GbmTRiAS.ext" : "$(OUTDIR)" $(DEF_FILE)\
 $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "GbmTRiAS"
# PROP BASE Intermediate_Dir "GbmTRiAS"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "..\..\..\..\..\Programme\TRiAS\TRiAS\GbmTRiAS.ext"\
 "$(OUTDIR)\GbmTRiAS.bsc"

CLEAN : 
	-@erase "$(INTDIR)\About.obj"
	-@erase "$(INTDIR)\About.sbr"
	-@erase "$(INTDIR)\AuxUIOwner.obj"
	-@erase "$(INTDIR)\AuxUIOwner.sbr"
	-@erase "$(INTDIR)\CulcuDlg.obj"
	-@erase "$(INTDIR)\CulcuDlg.sbr"
	-@erase "$(INTDIR)\DeleteDialog.obj"
	-@erase "$(INTDIR)\DeleteDialog.sbr"
	-@erase "$(INTDIR)\DIBAPI.OBJ"
	-@erase "$(INTDIR)\DIBAPI.SBR"
	-@erase "$(INTDIR)\DIBFILE.OBJ"
	-@erase "$(INTDIR)\DIBFILE.SBR"
	-@erase "$(INTDIR)\DLDlg.obj"
	-@erase "$(INTDIR)\DLDlg.sbr"
	-@erase "$(INTDIR)\DlgEditVorlage.obj"
	-@erase "$(INTDIR)\DlgEditVorlage.sbr"
	-@erase "$(INTDIR)\DlgSelPrint.obj"
	-@erase "$(INTDIR)\DlgSelPrint.sbr"
	-@erase "$(INTDIR)\DlgTB.obj"
	-@erase "$(INTDIR)\DlgTB.sbr"
	-@erase "$(INTDIR)\DlgVisu.obj"
	-@erase "$(INTDIR)\DlgVisu.sbr"
	-@erase "$(INTDIR)\DlgZFkt.obj"
	-@erase "$(INTDIR)\DlgZFkt.sbr"
	-@erase "$(INTDIR)\EditIDEDlg.obj"
	-@erase "$(INTDIR)\EditIDEDlg.sbr"
	-@erase "$(INTDIR)\EditPage7.obj"
	-@erase "$(INTDIR)\EditPage7.sbr"
	-@erase "$(INTDIR)\EdPage1.obj"
	-@erase "$(INTDIR)\EdPage1.sbr"
	-@erase "$(INTDIR)\EdPage2.obj"
	-@erase "$(INTDIR)\EdPage2.sbr"
	-@erase "$(INTDIR)\EdPage3.obj"
	-@erase "$(INTDIR)\EdPage3.sbr"
	-@erase "$(INTDIR)\EdPage4.obj"
	-@erase "$(INTDIR)\EdPage4.sbr"
	-@erase "$(INTDIR)\EdPage5.obj"
	-@erase "$(INTDIR)\EdPage5.sbr"
	-@erase "$(INTDIR)\EdPage6.obj"
	-@erase "$(INTDIR)\EdPage6.sbr"
	-@erase "$(INTDIR)\ErfassPrivDlg.obj"
	-@erase "$(INTDIR)\ErfassPrivDlg.sbr"
	-@erase "$(INTDIR)\FlAbgleichDlg.obj"
	-@erase "$(INTDIR)\FlAbgleichDlg.sbr"
	-@erase "$(INTDIR)\GbmTRiAS.obj"
	-@erase "$(INTDIR)\GbmTRiAS.pch"
	-@erase "$(INTDIR)\GbmTRiAS.res"
	-@erase "$(INTDIR)\GbmTRiAS.sbr"
	-@erase "$(INTDIR)\GSTeilenDlg.obj"
	-@erase "$(INTDIR)\GSTeilenDlg.sbr"
	-@erase "$(INTDIR)\InterDialog.obj"
	-@erase "$(INTDIR)\InterDialog.sbr"
	-@erase "$(INTDIR)\MyPropS.obj"
	-@erase "$(INTDIR)\MyPropS.sbr"
	-@erase "$(INTDIR)\NF_OG1.obj"
	-@erase "$(INTDIR)\NF_OG1.sbr"
	-@erase "$(INTDIR)\NF_PG1.obj"
	-@erase "$(INTDIR)\NF_PG1.sbr"
	-@erase "$(INTDIR)\NF_PG1FL.obj"
	-@erase "$(INTDIR)\NF_PG1FL.sbr"
	-@erase "$(INTDIR)\NF_PG1GB.obj"
	-@erase "$(INTDIR)\NF_PG1GB.sbr"
	-@erase "$(INTDIR)\NF_PG2D.obj"
	-@erase "$(INTDIR)\NF_PG2D.sbr"
	-@erase "$(INTDIR)\NF_PG2H.obj"
	-@erase "$(INTDIR)\NF_PG2H.sbr"
	-@erase "$(INTDIR)\Nf_pg3.obj"
	-@erase "$(INTDIR)\Nf_pg3.sbr"
	-@erase "$(INTDIR)\ObjProp.obj"
	-@erase "$(INTDIR)\ObjProp.sbr"
	-@erase "$(INTDIR)\ObjProp2.obj"
	-@erase "$(INTDIR)\ObjProp2.sbr"
	-@erase "$(INTDIR)\OpProDlg.obj"
	-@erase "$(INTDIR)\OpProDlg.sbr"
	-@erase "$(INTDIR)\OrteSet.obj"
	-@erase "$(INTDIR)\OrteSet.sbr"
	-@erase "$(INTDIR)\PreviewDialog.obj"
	-@erase "$(INTDIR)\PreviewDialog.sbr"
	-@erase "$(INTDIR)\PrintAnlaDialog.obj"
	-@erase "$(INTDIR)\PrintAnlaDialog.sbr"
	-@erase "$(INTDIR)\PrintAnlage.obj"
	-@erase "$(INTDIR)\PrintAnlage.sbr"
	-@erase "$(INTDIR)\PrintHandler.obj"
	-@erase "$(INTDIR)\PrintHandler.sbr"
	-@erase "$(INTDIR)\RButton.obj"
	-@erase "$(INTDIR)\RButton.sbr"
	-@erase "$(INTDIR)\RectDlg.obj"
	-@erase "$(INTDIR)\RectDlg.sbr"
	-@erase "$(INTDIR)\ResiWnd.obj"
	-@erase "$(INTDIR)\ResiWnd.sbr"
	-@erase "$(INTDIR)\SetNF_PG4.obj"
	-@erase "$(INTDIR)\SetNF_PG4.sbr"
	-@erase "$(INTDIR)\SetOI.obj"
	-@erase "$(INTDIR)\SetOI.sbr"
	-@erase "$(INTDIR)\SetOP1.obj"
	-@erase "$(INTDIR)\SetOP1.sbr"
	-@erase "$(INTDIR)\SetOP2.obj"
	-@erase "$(INTDIR)\SetOP2.sbr"
	-@erase "$(INTDIR)\SetOP3.obj"
	-@erase "$(INTDIR)\SetOP3.sbr"
	-@erase "$(INTDIR)\SetOP4.obj"
	-@erase "$(INTDIR)\SetOP4.sbr"
	-@erase "$(INTDIR)\SetParam.obj"
	-@erase "$(INTDIR)\SetParam.sbr"
	-@erase "$(INTDIR)\SetSI.obj"
	-@erase "$(INTDIR)\SetSI.sbr"
	-@erase "$(INTDIR)\SetVorlagen.obj"
	-@erase "$(INTDIR)\SetVorlagen.sbr"
	-@erase "$(INTDIR)\SetZW_PG1GB.obj"
	-@erase "$(INTDIR)\SetZW_PG1GB.sbr"
	-@erase "$(INTDIR)\SetZW_PG2D.obj"
	-@erase "$(INTDIR)\SetZW_PG2D.sbr"
	-@erase "$(INTDIR)\SetZW_PG2H.obj"
	-@erase "$(INTDIR)\SetZW_PG2H.sbr"
	-@erase "$(INTDIR)\SPage1.obj"
	-@erase "$(INTDIR)\SPage1.sbr"
	-@erase "$(INTDIR)\SPage2.obj"
	-@erase "$(INTDIR)\SPage2.sbr"
	-@erase "$(INTDIR)\StatDlg.obj"
	-@erase "$(INTDIR)\StatDlg.sbr"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\StdAfx.sbr"
	-@erase "$(INTDIR)\StrasseSet.obj"
	-@erase "$(INTDIR)\StrasseSet.sbr"
	-@erase "$(INTDIR)\Strings.obj"
	-@erase "$(INTDIR)\Strings.sbr"
	-@erase "$(INTDIR)\SuchPage0.obj"
	-@erase "$(INTDIR)\SuchPage0.sbr"
	-@erase "$(INTDIR)\SuchPage1.obj"
	-@erase "$(INTDIR)\SuchPage1.sbr"
	-@erase "$(INTDIR)\SuchPage2.obj"
	-@erase "$(INTDIR)\SuchPage2.sbr"
	-@erase "$(INTDIR)\SuchPage3.obj"
	-@erase "$(INTDIR)\SuchPage3.sbr"
	-@erase "$(INTDIR)\SuchPage4.obj"
	-@erase "$(INTDIR)\SuchPage4.sbr"
	-@erase "$(INTDIR)\SuchResDlg.obj"
	-@erase "$(INTDIR)\SuchResDlg.sbr"
	-@erase "$(INTDIR)\TestDialogBar.obj"
	-@erase "$(INTDIR)\TestDialogBar.sbr"
	-@erase "$(INTDIR)\TriDBSet.obj"
	-@erase "$(INTDIR)\TriDBSet.sbr"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\VerzSet.obj"
	-@erase "$(INTDIR)\VerzSet.sbr"
	-@erase "$(INTDIR)\VerzSet2.obj"
	-@erase "$(INTDIR)\VerzSet2.sbr"
	-@erase "$(INTDIR)\ViewPortDlg.obj"
	-@erase "$(INTDIR)\ViewPortDlg.sbr"
	-@erase "$(INTDIR)\Xstring.obj"
	-@erase "$(INTDIR)\Xstring.sbr"
	-@erase "$(OUTDIR)\GbmTRiAS.bsc"
	-@erase "$(OUTDIR)\GbmTRiAS.exp"
	-@erase "$(OUTDIR)\GbmTRiAS.lib"
	-@erase "..\..\..\..\..\Programme\TRiAS\TRiAS\GbmTRiAS.ext"
	-@erase ".\Color.ebc"
	-@erase ".\GS_Ana.ebc"
	-@erase ".\K2000.ebc"
	-@erase ".\Macro1.ebc"
	-@erase ".\Macro2.ebc"
	-@erase ".\TopoAna.ebc"
	-@erase ".\Visu.ebc"
	-@erase ".\Visu1.ebc"
	-@erase ".\ZF_001.ebc"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MD /W3 /GX /Zi /Od /D "NDEBUG" /D "_SMARTDEBUG" /D "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D "_AFXEXT" /D "__ATL_11_USED__" /D "__ATL_USED__" /D "OS_STL_ASSERT" /D "OS_ALTERNATIVE_STRING_NAMES" /D "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS" /D "ATL_NO_NAMESPACE" /Fr /Yu"stdafx.h" /c
# ADD CPP /nologo /MD /W3 /GX /Zi /Od /I "E:\Toolkit\OT51\Include" /D "NDEBUG" /D "_SMARTDEBUG" /D "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D "_AFXEXT" /D "__ATL_11_USED__" /D "__ATL_USED__" /D "OS_STL_ASSERT" /D "OS_ALTERNATIVE_STRING_NAMES" /D "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS" /D "ATL_NO_NAMESPACE" /Fr /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MD /W3 /GX /Zi /Od /I "E:\Toolkit\OT51\Include" /D "NDEBUG"\
 /D "_SMARTDEBUG" /D "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D\
 "__DEXPROCS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D\
 "_AFXEXT" /D "__ATL_11_USED__" /D "__ATL_USED__" /D "OS_STL_ASSERT" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS"\
 /D "ATL_NO_NAMESPACE" /Fr"$(INTDIR)/" /Fp"$(INTDIR)/GbmTRiAS.pch" /Yu"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.\Debug/
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x407 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x407 /d "NDEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0x407 /fo"$(INTDIR)/GbmTRiAS.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/GbmTRiAS.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\About.sbr" \
	"$(INTDIR)\AuxUIOwner.sbr" \
	"$(INTDIR)\CulcuDlg.sbr" \
	"$(INTDIR)\DeleteDialog.sbr" \
	"$(INTDIR)\DIBAPI.SBR" \
	"$(INTDIR)\DIBFILE.SBR" \
	"$(INTDIR)\DLDlg.sbr" \
	"$(INTDIR)\DlgEditVorlage.sbr" \
	"$(INTDIR)\DlgSelPrint.sbr" \
	"$(INTDIR)\DlgTB.sbr" \
	"$(INTDIR)\DlgVisu.sbr" \
	"$(INTDIR)\DlgZFkt.sbr" \
	"$(INTDIR)\EditIDEDlg.sbr" \
	"$(INTDIR)\EditPage7.sbr" \
	"$(INTDIR)\EdPage1.sbr" \
	"$(INTDIR)\EdPage2.sbr" \
	"$(INTDIR)\EdPage3.sbr" \
	"$(INTDIR)\EdPage4.sbr" \
	"$(INTDIR)\EdPage5.sbr" \
	"$(INTDIR)\EdPage6.sbr" \
	"$(INTDIR)\ErfassPrivDlg.sbr" \
	"$(INTDIR)\FlAbgleichDlg.sbr" \
	"$(INTDIR)\GbmTRiAS.sbr" \
	"$(INTDIR)\GSTeilenDlg.sbr" \
	"$(INTDIR)\InterDialog.sbr" \
	"$(INTDIR)\MyPropS.sbr" \
	"$(INTDIR)\NF_OG1.sbr" \
	"$(INTDIR)\NF_PG1.sbr" \
	"$(INTDIR)\NF_PG1FL.sbr" \
	"$(INTDIR)\NF_PG1GB.sbr" \
	"$(INTDIR)\NF_PG2D.sbr" \
	"$(INTDIR)\NF_PG2H.sbr" \
	"$(INTDIR)\Nf_pg3.sbr" \
	"$(INTDIR)\ObjProp.sbr" \
	"$(INTDIR)\ObjProp2.sbr" \
	"$(INTDIR)\OpProDlg.sbr" \
	"$(INTDIR)\OrteSet.sbr" \
	"$(INTDIR)\PreviewDialog.sbr" \
	"$(INTDIR)\PrintAnlaDialog.sbr" \
	"$(INTDIR)\PrintAnlage.sbr" \
	"$(INTDIR)\PrintHandler.sbr" \
	"$(INTDIR)\RButton.sbr" \
	"$(INTDIR)\RectDlg.sbr" \
	"$(INTDIR)\ResiWnd.sbr" \
	"$(INTDIR)\SetNF_PG4.sbr" \
	"$(INTDIR)\SetOI.sbr" \
	"$(INTDIR)\SetOP1.sbr" \
	"$(INTDIR)\SetOP2.sbr" \
	"$(INTDIR)\SetOP3.sbr" \
	"$(INTDIR)\SetOP4.sbr" \
	"$(INTDIR)\SetParam.sbr" \
	"$(INTDIR)\SetSI.sbr" \
	"$(INTDIR)\SetVorlagen.sbr" \
	"$(INTDIR)\SetZW_PG1GB.sbr" \
	"$(INTDIR)\SetZW_PG2D.sbr" \
	"$(INTDIR)\SetZW_PG2H.sbr" \
	"$(INTDIR)\SPage1.sbr" \
	"$(INTDIR)\SPage2.sbr" \
	"$(INTDIR)\StatDlg.sbr" \
	"$(INTDIR)\StdAfx.sbr" \
	"$(INTDIR)\StrasseSet.sbr" \
	"$(INTDIR)\Strings.sbr" \
	"$(INTDIR)\SuchPage0.sbr" \
	"$(INTDIR)\SuchPage1.sbr" \
	"$(INTDIR)\SuchPage2.sbr" \
	"$(INTDIR)\SuchPage3.sbr" \
	"$(INTDIR)\SuchPage4.sbr" \
	"$(INTDIR)\SuchResDlg.sbr" \
	"$(INTDIR)\TestDialogBar.sbr" \
	"$(INTDIR)\TriDBSet.sbr" \
	"$(INTDIR)\VerzSet.sbr" \
	"$(INTDIR)\VerzSet2.sbr" \
	"$(INTDIR)\ViewPortDlg.sbr" \
	"$(INTDIR)\Xstring.sbr"

"$(OUTDIR)\GbmTRiAS.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 cont32r.lib stdcppr.lib ixtmfr42.lib ot5042r.lib ospace2r.lib /nologo /subsystem:windows /dll /profile /debug /machine:I386 /out:"D:/Programme/TRiAS/TRiAS/GbmTRiAS.ext"
# SUBTRACT BASE LINK32 /verbose /nodefaultlib
# ADD LINK32 cont32r.lib stdcppr.lib ixtmfr42.lib ot51as.lib ospace2r.lib /nologo /subsystem:windows /dll /profile /debug /machine:I386 /out:"D:/Programme/TRiAS/TRiAS/GbmTRiAS.ext"
# SUBTRACT LINK32 /verbose /nodefaultlib
LINK32_FLAGS=cont32r.lib stdcppr.lib ixtmfr42.lib ot51as.lib ospace2r.lib\
 /nologo /subsystem:windows /dll /profile /debug /machine:I386\
 /def:".\GbmTRiAS.def" /out:"D:/Programme/TRiAS/TRiAS/GbmTRiAS.ext"\
 /implib:"$(OUTDIR)/GbmTRiAS.lib" 
DEF_FILE= \
	".\GbmTRiAS.def"
LINK32_OBJS= \
	"$(INTDIR)\About.obj" \
	"$(INTDIR)\AuxUIOwner.obj" \
	"$(INTDIR)\CulcuDlg.obj" \
	"$(INTDIR)\DeleteDialog.obj" \
	"$(INTDIR)\DIBAPI.OBJ" \
	"$(INTDIR)\DIBFILE.OBJ" \
	"$(INTDIR)\DLDlg.obj" \
	"$(INTDIR)\DlgEditVorlage.obj" \
	"$(INTDIR)\DlgSelPrint.obj" \
	"$(INTDIR)\DlgTB.obj" \
	"$(INTDIR)\DlgVisu.obj" \
	"$(INTDIR)\DlgZFkt.obj" \
	"$(INTDIR)\EditIDEDlg.obj" \
	"$(INTDIR)\EditPage7.obj" \
	"$(INTDIR)\EdPage1.obj" \
	"$(INTDIR)\EdPage2.obj" \
	"$(INTDIR)\EdPage3.obj" \
	"$(INTDIR)\EdPage4.obj" \
	"$(INTDIR)\EdPage5.obj" \
	"$(INTDIR)\EdPage6.obj" \
	"$(INTDIR)\ErfassPrivDlg.obj" \
	"$(INTDIR)\FlAbgleichDlg.obj" \
	"$(INTDIR)\GbmTRiAS.obj" \
	"$(INTDIR)\GbmTRiAS.res" \
	"$(INTDIR)\GSTeilenDlg.obj" \
	"$(INTDIR)\InterDialog.obj" \
	"$(INTDIR)\MyPropS.obj" \
	"$(INTDIR)\NF_OG1.obj" \
	"$(INTDIR)\NF_PG1.obj" \
	"$(INTDIR)\NF_PG1FL.obj" \
	"$(INTDIR)\NF_PG1GB.obj" \
	"$(INTDIR)\NF_PG2D.obj" \
	"$(INTDIR)\NF_PG2H.obj" \
	"$(INTDIR)\Nf_pg3.obj" \
	"$(INTDIR)\ObjProp.obj" \
	"$(INTDIR)\ObjProp2.obj" \
	"$(INTDIR)\OpProDlg.obj" \
	"$(INTDIR)\OrteSet.obj" \
	"$(INTDIR)\PreviewDialog.obj" \
	"$(INTDIR)\PrintAnlaDialog.obj" \
	"$(INTDIR)\PrintAnlage.obj" \
	"$(INTDIR)\PrintHandler.obj" \
	"$(INTDIR)\RButton.obj" \
	"$(INTDIR)\RectDlg.obj" \
	"$(INTDIR)\ResiWnd.obj" \
	"$(INTDIR)\SetNF_PG4.obj" \
	"$(INTDIR)\SetOI.obj" \
	"$(INTDIR)\SetOP1.obj" \
	"$(INTDIR)\SetOP2.obj" \
	"$(INTDIR)\SetOP3.obj" \
	"$(INTDIR)\SetOP4.obj" \
	"$(INTDIR)\SetParam.obj" \
	"$(INTDIR)\SetSI.obj" \
	"$(INTDIR)\SetVorlagen.obj" \
	"$(INTDIR)\SetZW_PG1GB.obj" \
	"$(INTDIR)\SetZW_PG2D.obj" \
	"$(INTDIR)\SetZW_PG2H.obj" \
	"$(INTDIR)\SPage1.obj" \
	"$(INTDIR)\SPage2.obj" \
	"$(INTDIR)\StatDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\StrasseSet.obj" \
	"$(INTDIR)\Strings.obj" \
	"$(INTDIR)\SuchPage0.obj" \
	"$(INTDIR)\SuchPage1.obj" \
	"$(INTDIR)\SuchPage2.obj" \
	"$(INTDIR)\SuchPage3.obj" \
	"$(INTDIR)\SuchPage4.obj" \
	"$(INTDIR)\SuchResDlg.obj" \
	"$(INTDIR)\TestDialogBar.obj" \
	"$(INTDIR)\TriDBSet.obj" \
	"$(INTDIR)\VerzSet.obj" \
	"$(INTDIR)\VerzSet2.obj" \
	"$(INTDIR)\ViewPortDlg.obj" \
	"$(INTDIR)\Xstring.obj"

"..\..\..\..\..\Programme\TRiAS\TRiAS\GbmTRiAS.ext" : "$(OUTDIR)" $(DEF_FILE)\
 $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "GbmTRiA0"
# PROP BASE Intermediate_Dir "GbmTRiA0"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
OUTDIR=.\Release
INTDIR=.\Release

ALL : "..\..\..\..\..\Programme\TRiAS\TRiAS\GbmTRiAS.ext"\
 "$(OUTDIR)\GbmTRiAS.bsc"

CLEAN : 
	-@erase "$(INTDIR)\About.obj"
	-@erase "$(INTDIR)\About.sbr"
	-@erase "$(INTDIR)\AuxUIOwner.obj"
	-@erase "$(INTDIR)\AuxUIOwner.sbr"
	-@erase "$(INTDIR)\CulcuDlg.obj"
	-@erase "$(INTDIR)\CulcuDlg.sbr"
	-@erase "$(INTDIR)\DeleteDialog.obj"
	-@erase "$(INTDIR)\DeleteDialog.sbr"
	-@erase "$(INTDIR)\DIBAPI.OBJ"
	-@erase "$(INTDIR)\DIBAPI.SBR"
	-@erase "$(INTDIR)\DIBFILE.OBJ"
	-@erase "$(INTDIR)\DIBFILE.SBR"
	-@erase "$(INTDIR)\DLDlg.obj"
	-@erase "$(INTDIR)\DLDlg.sbr"
	-@erase "$(INTDIR)\DlgEditVorlage.obj"
	-@erase "$(INTDIR)\DlgEditVorlage.sbr"
	-@erase "$(INTDIR)\DlgSelPrint.obj"
	-@erase "$(INTDIR)\DlgSelPrint.sbr"
	-@erase "$(INTDIR)\DlgTB.obj"
	-@erase "$(INTDIR)\DlgTB.sbr"
	-@erase "$(INTDIR)\DlgVisu.obj"
	-@erase "$(INTDIR)\DlgVisu.sbr"
	-@erase "$(INTDIR)\DlgZFkt.obj"
	-@erase "$(INTDIR)\DlgZFkt.sbr"
	-@erase "$(INTDIR)\EditIDEDlg.obj"
	-@erase "$(INTDIR)\EditIDEDlg.sbr"
	-@erase "$(INTDIR)\EditPage7.obj"
	-@erase "$(INTDIR)\EditPage7.sbr"
	-@erase "$(INTDIR)\EdPage1.obj"
	-@erase "$(INTDIR)\EdPage1.sbr"
	-@erase "$(INTDIR)\EdPage2.obj"
	-@erase "$(INTDIR)\EdPage2.sbr"
	-@erase "$(INTDIR)\EdPage3.obj"
	-@erase "$(INTDIR)\EdPage3.sbr"
	-@erase "$(INTDIR)\EdPage4.obj"
	-@erase "$(INTDIR)\EdPage4.sbr"
	-@erase "$(INTDIR)\EdPage5.obj"
	-@erase "$(INTDIR)\EdPage5.sbr"
	-@erase "$(INTDIR)\EdPage6.obj"
	-@erase "$(INTDIR)\EdPage6.sbr"
	-@erase "$(INTDIR)\ErfassPrivDlg.obj"
	-@erase "$(INTDIR)\ErfassPrivDlg.sbr"
	-@erase "$(INTDIR)\FlAbgleichDlg.obj"
	-@erase "$(INTDIR)\FlAbgleichDlg.sbr"
	-@erase "$(INTDIR)\GbmTRiAS.obj"
	-@erase "$(INTDIR)\GbmTRiAS.pch"
	-@erase "$(INTDIR)\GbmTRiAS.res"
	-@erase "$(INTDIR)\GbmTRiAS.sbr"
	-@erase "$(INTDIR)\GSTeilenDlg.obj"
	-@erase "$(INTDIR)\GSTeilenDlg.sbr"
	-@erase "$(INTDIR)\InterDialog.obj"
	-@erase "$(INTDIR)\InterDialog.sbr"
	-@erase "$(INTDIR)\MyPropS.obj"
	-@erase "$(INTDIR)\MyPropS.sbr"
	-@erase "$(INTDIR)\NF_OG1.obj"
	-@erase "$(INTDIR)\NF_OG1.sbr"
	-@erase "$(INTDIR)\NF_PG1.obj"
	-@erase "$(INTDIR)\NF_PG1.sbr"
	-@erase "$(INTDIR)\NF_PG1FL.obj"
	-@erase "$(INTDIR)\NF_PG1FL.sbr"
	-@erase "$(INTDIR)\NF_PG1GB.obj"
	-@erase "$(INTDIR)\NF_PG1GB.sbr"
	-@erase "$(INTDIR)\NF_PG2D.obj"
	-@erase "$(INTDIR)\NF_PG2D.sbr"
	-@erase "$(INTDIR)\NF_PG2H.obj"
	-@erase "$(INTDIR)\NF_PG2H.sbr"
	-@erase "$(INTDIR)\Nf_pg3.obj"
	-@erase "$(INTDIR)\Nf_pg3.sbr"
	-@erase "$(INTDIR)\ObjProp.obj"
	-@erase "$(INTDIR)\ObjProp.sbr"
	-@erase "$(INTDIR)\ObjProp2.obj"
	-@erase "$(INTDIR)\ObjProp2.sbr"
	-@erase "$(INTDIR)\OpProDlg.obj"
	-@erase "$(INTDIR)\OpProDlg.sbr"
	-@erase "$(INTDIR)\OrteSet.obj"
	-@erase "$(INTDIR)\OrteSet.sbr"
	-@erase "$(INTDIR)\PreviewDialog.obj"
	-@erase "$(INTDIR)\PreviewDialog.sbr"
	-@erase "$(INTDIR)\PrintAnlaDialog.obj"
	-@erase "$(INTDIR)\PrintAnlaDialog.sbr"
	-@erase "$(INTDIR)\PrintAnlage.obj"
	-@erase "$(INTDIR)\PrintAnlage.sbr"
	-@erase "$(INTDIR)\PrintHandler.obj"
	-@erase "$(INTDIR)\PrintHandler.sbr"
	-@erase "$(INTDIR)\RButton.obj"
	-@erase "$(INTDIR)\RButton.sbr"
	-@erase "$(INTDIR)\RectDlg.obj"
	-@erase "$(INTDIR)\RectDlg.sbr"
	-@erase "$(INTDIR)\ResiWnd.obj"
	-@erase "$(INTDIR)\ResiWnd.sbr"
	-@erase "$(INTDIR)\SetNF_PG4.obj"
	-@erase "$(INTDIR)\SetNF_PG4.sbr"
	-@erase "$(INTDIR)\SetOI.obj"
	-@erase "$(INTDIR)\SetOI.sbr"
	-@erase "$(INTDIR)\SetOP1.obj"
	-@erase "$(INTDIR)\SetOP1.sbr"
	-@erase "$(INTDIR)\SetOP2.obj"
	-@erase "$(INTDIR)\SetOP2.sbr"
	-@erase "$(INTDIR)\SetOP3.obj"
	-@erase "$(INTDIR)\SetOP3.sbr"
	-@erase "$(INTDIR)\SetOP4.obj"
	-@erase "$(INTDIR)\SetOP4.sbr"
	-@erase "$(INTDIR)\SetParam.obj"
	-@erase "$(INTDIR)\SetParam.sbr"
	-@erase "$(INTDIR)\SetSI.obj"
	-@erase "$(INTDIR)\SetSI.sbr"
	-@erase "$(INTDIR)\SetVorlagen.obj"
	-@erase "$(INTDIR)\SetVorlagen.sbr"
	-@erase "$(INTDIR)\SetZW_PG1GB.obj"
	-@erase "$(INTDIR)\SetZW_PG1GB.sbr"
	-@erase "$(INTDIR)\SetZW_PG2D.obj"
	-@erase "$(INTDIR)\SetZW_PG2D.sbr"
	-@erase "$(INTDIR)\SetZW_PG2H.obj"
	-@erase "$(INTDIR)\SetZW_PG2H.sbr"
	-@erase "$(INTDIR)\SPage1.obj"
	-@erase "$(INTDIR)\SPage1.sbr"
	-@erase "$(INTDIR)\SPage2.obj"
	-@erase "$(INTDIR)\SPage2.sbr"
	-@erase "$(INTDIR)\StatDlg.obj"
	-@erase "$(INTDIR)\StatDlg.sbr"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\StdAfx.sbr"
	-@erase "$(INTDIR)\StrasseSet.obj"
	-@erase "$(INTDIR)\StrasseSet.sbr"
	-@erase "$(INTDIR)\Strings.obj"
	-@erase "$(INTDIR)\Strings.sbr"
	-@erase "$(INTDIR)\SuchPage0.obj"
	-@erase "$(INTDIR)\SuchPage0.sbr"
	-@erase "$(INTDIR)\SuchPage1.obj"
	-@erase "$(INTDIR)\SuchPage1.sbr"
	-@erase "$(INTDIR)\SuchPage2.obj"
	-@erase "$(INTDIR)\SuchPage2.sbr"
	-@erase "$(INTDIR)\SuchPage3.obj"
	-@erase "$(INTDIR)\SuchPage3.sbr"
	-@erase "$(INTDIR)\SuchPage4.obj"
	-@erase "$(INTDIR)\SuchPage4.sbr"
	-@erase "$(INTDIR)\SuchResDlg.obj"
	-@erase "$(INTDIR)\SuchResDlg.sbr"
	-@erase "$(INTDIR)\TestDialogBar.obj"
	-@erase "$(INTDIR)\TestDialogBar.sbr"
	-@erase "$(INTDIR)\TriDBSet.obj"
	-@erase "$(INTDIR)\TriDBSet.sbr"
	-@erase "$(INTDIR)\VerzSet.obj"
	-@erase "$(INTDIR)\VerzSet.sbr"
	-@erase "$(INTDIR)\VerzSet2.obj"
	-@erase "$(INTDIR)\VerzSet2.sbr"
	-@erase "$(INTDIR)\ViewPortDlg.obj"
	-@erase "$(INTDIR)\ViewPortDlg.sbr"
	-@erase "$(INTDIR)\Xstring.obj"
	-@erase "$(INTDIR)\Xstring.sbr"
	-@erase "$(OUTDIR)\GbmTRiAS.bsc"
	-@erase "$(OUTDIR)\GbmTRiAS.exp"
	-@erase "$(OUTDIR)\GbmTRiAS.lib"
	-@erase "..\..\..\..\..\Programme\TRiAS\TRiAS\GbmTRiAS.ext"
	-@erase ".\Color.ebc"
	-@erase ".\GS_Ana.ebc"
	-@erase ".\K2000.ebc"
	-@erase ".\Macro1.ebc"
	-@erase ".\Macro2.ebc"
	-@erase ".\TopoAna.ebc"
	-@erase ".\Visu.ebc"
	-@erase ".\Visu1.ebc"
	-@erase ".\ZF_001.ebc"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MD /W3 /GX /O2 /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D "_AFXEXT" /D "__ATL_11_USED__" /D "__ATL_USED__" /D "OS_STL_ASSERT" /D "OS_ALTERNATIVE_STRING_NAMES" /D "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS" /D "ATL_NO_NAMESPACE" /Fr /Yu"stdafx.h" /c
# ADD CPP /nologo /MD /W3 /GX /O2 /I "E:\Toolkit\OT51\Include" /D "NDEBUG" /D "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D "_AFXEXT" /D "__ATL_11_USED__" /D "__ATL_USED__" /D "OS_STL_ASSERT" /D "OS_ALTERNATIVE_STRING_NAMES" /D "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS" /D "ATL_NO_NAMESPACE" /Fr /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MD /W3 /GX /O2 /I "E:\Toolkit\OT51\Include" /D "NDEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS" /D "_WINDLL" /D\
 "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D "_AFXEXT" /D\
 "__ATL_11_USED__" /D "__ATL_USED__" /D "OS_STL_ASSERT" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS"\
 /D "ATL_NO_NAMESPACE" /Fr"$(INTDIR)/" /Fp"$(INTDIR)/GbmTRiAS.pch" /Yu"stdafx.h"\
 /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\Release/
CPP_SBRS=.\Release/
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x407 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x407 /d "NDEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0x407 /fo"$(INTDIR)/GbmTRiAS.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/GbmTRiAS.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\About.sbr" \
	"$(INTDIR)\AuxUIOwner.sbr" \
	"$(INTDIR)\CulcuDlg.sbr" \
	"$(INTDIR)\DeleteDialog.sbr" \
	"$(INTDIR)\DIBAPI.SBR" \
	"$(INTDIR)\DIBFILE.SBR" \
	"$(INTDIR)\DLDlg.sbr" \
	"$(INTDIR)\DlgEditVorlage.sbr" \
	"$(INTDIR)\DlgSelPrint.sbr" \
	"$(INTDIR)\DlgTB.sbr" \
	"$(INTDIR)\DlgVisu.sbr" \
	"$(INTDIR)\DlgZFkt.sbr" \
	"$(INTDIR)\EditIDEDlg.sbr" \
	"$(INTDIR)\EditPage7.sbr" \
	"$(INTDIR)\EdPage1.sbr" \
	"$(INTDIR)\EdPage2.sbr" \
	"$(INTDIR)\EdPage3.sbr" \
	"$(INTDIR)\EdPage4.sbr" \
	"$(INTDIR)\EdPage5.sbr" \
	"$(INTDIR)\EdPage6.sbr" \
	"$(INTDIR)\ErfassPrivDlg.sbr" \
	"$(INTDIR)\FlAbgleichDlg.sbr" \
	"$(INTDIR)\GbmTRiAS.sbr" \
	"$(INTDIR)\GSTeilenDlg.sbr" \
	"$(INTDIR)\InterDialog.sbr" \
	"$(INTDIR)\MyPropS.sbr" \
	"$(INTDIR)\NF_OG1.sbr" \
	"$(INTDIR)\NF_PG1.sbr" \
	"$(INTDIR)\NF_PG1FL.sbr" \
	"$(INTDIR)\NF_PG1GB.sbr" \
	"$(INTDIR)\NF_PG2D.sbr" \
	"$(INTDIR)\NF_PG2H.sbr" \
	"$(INTDIR)\Nf_pg3.sbr" \
	"$(INTDIR)\ObjProp.sbr" \
	"$(INTDIR)\ObjProp2.sbr" \
	"$(INTDIR)\OpProDlg.sbr" \
	"$(INTDIR)\OrteSet.sbr" \
	"$(INTDIR)\PreviewDialog.sbr" \
	"$(INTDIR)\PrintAnlaDialog.sbr" \
	"$(INTDIR)\PrintAnlage.sbr" \
	"$(INTDIR)\PrintHandler.sbr" \
	"$(INTDIR)\RButton.sbr" \
	"$(INTDIR)\RectDlg.sbr" \
	"$(INTDIR)\ResiWnd.sbr" \
	"$(INTDIR)\SetNF_PG4.sbr" \
	"$(INTDIR)\SetOI.sbr" \
	"$(INTDIR)\SetOP1.sbr" \
	"$(INTDIR)\SetOP2.sbr" \
	"$(INTDIR)\SetOP3.sbr" \
	"$(INTDIR)\SetOP4.sbr" \
	"$(INTDIR)\SetParam.sbr" \
	"$(INTDIR)\SetSI.sbr" \
	"$(INTDIR)\SetVorlagen.sbr" \
	"$(INTDIR)\SetZW_PG1GB.sbr" \
	"$(INTDIR)\SetZW_PG2D.sbr" \
	"$(INTDIR)\SetZW_PG2H.sbr" \
	"$(INTDIR)\SPage1.sbr" \
	"$(INTDIR)\SPage2.sbr" \
	"$(INTDIR)\StatDlg.sbr" \
	"$(INTDIR)\StdAfx.sbr" \
	"$(INTDIR)\StrasseSet.sbr" \
	"$(INTDIR)\Strings.sbr" \
	"$(INTDIR)\SuchPage0.sbr" \
	"$(INTDIR)\SuchPage1.sbr" \
	"$(INTDIR)\SuchPage2.sbr" \
	"$(INTDIR)\SuchPage3.sbr" \
	"$(INTDIR)\SuchPage4.sbr" \
	"$(INTDIR)\SuchResDlg.sbr" \
	"$(INTDIR)\TestDialogBar.sbr" \
	"$(INTDIR)\TriDBSet.sbr" \
	"$(INTDIR)\VerzSet.sbr" \
	"$(INTDIR)\VerzSet2.sbr" \
	"$(INTDIR)\ViewPortDlg.sbr" \
	"$(INTDIR)\Xstring.sbr"

"$(OUTDIR)\GbmTRiAS.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 cont32r.lib stdcppr.lib ixtmfr42.lib ot5042r.lib /nologo /subsystem:windows /dll /machine:I386 /out:"D:/Programme/TRiAS/TRiAS/GbmTRiAS.ext"
# SUBTRACT BASE LINK32 /debug /nodefaultlib
# ADD LINK32 cont32r.lib stdcppr.lib ixtmfr42.lib ot51as.lib /nologo /subsystem:windows /dll /machine:I386 /out:"D:/Programme/TRiAS/TRiAS/GbmTRiAS.ext"
# SUBTRACT LINK32 /debug /nodefaultlib
LINK32_FLAGS=cont32r.lib stdcppr.lib ixtmfr42.lib ot51as.lib /nologo\
 /subsystem:windows /dll /incremental:no /pdb:"$(OUTDIR)/GbmTRiAS.pdb"\
 /machine:I386 /def:".\GbmTRiAS.def"\
 /out:"D:/Programme/TRiAS/TRiAS/GbmTRiAS.ext" /implib:"$(OUTDIR)/GbmTRiAS.lib" 
DEF_FILE= \
	".\GbmTRiAS.def"
LINK32_OBJS= \
	"$(INTDIR)\About.obj" \
	"$(INTDIR)\AuxUIOwner.obj" \
	"$(INTDIR)\CulcuDlg.obj" \
	"$(INTDIR)\DeleteDialog.obj" \
	"$(INTDIR)\DIBAPI.OBJ" \
	"$(INTDIR)\DIBFILE.OBJ" \
	"$(INTDIR)\DLDlg.obj" \
	"$(INTDIR)\DlgEditVorlage.obj" \
	"$(INTDIR)\DlgSelPrint.obj" \
	"$(INTDIR)\DlgTB.obj" \
	"$(INTDIR)\DlgVisu.obj" \
	"$(INTDIR)\DlgZFkt.obj" \
	"$(INTDIR)\EditIDEDlg.obj" \
	"$(INTDIR)\EditPage7.obj" \
	"$(INTDIR)\EdPage1.obj" \
	"$(INTDIR)\EdPage2.obj" \
	"$(INTDIR)\EdPage3.obj" \
	"$(INTDIR)\EdPage4.obj" \
	"$(INTDIR)\EdPage5.obj" \
	"$(INTDIR)\EdPage6.obj" \
	"$(INTDIR)\ErfassPrivDlg.obj" \
	"$(INTDIR)\FlAbgleichDlg.obj" \
	"$(INTDIR)\GbmTRiAS.obj" \
	"$(INTDIR)\GbmTRiAS.res" \
	"$(INTDIR)\GSTeilenDlg.obj" \
	"$(INTDIR)\InterDialog.obj" \
	"$(INTDIR)\MyPropS.obj" \
	"$(INTDIR)\NF_OG1.obj" \
	"$(INTDIR)\NF_PG1.obj" \
	"$(INTDIR)\NF_PG1FL.obj" \
	"$(INTDIR)\NF_PG1GB.obj" \
	"$(INTDIR)\NF_PG2D.obj" \
	"$(INTDIR)\NF_PG2H.obj" \
	"$(INTDIR)\Nf_pg3.obj" \
	"$(INTDIR)\ObjProp.obj" \
	"$(INTDIR)\ObjProp2.obj" \
	"$(INTDIR)\OpProDlg.obj" \
	"$(INTDIR)\OrteSet.obj" \
	"$(INTDIR)\PreviewDialog.obj" \
	"$(INTDIR)\PrintAnlaDialog.obj" \
	"$(INTDIR)\PrintAnlage.obj" \
	"$(INTDIR)\PrintHandler.obj" \
	"$(INTDIR)\RButton.obj" \
	"$(INTDIR)\RectDlg.obj" \
	"$(INTDIR)\ResiWnd.obj" \
	"$(INTDIR)\SetNF_PG4.obj" \
	"$(INTDIR)\SetOI.obj" \
	"$(INTDIR)\SetOP1.obj" \
	"$(INTDIR)\SetOP2.obj" \
	"$(INTDIR)\SetOP3.obj" \
	"$(INTDIR)\SetOP4.obj" \
	"$(INTDIR)\SetParam.obj" \
	"$(INTDIR)\SetSI.obj" \
	"$(INTDIR)\SetVorlagen.obj" \
	"$(INTDIR)\SetZW_PG1GB.obj" \
	"$(INTDIR)\SetZW_PG2D.obj" \
	"$(INTDIR)\SetZW_PG2H.obj" \
	"$(INTDIR)\SPage1.obj" \
	"$(INTDIR)\SPage2.obj" \
	"$(INTDIR)\StatDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\StrasseSet.obj" \
	"$(INTDIR)\Strings.obj" \
	"$(INTDIR)\SuchPage0.obj" \
	"$(INTDIR)\SuchPage1.obj" \
	"$(INTDIR)\SuchPage2.obj" \
	"$(INTDIR)\SuchPage3.obj" \
	"$(INTDIR)\SuchPage4.obj" \
	"$(INTDIR)\SuchResDlg.obj" \
	"$(INTDIR)\TestDialogBar.obj" \
	"$(INTDIR)\TriDBSet.obj" \
	"$(INTDIR)\VerzSet.obj" \
	"$(INTDIR)\VerzSet2.obj" \
	"$(INTDIR)\ViewPortDlg.obj" \
	"$(INTDIR)\Xstring.obj"

"..\..\..\..\..\Programme\TRiAS\TRiAS\GbmTRiAS.ext" : "$(OUTDIR)" $(DEF_FILE)\
 $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "GbmTRiA1"
# PROP BASE Intermediate_Dir "GbmTRiA1"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "..\..\..\..\..\TRiAS\TRiAS32d\GbmTRiAD.ext" "$(OUTDIR)\GbmTRiAS.bsc"

CLEAN : 
	-@erase "$(INTDIR)\About.obj"
	-@erase "$(INTDIR)\About.sbr"
	-@erase "$(INTDIR)\AuxUIOwner.obj"
	-@erase "$(INTDIR)\AuxUIOwner.sbr"
	-@erase "$(INTDIR)\CulcuDlg.obj"
	-@erase "$(INTDIR)\CulcuDlg.sbr"
	-@erase "$(INTDIR)\DeleteDialog.obj"
	-@erase "$(INTDIR)\DeleteDialog.sbr"
	-@erase "$(INTDIR)\DIBAPI.OBJ"
	-@erase "$(INTDIR)\DIBAPI.SBR"
	-@erase "$(INTDIR)\DIBFILE.OBJ"
	-@erase "$(INTDIR)\DIBFILE.SBR"
	-@erase "$(INTDIR)\DLDlg.obj"
	-@erase "$(INTDIR)\DLDlg.sbr"
	-@erase "$(INTDIR)\DlgEditVorlage.obj"
	-@erase "$(INTDIR)\DlgEditVorlage.sbr"
	-@erase "$(INTDIR)\DlgSelPrint.obj"
	-@erase "$(INTDIR)\DlgSelPrint.sbr"
	-@erase "$(INTDIR)\DlgTB.obj"
	-@erase "$(INTDIR)\DlgTB.sbr"
	-@erase "$(INTDIR)\DlgVisu.obj"
	-@erase "$(INTDIR)\DlgVisu.sbr"
	-@erase "$(INTDIR)\DlgZFkt.obj"
	-@erase "$(INTDIR)\DlgZFkt.sbr"
	-@erase "$(INTDIR)\EditIDEDlg.obj"
	-@erase "$(INTDIR)\EditIDEDlg.sbr"
	-@erase "$(INTDIR)\EditPage7.obj"
	-@erase "$(INTDIR)\EditPage7.sbr"
	-@erase "$(INTDIR)\EdPage1.obj"
	-@erase "$(INTDIR)\EdPage1.sbr"
	-@erase "$(INTDIR)\EdPage2.obj"
	-@erase "$(INTDIR)\EdPage2.sbr"
	-@erase "$(INTDIR)\EdPage3.obj"
	-@erase "$(INTDIR)\EdPage3.sbr"
	-@erase "$(INTDIR)\EdPage4.obj"
	-@erase "$(INTDIR)\EdPage4.sbr"
	-@erase "$(INTDIR)\EdPage5.obj"
	-@erase "$(INTDIR)\EdPage5.sbr"
	-@erase "$(INTDIR)\EdPage6.obj"
	-@erase "$(INTDIR)\EdPage6.sbr"
	-@erase "$(INTDIR)\ErfassPrivDlg.obj"
	-@erase "$(INTDIR)\ErfassPrivDlg.sbr"
	-@erase "$(INTDIR)\FlAbgleichDlg.obj"
	-@erase "$(INTDIR)\FlAbgleichDlg.sbr"
	-@erase "$(INTDIR)\GbmTRiAS.obj"
	-@erase "$(INTDIR)\GbmTRiAS.pch"
	-@erase "$(INTDIR)\GbmTRiAS.res"
	-@erase "$(INTDIR)\GbmTRiAS.sbr"
	-@erase "$(INTDIR)\GSTeilenDlg.obj"
	-@erase "$(INTDIR)\GSTeilenDlg.sbr"
	-@erase "$(INTDIR)\InterDialog.obj"
	-@erase "$(INTDIR)\InterDialog.sbr"
	-@erase "$(INTDIR)\MyPropS.obj"
	-@erase "$(INTDIR)\MyPropS.sbr"
	-@erase "$(INTDIR)\NF_OG1.obj"
	-@erase "$(INTDIR)\NF_OG1.sbr"
	-@erase "$(INTDIR)\NF_PG1.obj"
	-@erase "$(INTDIR)\NF_PG1.sbr"
	-@erase "$(INTDIR)\NF_PG1FL.obj"
	-@erase "$(INTDIR)\NF_PG1FL.sbr"
	-@erase "$(INTDIR)\NF_PG1GB.obj"
	-@erase "$(INTDIR)\NF_PG1GB.sbr"
	-@erase "$(INTDIR)\NF_PG2D.obj"
	-@erase "$(INTDIR)\NF_PG2D.sbr"
	-@erase "$(INTDIR)\NF_PG2H.obj"
	-@erase "$(INTDIR)\NF_PG2H.sbr"
	-@erase "$(INTDIR)\Nf_pg3.obj"
	-@erase "$(INTDIR)\Nf_pg3.sbr"
	-@erase "$(INTDIR)\ObjProp.obj"
	-@erase "$(INTDIR)\ObjProp.sbr"
	-@erase "$(INTDIR)\ObjProp2.obj"
	-@erase "$(INTDIR)\ObjProp2.sbr"
	-@erase "$(INTDIR)\OpProDlg.obj"
	-@erase "$(INTDIR)\OpProDlg.sbr"
	-@erase "$(INTDIR)\OrteSet.obj"
	-@erase "$(INTDIR)\OrteSet.sbr"
	-@erase "$(INTDIR)\PreviewDialog.obj"
	-@erase "$(INTDIR)\PreviewDialog.sbr"
	-@erase "$(INTDIR)\PrintAnlaDialog.obj"
	-@erase "$(INTDIR)\PrintAnlaDialog.sbr"
	-@erase "$(INTDIR)\PrintAnlage.obj"
	-@erase "$(INTDIR)\PrintAnlage.sbr"
	-@erase "$(INTDIR)\PrintHandler.obj"
	-@erase "$(INTDIR)\PrintHandler.sbr"
	-@erase "$(INTDIR)\RButton.obj"
	-@erase "$(INTDIR)\RButton.sbr"
	-@erase "$(INTDIR)\RectDlg.obj"
	-@erase "$(INTDIR)\RectDlg.sbr"
	-@erase "$(INTDIR)\ResiWnd.obj"
	-@erase "$(INTDIR)\ResiWnd.sbr"
	-@erase "$(INTDIR)\SetNF_PG4.obj"
	-@erase "$(INTDIR)\SetNF_PG4.sbr"
	-@erase "$(INTDIR)\SetOI.obj"
	-@erase "$(INTDIR)\SetOI.sbr"
	-@erase "$(INTDIR)\SetOP1.obj"
	-@erase "$(INTDIR)\SetOP1.sbr"
	-@erase "$(INTDIR)\SetOP2.obj"
	-@erase "$(INTDIR)\SetOP2.sbr"
	-@erase "$(INTDIR)\SetOP3.obj"
	-@erase "$(INTDIR)\SetOP3.sbr"
	-@erase "$(INTDIR)\SetOP4.obj"
	-@erase "$(INTDIR)\SetOP4.sbr"
	-@erase "$(INTDIR)\SetParam.obj"
	-@erase "$(INTDIR)\SetParam.sbr"
	-@erase "$(INTDIR)\SetSI.obj"
	-@erase "$(INTDIR)\SetSI.sbr"
	-@erase "$(INTDIR)\SetVorlagen.obj"
	-@erase "$(INTDIR)\SetVorlagen.sbr"
	-@erase "$(INTDIR)\SetZW_PG1GB.obj"
	-@erase "$(INTDIR)\SetZW_PG1GB.sbr"
	-@erase "$(INTDIR)\SetZW_PG2D.obj"
	-@erase "$(INTDIR)\SetZW_PG2D.sbr"
	-@erase "$(INTDIR)\SetZW_PG2H.obj"
	-@erase "$(INTDIR)\SetZW_PG2H.sbr"
	-@erase "$(INTDIR)\SPage1.obj"
	-@erase "$(INTDIR)\SPage1.sbr"
	-@erase "$(INTDIR)\SPage2.obj"
	-@erase "$(INTDIR)\SPage2.sbr"
	-@erase "$(INTDIR)\StatDlg.obj"
	-@erase "$(INTDIR)\StatDlg.sbr"
	-@erase "$(INTDIR)\StdAfx.obj"
	-@erase "$(INTDIR)\StdAfx.sbr"
	-@erase "$(INTDIR)\StrasseSet.obj"
	-@erase "$(INTDIR)\StrasseSet.sbr"
	-@erase "$(INTDIR)\Strings.obj"
	-@erase "$(INTDIR)\Strings.sbr"
	-@erase "$(INTDIR)\SuchPage0.obj"
	-@erase "$(INTDIR)\SuchPage0.sbr"
	-@erase "$(INTDIR)\SuchPage1.obj"
	-@erase "$(INTDIR)\SuchPage1.sbr"
	-@erase "$(INTDIR)\SuchPage2.obj"
	-@erase "$(INTDIR)\SuchPage2.sbr"
	-@erase "$(INTDIR)\SuchPage3.obj"
	-@erase "$(INTDIR)\SuchPage3.sbr"
	-@erase "$(INTDIR)\SuchPage4.obj"
	-@erase "$(INTDIR)\SuchPage4.sbr"
	-@erase "$(INTDIR)\SuchResDlg.obj"
	-@erase "$(INTDIR)\SuchResDlg.sbr"
	-@erase "$(INTDIR)\TestDialogBar.obj"
	-@erase "$(INTDIR)\TestDialogBar.sbr"
	-@erase "$(INTDIR)\TriDBSet.obj"
	-@erase "$(INTDIR)\TriDBSet.sbr"
	-@erase "$(INTDIR)\vc40.idb"
	-@erase "$(INTDIR)\vc40.pdb"
	-@erase "$(INTDIR)\VerzSet.obj"
	-@erase "$(INTDIR)\VerzSet.sbr"
	-@erase "$(INTDIR)\VerzSet2.obj"
	-@erase "$(INTDIR)\VerzSet2.sbr"
	-@erase "$(INTDIR)\ViewPortDlg.obj"
	-@erase "$(INTDIR)\ViewPortDlg.sbr"
	-@erase "$(INTDIR)\Xstring.obj"
	-@erase "$(INTDIR)\Xstring.sbr"
	-@erase "$(OUTDIR)\GbmTRiAD.exp"
	-@erase "$(OUTDIR)\GbmTRiAD.lib"
	-@erase "$(OUTDIR)\GbmTRiAD.pdb"
	-@erase "$(OUTDIR)\GbmTRiAS.bsc"
	-@erase "..\..\..\..\..\TRiAS\TRiAS32d\GbmTRiAD.ext"
	-@erase "..\..\..\..\..\TRiAS\TRiAS32d\GbmTRiAD.ilk"
	-@erase ".\Color.ebc"
	-@erase ".\GS_Ana.ebc"
	-@erase ".\K2000.ebc"
	-@erase ".\Macro1.ebc"
	-@erase ".\Macro2.ebc"
	-@erase ".\TopoAna.ebc"
	-@erase ".\Visu.ebc"
	-@erase ".\Visu1.ebc"
	-@erase ".\ZF_001.ebc"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D "_AFXEXT" /D "__ATL_11_USED__" /D "__ATL_USED__" /D "OS_STL_ASSERT" /D "OS_ALTERNATIVE_STRING_NAMES" /D "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS" /D "ATL_NO_NAMESPACE" /FR /Yu"stdafx.h" /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /I "E:\Toolkit\OT51\Include" /D "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS" /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D "_AFXEXT" /D "__ATL_11_USED__" /D "__ATL_USED__" /D "OS_STL_ASSERT" /D "OS_ALTERNATIVE_STRING_NAMES" /D "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS" /D "ATL_NO_NAMESPACE" /FR /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /Zi /Od /I "E:\Toolkit\OT51\Include" /D\
 "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS" /D\
 "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D "_AFXEXT" /D\
 "__ATL_11_USED__" /D "__ATL_USED__" /D "OS_STL_ASSERT" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS"\
 /D "ATL_NO_NAMESPACE" /FR"$(INTDIR)/" /Fp"$(INTDIR)/GbmTRiAS.pch" /Yu"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.\Debug/
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0x407 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x407 /d "_DEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0x407 /fo"$(INTDIR)/GbmTRiAS.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/GbmTRiAS.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\About.sbr" \
	"$(INTDIR)\AuxUIOwner.sbr" \
	"$(INTDIR)\CulcuDlg.sbr" \
	"$(INTDIR)\DeleteDialog.sbr" \
	"$(INTDIR)\DIBAPI.SBR" \
	"$(INTDIR)\DIBFILE.SBR" \
	"$(INTDIR)\DLDlg.sbr" \
	"$(INTDIR)\DlgEditVorlage.sbr" \
	"$(INTDIR)\DlgSelPrint.sbr" \
	"$(INTDIR)\DlgTB.sbr" \
	"$(INTDIR)\DlgVisu.sbr" \
	"$(INTDIR)\DlgZFkt.sbr" \
	"$(INTDIR)\EditIDEDlg.sbr" \
	"$(INTDIR)\EditPage7.sbr" \
	"$(INTDIR)\EdPage1.sbr" \
	"$(INTDIR)\EdPage2.sbr" \
	"$(INTDIR)\EdPage3.sbr" \
	"$(INTDIR)\EdPage4.sbr" \
	"$(INTDIR)\EdPage5.sbr" \
	"$(INTDIR)\EdPage6.sbr" \
	"$(INTDIR)\ErfassPrivDlg.sbr" \
	"$(INTDIR)\FlAbgleichDlg.sbr" \
	"$(INTDIR)\GbmTRiAS.sbr" \
	"$(INTDIR)\GSTeilenDlg.sbr" \
	"$(INTDIR)\InterDialog.sbr" \
	"$(INTDIR)\MyPropS.sbr" \
	"$(INTDIR)\NF_OG1.sbr" \
	"$(INTDIR)\NF_PG1.sbr" \
	"$(INTDIR)\NF_PG1FL.sbr" \
	"$(INTDIR)\NF_PG1GB.sbr" \
	"$(INTDIR)\NF_PG2D.sbr" \
	"$(INTDIR)\NF_PG2H.sbr" \
	"$(INTDIR)\Nf_pg3.sbr" \
	"$(INTDIR)\ObjProp.sbr" \
	"$(INTDIR)\ObjProp2.sbr" \
	"$(INTDIR)\OpProDlg.sbr" \
	"$(INTDIR)\OrteSet.sbr" \
	"$(INTDIR)\PreviewDialog.sbr" \
	"$(INTDIR)\PrintAnlaDialog.sbr" \
	"$(INTDIR)\PrintAnlage.sbr" \
	"$(INTDIR)\PrintHandler.sbr" \
	"$(INTDIR)\RButton.sbr" \
	"$(INTDIR)\RectDlg.sbr" \
	"$(INTDIR)\ResiWnd.sbr" \
	"$(INTDIR)\SetNF_PG4.sbr" \
	"$(INTDIR)\SetOI.sbr" \
	"$(INTDIR)\SetOP1.sbr" \
	"$(INTDIR)\SetOP2.sbr" \
	"$(INTDIR)\SetOP3.sbr" \
	"$(INTDIR)\SetOP4.sbr" \
	"$(INTDIR)\SetParam.sbr" \
	"$(INTDIR)\SetSI.sbr" \
	"$(INTDIR)\SetVorlagen.sbr" \
	"$(INTDIR)\SetZW_PG1GB.sbr" \
	"$(INTDIR)\SetZW_PG2D.sbr" \
	"$(INTDIR)\SetZW_PG2H.sbr" \
	"$(INTDIR)\SPage1.sbr" \
	"$(INTDIR)\SPage2.sbr" \
	"$(INTDIR)\StatDlg.sbr" \
	"$(INTDIR)\StdAfx.sbr" \
	"$(INTDIR)\StrasseSet.sbr" \
	"$(INTDIR)\Strings.sbr" \
	"$(INTDIR)\SuchPage0.sbr" \
	"$(INTDIR)\SuchPage1.sbr" \
	"$(INTDIR)\SuchPage2.sbr" \
	"$(INTDIR)\SuchPage3.sbr" \
	"$(INTDIR)\SuchPage4.sbr" \
	"$(INTDIR)\SuchResDlg.sbr" \
	"$(INTDIR)\TestDialogBar.sbr" \
	"$(INTDIR)\TriDBSet.sbr" \
	"$(INTDIR)\VerzSet.sbr" \
	"$(INTDIR)\VerzSet2.sbr" \
	"$(INTDIR)\ViewPortDlg.sbr" \
	"$(INTDIR)\Xstring.sbr"

"$(OUTDIR)\GbmTRiAS.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 cont32d.lib stdcppd.lib ot5042d.lib ixtmfd42.lib /nologo /subsystem:windows /dll /debug /machine:I386 /out:"d:/TRiAS/TRiAS32d/GbmTRiAD.ext"
# SUBTRACT BASE LINK32 /verbose /profile /pdb:none /nodefaultlib
# ADD LINK32 cont32d.lib stdcppd.lib ot51asd.lib ixtmfd42.lib /nologo /subsystem:windows /dll /debug /machine:I386 /out:"d:/TRiAS/TRiAS32d/GbmTRiAD.ext"
# SUBTRACT LINK32 /verbose /profile /pdb:none /nodefaultlib
LINK32_FLAGS=cont32d.lib stdcppd.lib ot51asd.lib ixtmfd42.lib /nologo\
 /subsystem:windows /dll /incremental:yes /pdb:"$(OUTDIR)/GbmTRiAD.pdb" /debug\
 /machine:I386 /def:".\GbmTRiAS.def" /out:"d:/TRiAS/TRiAS32d/GbmTRiAD.ext"\
 /implib:"$(OUTDIR)/GbmTRiAD.lib" 
DEF_FILE= \
	".\GbmTRiAS.def"
LINK32_OBJS= \
	"$(INTDIR)\About.obj" \
	"$(INTDIR)\AuxUIOwner.obj" \
	"$(INTDIR)\CulcuDlg.obj" \
	"$(INTDIR)\DeleteDialog.obj" \
	"$(INTDIR)\DIBAPI.OBJ" \
	"$(INTDIR)\DIBFILE.OBJ" \
	"$(INTDIR)\DLDlg.obj" \
	"$(INTDIR)\DlgEditVorlage.obj" \
	"$(INTDIR)\DlgSelPrint.obj" \
	"$(INTDIR)\DlgTB.obj" \
	"$(INTDIR)\DlgVisu.obj" \
	"$(INTDIR)\DlgZFkt.obj" \
	"$(INTDIR)\EditIDEDlg.obj" \
	"$(INTDIR)\EditPage7.obj" \
	"$(INTDIR)\EdPage1.obj" \
	"$(INTDIR)\EdPage2.obj" \
	"$(INTDIR)\EdPage3.obj" \
	"$(INTDIR)\EdPage4.obj" \
	"$(INTDIR)\EdPage5.obj" \
	"$(INTDIR)\EdPage6.obj" \
	"$(INTDIR)\ErfassPrivDlg.obj" \
	"$(INTDIR)\FlAbgleichDlg.obj" \
	"$(INTDIR)\GbmTRiAS.obj" \
	"$(INTDIR)\GbmTRiAS.res" \
	"$(INTDIR)\GSTeilenDlg.obj" \
	"$(INTDIR)\InterDialog.obj" \
	"$(INTDIR)\MyPropS.obj" \
	"$(INTDIR)\NF_OG1.obj" \
	"$(INTDIR)\NF_PG1.obj" \
	"$(INTDIR)\NF_PG1FL.obj" \
	"$(INTDIR)\NF_PG1GB.obj" \
	"$(INTDIR)\NF_PG2D.obj" \
	"$(INTDIR)\NF_PG2H.obj" \
	"$(INTDIR)\Nf_pg3.obj" \
	"$(INTDIR)\ObjProp.obj" \
	"$(INTDIR)\ObjProp2.obj" \
	"$(INTDIR)\OpProDlg.obj" \
	"$(INTDIR)\OrteSet.obj" \
	"$(INTDIR)\PreviewDialog.obj" \
	"$(INTDIR)\PrintAnlaDialog.obj" \
	"$(INTDIR)\PrintAnlage.obj" \
	"$(INTDIR)\PrintHandler.obj" \
	"$(INTDIR)\RButton.obj" \
	"$(INTDIR)\RectDlg.obj" \
	"$(INTDIR)\ResiWnd.obj" \
	"$(INTDIR)\SetNF_PG4.obj" \
	"$(INTDIR)\SetOI.obj" \
	"$(INTDIR)\SetOP1.obj" \
	"$(INTDIR)\SetOP2.obj" \
	"$(INTDIR)\SetOP3.obj" \
	"$(INTDIR)\SetOP4.obj" \
	"$(INTDIR)\SetParam.obj" \
	"$(INTDIR)\SetSI.obj" \
	"$(INTDIR)\SetVorlagen.obj" \
	"$(INTDIR)\SetZW_PG1GB.obj" \
	"$(INTDIR)\SetZW_PG2D.obj" \
	"$(INTDIR)\SetZW_PG2H.obj" \
	"$(INTDIR)\SPage1.obj" \
	"$(INTDIR)\SPage2.obj" \
	"$(INTDIR)\StatDlg.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\StrasseSet.obj" \
	"$(INTDIR)\Strings.obj" \
	"$(INTDIR)\SuchPage0.obj" \
	"$(INTDIR)\SuchPage1.obj" \
	"$(INTDIR)\SuchPage2.obj" \
	"$(INTDIR)\SuchPage3.obj" \
	"$(INTDIR)\SuchPage4.obj" \
	"$(INTDIR)\SuchResDlg.obj" \
	"$(INTDIR)\TestDialogBar.obj" \
	"$(INTDIR)\TriDBSet.obj" \
	"$(INTDIR)\VerzSet.obj" \
	"$(INTDIR)\VerzSet2.obj" \
	"$(INTDIR)\ViewPortDlg.obj" \
	"$(INTDIR)\Xstring.obj"

"..\..\..\..\..\TRiAS\TRiAS32d\GbmTRiAD.ext" : "$(OUTDIR)" $(DEF_FILE)\
 $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

################################################################################
# Begin Target

# Name "GbmTRiAS - Win32 Release"
# Name "GbmTRiAS - Win32 Debug"
# Name "GbmTRiAS - Win32 SmartDebug"
# Name "GbmTRiAS - Win32 SmartDebug_210"
# Name "GbmTRiAS - Win32 Release_210"
# Name "GbmTRiAS - Win32 Debug_210"

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\ReadMe.txt

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\GbmTRiAS.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_GBMTR=\
	"..\..\..\..\INCLUDE.OT5\SWINFRM.H"\
	"..\..\..\Util\ResiWnd.h"\
	".\About.h"\
	".\AuxUIOwner.h"\
	".\DIBAPI.H"\
	".\DLDlg.h"\
	".\DlgEditVorlage.h"\
	".\DlgSelPrint.h"\
	".\DlgTB.h"\
	".\DlgVisu.h"\
	".\DlgZFkt.h"\
	".\EditIDEDlg.h"\
	".\FlAbgleichDlg.h"\
	".\Gbmguid.h"\
	".\GbmTRiAS.h"\
	".\InterDialog.h"\
	".\MyPropS.h"\
	".\OpProDlg.h"\
	".\PreviewDialog.h"\
	".\PrintAnlaDialog.h"\
	".\PrintAnlage.h"\
	".\PrintHandler.h"\
	".\RegKey.h"\
	".\SetVorlagen.h"\
	".\SPage1.h"\
	".\SPage2.h"\
	".\StdAfx.h"\
	".\VERSIO16.H"\
	".\VERSIO32.H"\
	".\VERSION.H"\
	"\work\Include.ot5\sectlf.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\DIRISOLE.H"\
	{$(INCLUDE)}"\EONRGUID.H"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\ITOOLBAR.H"\
	{$(INCLUDE)}"\OCIDL.H"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\std\map"\
	{$(INCLUDE)}"\STATGUID.H"\
	{$(INCLUDE)}"\TOOLGUID.H"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\TRiASHelper_i.c"\
	{$(INCLUDE)}"\TRIASTLB.H"\
	{$(INCLUDE)}"\XTSNGUID.H"\
	

"$(INTDIR)\GbmTRiAS.obj" : $(SOURCE) $(DEP_CPP_GBMTR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\GbmTRiAS.sbr" : $(SOURCE) $(DEP_CPP_GBMTR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_GBMTR=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\..\INCLUDE.OT5\SWINFRM.H"\
	"..\..\..\Util\ResiWnd.h"\
	"..\..\..\Util\xstring.h"\
	".\About.h"\
	".\AuxUIOwner.h"\
	".\DIBAPI.H"\
	".\DLDlg.h"\
	".\DlgEditVorlage.h"\
	".\DlgSelPrint.h"\
	".\DlgTB.h"\
	".\DlgVisu.h"\
	".\DlgZFkt.h"\
	".\EditIDEDlg.h"\
	".\FlAbgleichDlg.h"\
	".\Gbmguid.h"\
	".\GbmTRiAS.h"\
	".\InterDialog.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OpProDlg.h"\
	".\OrteSet.h"\
	".\PreviewDialog.h"\
	".\PrintAnlaDialog.h"\
	".\PrintAnlage.h"\
	".\PrintHandler.h"\
	".\RegKey.h"\
	".\SetNF_PG4.h"\
	".\SetVorlagen.h"\
	".\SPage1.h"\
	".\SPage2.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VERSIO16.H"\
	".\VERSIO32.H"\
	".\VERSION.H"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	"\work\Include.ot5\sectlf.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\DIRISOLE.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\EONRGUID.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\ITOOLBAR.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OCIDL.H"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\except\config.h"\
	{$(INCLUDE)}"\Ospace\except\except.h"\
	{$(INCLUDE)}"\Ospace\except\stdex.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\map"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\Ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\function.h"\
	{$(INCLUDE)}"\Ospace\stl\internal.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\map.cc"\
	{$(INCLUDE)}"\Ospace\stl\map.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\Ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\STATGUID.H"\
	{$(INCLUDE)}"\TOOLGUID.H"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\TRiASHelper_i.c"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\TRIASTLB.H"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNGUID.H"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\GbmTRiAS.obj" : $(SOURCE) $(DEP_CPP_GBMTR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\GbmTRiAS.sbr" : $(SOURCE) $(DEP_CPP_GBMTR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_GBMTR=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\..\INCLUDE.OT5\SWINFRM.H"\
	"..\..\..\Util\ResiWnd.h"\
	"..\..\..\Util\xstring.h"\
	".\About.h"\
	".\AuxUIOwner.h"\
	".\DIBAPI.H"\
	".\DLDlg.h"\
	".\DlgEditVorlage.h"\
	".\DlgSelPrint.h"\
	".\DlgTB.h"\
	".\DlgVisu.h"\
	".\DlgZFkt.h"\
	".\EditIDEDlg.h"\
	".\FlAbgleichDlg.h"\
	".\Gbmguid.h"\
	".\GbmTRiAS.h"\
	".\InterDialog.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OpProDlg.h"\
	".\OrteSet.h"\
	".\PreviewDialog.h"\
	".\PrintAnlaDialog.h"\
	".\PrintAnlage.h"\
	".\PrintHandler.h"\
	".\RegKey.h"\
	".\SetNF_PG4.h"\
	".\SetVorlagen.h"\
	".\SPage1.h"\
	".\SPage2.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VERSIO16.H"\
	".\VERSIO32.H"\
	".\VERSION.H"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	"\work\Include.ot5\sectlf.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\DIRISOLE.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\EONRGUID.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\ITOOLBAR.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OCIDL.H"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\except\config.h"\
	{$(INCLUDE)}"\Ospace\except\except.h"\
	{$(INCLUDE)}"\Ospace\except\stdex.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\map"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\Ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\function.h"\
	{$(INCLUDE)}"\Ospace\stl\internal.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\map.cc"\
	{$(INCLUDE)}"\Ospace\stl\map.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\Ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\STATGUID.H"\
	{$(INCLUDE)}"\TOOLGUID.H"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\TRiASHelper_i.c"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\TRIASTLB.H"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNGUID.H"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\GbmTRiAS.obj" : $(SOURCE) $(DEP_CPP_GBMTR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\GbmTRiAS.sbr" : $(SOURCE) $(DEP_CPP_GBMTR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_GBMTR=\
	"..\..\..\Util\ResiWnd.h"\
	"..\..\..\Util\xstring.h"\
	".\About.h"\
	".\AuxUIOwner.h"\
	".\DIBAPI.H"\
	".\DLDlg.h"\
	".\DlgEditVorlage.h"\
	".\DlgSelPrint.h"\
	".\DlgTB.h"\
	".\DlgVisu.h"\
	".\DlgZFkt.h"\
	".\EditIDEDlg.h"\
	".\FlAbgleichDlg.h"\
	".\Gbmguid.h"\
	".\GbmTRiAS.h"\
	".\InterDialog.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OpProDlg.h"\
	".\OrteSet.h"\
	".\PreviewDialog.h"\
	".\PrintAnlaDialog.h"\
	".\PrintAnlage.h"\
	".\PrintHandler.h"\
	".\RegKey.h"\
	".\SetNF_PG4.h"\
	".\SetVorlagen.h"\
	".\SPage1.h"\
	".\SPage2.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VERSIO16.H"\
	".\VERSIO32.H"\
	".\VERSION.H"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\sectlf.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\swinfrm.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\DIRISOLE.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\EONRGUID.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\ITOOLBAR.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OCIDL.H"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\except\config.h"\
	{$(INCLUDE)}"\Ospace\except\except.h"\
	{$(INCLUDE)}"\Ospace\except\stdex.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\map"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\Ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\function.h"\
	{$(INCLUDE)}"\Ospace\stl\internal.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\map.cc"\
	{$(INCLUDE)}"\Ospace\stl\map.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\Ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\STATGUID.H"\
	{$(INCLUDE)}"\TOOLGUID.H"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\TRiASHelper_i.c"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\TRIASTLB.H"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNGUID.H"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_GBMTR=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\GbmTRiAS.obj" : $(SOURCE) $(DEP_CPP_GBMTR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\GbmTRiAS.sbr" : $(SOURCE) $(DEP_CPP_GBMTR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

DEP_CPP_GBMTR=\
	"..\..\..\Util\ResiWnd.h"\
	"..\..\..\Util\xstring.h"\
	".\About.h"\
	".\AuxUIOwner.h"\
	".\DIBAPI.H"\
	".\DLDlg.h"\
	".\DlgEditVorlage.h"\
	".\DlgSelPrint.h"\
	".\DlgTB.h"\
	".\DlgVisu.h"\
	".\DlgZFkt.h"\
	".\EditIDEDlg.h"\
	".\FlAbgleichDlg.h"\
	".\Gbmguid.h"\
	".\GbmTRiAS.h"\
	".\InterDialog.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OpProDlg.h"\
	".\OrteSet.h"\
	".\PreviewDialog.h"\
	".\PrintAnlaDialog.h"\
	".\PrintAnlage.h"\
	".\PrintHandler.h"\
	".\RegKey.h"\
	".\SetNF_PG4.h"\
	".\SetVorlagen.h"\
	".\SPage1.h"\
	".\SPage2.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VERSIO16.H"\
	".\VERSIO32.H"\
	".\VERSION.H"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\sectlf.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\swinfrm.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\DIRISOLE.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\EONRGUID.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\ITOOLBAR.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OCIDL.H"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\except\config.h"\
	{$(INCLUDE)}"\Ospace\except\except.h"\
	{$(INCLUDE)}"\Ospace\except\stdex.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\map"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\Ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\function.h"\
	{$(INCLUDE)}"\Ospace\stl\internal.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\map.cc"\
	{$(INCLUDE)}"\Ospace\stl\map.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\Ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\STATGUID.H"\
	{$(INCLUDE)}"\TOOLGUID.H"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\TRiASHelper_i.c"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\TRIASTLB.H"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNGUID.H"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_GBMTR=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\GbmTRiAS.obj" : $(SOURCE) $(DEP_CPP_GBMTR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\GbmTRiAS.sbr" : $(SOURCE) $(DEP_CPP_GBMTR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

DEP_CPP_GBMTR=\
	"..\..\..\Util\ResiWnd.h"\
	"..\..\..\Util\xstring.h"\
	".\About.h"\
	".\AuxUIOwner.h"\
	".\DIBAPI.H"\
	".\DLDlg.h"\
	".\DlgEditVorlage.h"\
	".\DlgSelPrint.h"\
	".\DlgTB.h"\
	".\DlgVisu.h"\
	".\DlgZFkt.h"\
	".\EditIDEDlg.h"\
	".\FlAbgleichDlg.h"\
	".\Gbmguid.h"\
	".\GbmTRiAS.h"\
	".\InterDialog.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OpProDlg.h"\
	".\OrteSet.h"\
	".\PreviewDialog.h"\
	".\PrintAnlaDialog.h"\
	".\PrintAnlage.h"\
	".\PrintHandler.h"\
	".\RegKey.h"\
	".\SetNF_PG4.h"\
	".\SetVorlagen.h"\
	".\SPage1.h"\
	".\SPage2.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VERSIO16.H"\
	".\VERSIO32.H"\
	".\VERSION.H"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\sectlf.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\swinfrm.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\DIRISOLE.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\EONRGUID.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\ITOOLBAR.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OCIDL.H"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\except\config.h"\
	{$(INCLUDE)}"\Ospace\except\except.h"\
	{$(INCLUDE)}"\Ospace\except\stdex.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\map"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\Ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\function.h"\
	{$(INCLUDE)}"\Ospace\stl\internal.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\map.cc"\
	{$(INCLUDE)}"\Ospace\stl\map.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\Ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\STATGUID.H"\
	{$(INCLUDE)}"\TOOLGUID.H"\
	{$(INCLUDE)}"\TRiASHelper.h"\
	{$(INCLUDE)}"\TRiASHelper_i.c"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\TRIASTLB.H"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNGUID.H"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_GBMTR=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\GbmTRiAS.obj" : $(SOURCE) $(DEP_CPP_GBMTR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\GbmTRiAS.sbr" : $(SOURCE) $(DEP_CPP_GBMTR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\GbmTRiAS.def

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_STDAF=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	
# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "d:\work\Include.ot5" /D "NDEBUG" /D "WIN32"\
 /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS" /D "_WINDLL" /D "_AFXDLL"\
 /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D "_AFXEXT" /D "__ATL_11_USED__" /D\
 "__ATL_USED__" /D "OS_STL_ASSERT" /D "OS_ALTERNATIVE_STRING_NAMES" /D\
 "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS" /D "ATL_NO_NAMESPACE"\
 /Fr"$(INTDIR)/" /Fp"$(INTDIR)/GbmTRiAS.pch" /Yc"stdafx.h" /Fo"$(INTDIR)/" /c\
 $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\StdAfx.sbr" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\GbmTRiAS.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_STDAF=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	
# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "d:\work\Include.ot5" /D "_DEBUG"\
 /D "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS" /D "_WINDLL" /D\
 "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D "_AFXEXT" /D\
 "__ATL_11_USED__" /D "__ATL_USED__" /D "OS_STL_ASSERT" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS"\
 /D "ATL_NO_NAMESPACE" /FR"$(INTDIR)/" /Fp"$(INTDIR)/GbmTRiAS.pch" /Yc"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\StdAfx.sbr" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\GbmTRiAS.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_STDAF=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
# ADD BASE CPP /Yc"stdafx.h"
# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /Zi /Od /I "d:\work\Include.ot5" /D "NDEBUG" /D\
 "_SMARTDEBUG" /D "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS"\
 /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D "_AFXEXT" /D\
 "__ATL_11_USED__" /D "__ATL_USED__" /D "OS_STL_ASSERT" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS"\
 /D "ATL_NO_NAMESPACE" /Fr"$(INTDIR)/" /Fp"$(INTDIR)/GbmTRiAS.pch" /Yc"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\StdAfx.sbr" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\GbmTRiAS.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_STDAF=\
	"..\..\..\Util\xstring.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_STDAF=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	
# ADD BASE CPP /Yc"stdafx.h"
# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /Zi /Od /I "E:\Toolkit\OT51\Include" /D "NDEBUG" /D\
 "_SMARTDEBUG" /D "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS"\
 /D "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D "_AFXEXT" /D\
 "__ATL_11_USED__" /D "__ATL_USED__" /D "OS_STL_ASSERT" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS"\
 /D "ATL_NO_NAMESPACE" /Fr"$(INTDIR)/" /Fp"$(INTDIR)/GbmTRiAS.pch" /Yc"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\StdAfx.sbr" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\GbmTRiAS.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

# ADD BASE CPP /Yc"stdafx.h"
# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MD /W3 /GX /O2 /I "E:\Toolkit\OT51\Include" /D "NDEBUG" /D\
 "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS" /D "_WINDLL" /D\
 "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D "_AFXEXT" /D\
 "__ATL_11_USED__" /D "__ATL_USED__" /D "OS_STL_ASSERT" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS"\
 /D "ATL_NO_NAMESPACE" /Fr"$(INTDIR)/" /Fp"$(INTDIR)/GbmTRiAS.pch" /Yc"stdafx.h"\
 /Fo"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\StdAfx.sbr" : $(SOURCE) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\GbmTRiAS.pch" : $(SOURCE) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

# ADD BASE CPP /Yc"stdafx.h"
# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MDd /W3 /Gm /GX /Zi /Od /I "E:\Toolkit\OT51\Include" /D\
 "_DEBUG" /D "WIN32" /D "_WINDOWS" /D "__XT" /D "__MFC__" /D "__DEXPROCS" /D\
 "_WINDLL" /D "_AFXDLL" /D "_MBCS" /D "EBWIN32" /D "_SECDLL" /D "_AFXEXT" /D\
 "__ATL_11_USED__" /D "__ATL_USED__" /D "OS_STL_ASSERT" /D\
 "OS_ALTERNATIVE_STRING_NAMES" /D "OS_NO_STREAM_SUPPORT" /D "OS_NO_ALLOCATORS"\
 /D "ATL_NO_NAMESPACE" /FR"$(INTDIR)/" /Fp"$(INTDIR)/GbmTRiAS.pch" /Yc"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\StdAfx.sbr" : $(SOURCE) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\GbmTRiAS.pch" : $(SOURCE) "$(INTDIR)"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\GbmTRiAS.rc
DEP_RSC_GBMTRI=\
	".\bitmap1.bmp"\
	".\bitmap3.bmp"\
	".\bitmap4.bmp"\
	".\Color.ebc"\
	".\gbmtool.bmp"\
	".\gbmtoolb.bmp"\
	".\GS_Ana.ebc"\
	".\K2000.ebc"\
	".\Macro1.ebc"\
	".\Macro2.ebc"\
	".\res\Anlage.gbm"\
	".\res\Beitrag.gbm"\
	".\res\Erfass.gbm"\
	".\res\GbmTRiAS.rc2"\
	".\res\InfoBr.gbm"\
	".\TopoAna.ebc"\
	".\two_page.bmp"\
	".\Visu.ebc"\
	".\Visu1.ebc"\
	".\ZF_001.ebc"\
	

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"


"$(INTDIR)\GbmTRiAS.res" : $(SOURCE) $(DEP_RSC_GBMTRI) "$(INTDIR)"\
 ".\Macro2.ebc" ".\Macro1.ebc" ".\Color.ebc" ".\Visu1.ebc" ".\ZF_001.ebc"\
 ".\K2000.ebc" ".\GS_Ana.ebc" ".\TopoAna.ebc" ".\Visu.ebc"
   $(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"


"$(INTDIR)\GbmTRiAS.res" : $(SOURCE) $(DEP_RSC_GBMTRI) "$(INTDIR)"\
 ".\Macro2.ebc" ".\Macro1.ebc" ".\Color.ebc" ".\Visu1.ebc" ".\ZF_001.ebc"\
 ".\K2000.ebc" ".\GS_Ana.ebc" ".\TopoAna.ebc" ".\Visu.ebc"
   $(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"


"$(INTDIR)\GbmTRiAS.res" : $(SOURCE) $(DEP_RSC_GBMTRI) "$(INTDIR)"\
 ".\Macro2.ebc" ".\Macro1.ebc" ".\Color.ebc" ".\Visu1.ebc" ".\ZF_001.ebc"\
 ".\K2000.ebc" ".\GS_Ana.ebc" ".\TopoAna.ebc" ".\Visu.ebc"
   $(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"


"$(INTDIR)\GbmTRiAS.res" : $(SOURCE) $(DEP_RSC_GBMTRI) "$(INTDIR)"\
 ".\Macro2.ebc" ".\Macro1.ebc" ".\Color.ebc" ".\Visu1.ebc" ".\ZF_001.ebc"\
 ".\K2000.ebc" ".\GS_Ana.ebc" ".\TopoAna.ebc" ".\Visu.ebc"
   $(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\GbmTRiAS.res" : $(SOURCE) $(DEP_RSC_GBMTRI) "$(INTDIR)"\
 ".\Macro2.ebc" ".\Macro1.ebc" ".\Color.ebc" ".\Visu1.ebc" ".\ZF_001.ebc"\
 ".\K2000.ebc" ".\GS_Ana.ebc" ".\TopoAna.ebc" ".\Visu.ebc"
   $(RSC) $(RSC_PROJ) $(SOURCE)


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\GbmTRiAS.res" : $(SOURCE) $(DEP_RSC_GBMTRI) "$(INTDIR)"\
 ".\Macro2.ebc" ".\Macro1.ebc" ".\Color.ebc" ".\Visu1.ebc" ".\ZF_001.ebc"\
 ".\K2000.ebc" ".\GS_Ana.ebc" ".\TopoAna.ebc" ".\Visu.ebc"
   $(RSC) $(RSC_PROJ) $(SOURCE)


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\OpProDlg.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_OPPRO=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OpProDlg.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\OpProDlg.obj" : $(SOURCE) $(DEP_CPP_OPPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\OpProDlg.sbr" : $(SOURCE) $(DEP_CPP_OPPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_OPPRO=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OpProDlg.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\OpProDlg.obj" : $(SOURCE) $(DEP_CPP_OPPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\OpProDlg.sbr" : $(SOURCE) $(DEP_CPP_OPPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_OPPRO=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OpProDlg.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\OpProDlg.obj" : $(SOURCE) $(DEP_CPP_OPPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\OpProDlg.sbr" : $(SOURCE) $(DEP_CPP_OPPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_OPPRO=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OpProDlg.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_OPPRO=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\OpProDlg.obj" : $(SOURCE) $(DEP_CPP_OPPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\OpProDlg.sbr" : $(SOURCE) $(DEP_CPP_OPPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\OpProDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\OpProDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\OpProDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\OpProDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\DLDlg.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_DLDLG=\
	"..\..\..\..\INCLUDE.OT5\SWINFRM.H"\
	"..\..\..\Util\ResiWnd.h"\
	".\DLDlg.h"\
	".\EditPage7.h"\
	".\EdPage1.h"\
	".\EdPage2.h"\
	".\EdPage3.h"\
	".\EdPage4.h"\
	".\EdPage5.h"\
	".\EdPage6.h"\
	".\ErfassPrivDlg.h"\
	".\GbmTRiAS.h"\
	".\GSTeilenDlg.h"\
	".\MyPropS.h"\
	".\PrintAnlage.h"\
	".\SetOI.h"\
	".\StdAfx.h"\
	".\SuchPage0.h"\
	".\SuchPage1.h"\
	".\SuchPage2.h"\
	".\SuchPage3.h"\
	".\SuchPage4.h"\
	".\SuchResDlg.h"\
	"\work\Include.ot5\sectlf.h"\
	{$(INCLUDE)}"\bool.h"\
	

"$(INTDIR)\DLDlg.obj" : $(SOURCE) $(DEP_CPP_DLDLG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DLDlg.sbr" : $(SOURCE) $(DEP_CPP_DLDLG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_DLDLG=\
	"..\..\..\..\INCLUDE.OT5\SWINFRM.H"\
	"..\..\..\Util\ResiWnd.h"\
	".\DLDlg.h"\
	".\EditPage7.h"\
	".\EdPage1.h"\
	".\EdPage2.h"\
	".\EdPage3.h"\
	".\EdPage4.h"\
	".\EdPage5.h"\
	".\EdPage6.h"\
	".\ErfassPrivDlg.h"\
	".\GbmTRiAS.h"\
	".\GSTeilenDlg.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\PrintAnlage.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetOI.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage0.h"\
	".\SuchPage1.h"\
	".\SuchPage2.h"\
	".\SuchPage3.h"\
	".\SuchPage4.h"\
	".\SuchResDlg.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\sectlf.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\DLDlg.obj" : $(SOURCE) $(DEP_CPP_DLDLG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DLDlg.sbr" : $(SOURCE) $(DEP_CPP_DLDLG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_DLDLG=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\..\INCLUDE.OT5\SWINFRM.H"\
	"..\..\..\Util\ResiWnd.h"\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\DLDlg.h"\
	".\EditPage7.h"\
	".\EdPage1.h"\
	".\EdPage2.h"\
	".\EdPage3.h"\
	".\EdPage4.h"\
	".\EdPage5.h"\
	".\EdPage6.h"\
	".\ErfassPrivDlg.h"\
	".\GbmTRiAS.h"\
	".\GSTeilenDlg.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\PrintAnlage.h"\
	".\SetNF_PG4.h"\
	".\SetOI.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage0.h"\
	".\SuchPage1.h"\
	".\SuchPage2.h"\
	".\SuchPage3.h"\
	".\SuchPage4.h"\
	".\SuchResDlg.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	"\work\Include.ot5\sectlf.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\DLDlg.obj" : $(SOURCE) $(DEP_CPP_DLDLG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DLDlg.sbr" : $(SOURCE) $(DEP_CPP_DLDLG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_DLDLG=\
	"..\..\..\Util\ResiWnd.h"\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\DLDlg.h"\
	".\EditPage7.h"\
	".\EdPage1.h"\
	".\EdPage2.h"\
	".\EdPage3.h"\
	".\EdPage4.h"\
	".\EdPage5.h"\
	".\EdPage6.h"\
	".\ErfassPrivDlg.h"\
	".\GbmTRiAS.h"\
	".\GSTeilenDlg.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\PrintAnlage.h"\
	".\SetNF_PG4.h"\
	".\SetOI.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage0.h"\
	".\SuchPage1.h"\
	".\SuchPage2.h"\
	".\SuchPage3.h"\
	".\SuchPage4.h"\
	".\SuchResDlg.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\sectlf.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\swinfrm.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_DLDLG=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\DLDlg.obj" : $(SOURCE) $(DEP_CPP_DLDLG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DLDlg.sbr" : $(SOURCE) $(DEP_CPP_DLDLG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\DLDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DLDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\DLDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DLDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VerzSet.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_VERZS=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\VerzSet.obj" : $(SOURCE) $(DEP_CPP_VERZS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\VerzSet.sbr" : $(SOURCE) $(DEP_CPP_VERZS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_VERZS=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\VerzSet.obj" : $(SOURCE) $(DEP_CPP_VERZS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\VerzSet.sbr" : $(SOURCE) $(DEP_CPP_VERZS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_VERZS=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\VerzSet.obj" : $(SOURCE) $(DEP_CPP_VERZS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\VerzSet.sbr" : $(SOURCE) $(DEP_CPP_VERZS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_VERZS=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_VERZS=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\VerzSet.obj" : $(SOURCE) $(DEP_CPP_VERZS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\VerzSet.sbr" : $(SOURCE) $(DEP_CPP_VERZS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\VerzSet.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\VerzSet.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\VerzSet.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\VerzSet.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\TriDBSet.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_TRIDB=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetOI.h"\
	".\SetSI.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\TriDBSet.obj" : $(SOURCE) $(DEP_CPP_TRIDB) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\TriDBSet.sbr" : $(SOURCE) $(DEP_CPP_TRIDB) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_TRIDB=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetOI.h"\
	".\SetSI.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\TriDBSet.obj" : $(SOURCE) $(DEP_CPP_TRIDB) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\TriDBSet.sbr" : $(SOURCE) $(DEP_CPP_TRIDB) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_TRIDB=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetOI.h"\
	".\SetSI.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\TriDBSet.obj" : $(SOURCE) $(DEP_CPP_TRIDB) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\TriDBSet.sbr" : $(SOURCE) $(DEP_CPP_TRIDB) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_TRIDB=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetOI.h"\
	".\SetSI.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_TRIDB=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\TriDBSet.obj" : $(SOURCE) $(DEP_CPP_TRIDB) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\TriDBSet.sbr" : $(SOURCE) $(DEP_CPP_TRIDB) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\TriDBSet.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\TriDBSet.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\TriDBSet.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\TriDBSet.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\VerzSet2.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_VERZSE=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\VerzSet2.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\VerzSet2.obj" : $(SOURCE) $(DEP_CPP_VERZSE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\VerzSet2.sbr" : $(SOURCE) $(DEP_CPP_VERZSE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_VERZSE=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\VerzSet2.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\VerzSet2.obj" : $(SOURCE) $(DEP_CPP_VERZSE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\VerzSet2.sbr" : $(SOURCE) $(DEP_CPP_VERZSE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_VERZSE=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	".\VerzSet2.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\VerzSet2.obj" : $(SOURCE) $(DEP_CPP_VERZSE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\VerzSet2.sbr" : $(SOURCE) $(DEP_CPP_VERZSE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_VERZSE=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	".\VerzSet2.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_VERZSE=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\VerzSet2.obj" : $(SOURCE) $(DEP_CPP_VERZSE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\VerzSet2.sbr" : $(SOURCE) $(DEP_CPP_VERZSE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\VerzSet2.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\VerzSet2.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\VerzSet2.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\VerzSet2.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\OrteSet.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_ORTES=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\OrteSet.obj" : $(SOURCE) $(DEP_CPP_ORTES) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\OrteSet.sbr" : $(SOURCE) $(DEP_CPP_ORTES) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_ORTES=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\OrteSet.obj" : $(SOURCE) $(DEP_CPP_ORTES) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\OrteSet.sbr" : $(SOURCE) $(DEP_CPP_ORTES) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_ORTES=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\OrteSet.obj" : $(SOURCE) $(DEP_CPP_ORTES) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\OrteSet.sbr" : $(SOURCE) $(DEP_CPP_ORTES) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_ORTES=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_ORTES=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\OrteSet.obj" : $(SOURCE) $(DEP_CPP_ORTES) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\OrteSet.sbr" : $(SOURCE) $(DEP_CPP_ORTES) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\OrteSet.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\OrteSet.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\OrteSet.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\OrteSet.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\StrasseSet.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_STRAS=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\StrasseSet.obj" : $(SOURCE) $(DEP_CPP_STRAS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\StrasseSet.sbr" : $(SOURCE) $(DEP_CPP_STRAS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_STRAS=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\StrasseSet.obj" : $(SOURCE) $(DEP_CPP_STRAS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\StrasseSet.sbr" : $(SOURCE) $(DEP_CPP_STRAS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_STRAS=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\StrasseSet.obj" : $(SOURCE) $(DEP_CPP_STRAS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\StrasseSet.sbr" : $(SOURCE) $(DEP_CPP_STRAS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_STRAS=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_STRAS=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\StrasseSet.obj" : $(SOURCE) $(DEP_CPP_STRAS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\StrasseSet.sbr" : $(SOURCE) $(DEP_CPP_STRAS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\StrasseSet.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\StrasseSet.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\StrasseSet.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\StrasseSet.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SPage2.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_SPAGE=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\SPage2.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SPage2.obj" : $(SOURCE) $(DEP_CPP_SPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SPage2.sbr" : $(SOURCE) $(DEP_CPP_SPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_SPAGE=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\SPage2.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SPage2.obj" : $(SOURCE) $(DEP_CPP_SPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SPage2.sbr" : $(SOURCE) $(DEP_CPP_SPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_SPAGE=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SPage2.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\SPage2.obj" : $(SOURCE) $(DEP_CPP_SPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SPage2.sbr" : $(SOURCE) $(DEP_CPP_SPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_SPAGE=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SPage2.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_SPAGE=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\SPage2.obj" : $(SOURCE) $(DEP_CPP_SPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SPage2.sbr" : $(SOURCE) $(DEP_CPP_SPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\SPage2.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SPage2.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\SPage2.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SPage2.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SPage1.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_SPAGE1=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\SPage1.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SPage1.obj" : $(SOURCE) $(DEP_CPP_SPAGE1) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SPage1.sbr" : $(SOURCE) $(DEP_CPP_SPAGE1) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_SPAGE1=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\SPage1.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SPage1.obj" : $(SOURCE) $(DEP_CPP_SPAGE1) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SPage1.sbr" : $(SOURCE) $(DEP_CPP_SPAGE1) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_SPAGE1=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SPage1.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\SPage1.obj" : $(SOURCE) $(DEP_CPP_SPAGE1) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SPage1.sbr" : $(SOURCE) $(DEP_CPP_SPAGE1) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_SPAGE1=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SPage1.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_SPAGE1=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\SPage1.obj" : $(SOURCE) $(DEP_CPP_SPAGE1) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SPage1.sbr" : $(SOURCE) $(DEP_CPP_SPAGE1) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\SPage1.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SPage1.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\SPage1.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SPage1.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\MyPropS.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_MYPRO=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\MyPropS.obj" : $(SOURCE) $(DEP_CPP_MYPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\MyPropS.sbr" : $(SOURCE) $(DEP_CPP_MYPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_MYPRO=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\MyPropS.obj" : $(SOURCE) $(DEP_CPP_MYPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\MyPropS.sbr" : $(SOURCE) $(DEP_CPP_MYPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_MYPRO=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\MyPropS.obj" : $(SOURCE) $(DEP_CPP_MYPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\MyPropS.sbr" : $(SOURCE) $(DEP_CPP_MYPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_MYPRO=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_MYPRO=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\MyPropS.obj" : $(SOURCE) $(DEP_CPP_MYPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\MyPropS.sbr" : $(SOURCE) $(DEP_CPP_MYPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\MyPropS.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\MyPropS.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\MyPropS.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\MyPropS.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\StatDlg.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_STATD=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\Stat1Dlg.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\StatDlg.obj" : $(SOURCE) $(DEP_CPP_STATD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\StatDlg.sbr" : $(SOURCE) $(DEP_CPP_STATD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_STATD=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\Stat1Dlg.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\StatDlg.obj" : $(SOURCE) $(DEP_CPP_STATD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\StatDlg.sbr" : $(SOURCE) $(DEP_CPP_STATD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_STATD=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\Stat1Dlg.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\StatDlg.obj" : $(SOURCE) $(DEP_CPP_STATD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\StatDlg.sbr" : $(SOURCE) $(DEP_CPP_STATD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_STATD=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\Stat1Dlg.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_STATD=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\StatDlg.obj" : $(SOURCE) $(DEP_CPP_STATD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\StatDlg.sbr" : $(SOURCE) $(DEP_CPP_STATD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\StatDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\StatDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\StatDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\StatDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\NF_PG1.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_NF_PG=\
	".\GbmTRiAS.h"\
	".\StdAfx.h"\
	{$(INCLUDE)}"\bool.h"\
	

"$(INTDIR)\NF_PG1.obj" : $(SOURCE) $(DEP_CPP_NF_PG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG1.sbr" : $(SOURCE) $(DEP_CPP_NF_PG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_NF_PG=\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\NF_PG1.obj" : $(SOURCE) $(DEP_CPP_NF_PG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG1.sbr" : $(SOURCE) $(DEP_CPP_NF_PG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_NF_PG=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\NF_PG1.obj" : $(SOURCE) $(DEP_CPP_NF_PG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG1.sbr" : $(SOURCE) $(DEP_CPP_NF_PG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_NF_PG=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_NF_PG=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\NF_PG1.obj" : $(SOURCE) $(DEP_CPP_NF_PG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG1.sbr" : $(SOURCE) $(DEP_CPP_NF_PG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\NF_PG1.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG1.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\NF_PG1.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG1.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\NF_PG2D.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_NF_PG2=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\NF_PG2D.obj" : $(SOURCE) $(DEP_CPP_NF_PG2) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG2D.sbr" : $(SOURCE) $(DEP_CPP_NF_PG2) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_NF_PG2=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\NF_PG2D.obj" : $(SOURCE) $(DEP_CPP_NF_PG2) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG2D.sbr" : $(SOURCE) $(DEP_CPP_NF_PG2) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_NF_PG2=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\NF_PG2D.obj" : $(SOURCE) $(DEP_CPP_NF_PG2) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG2D.sbr" : $(SOURCE) $(DEP_CPP_NF_PG2) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_NF_PG2=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_NF_PG2=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\NF_PG2D.obj" : $(SOURCE) $(DEP_CPP_NF_PG2) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG2D.sbr" : $(SOURCE) $(DEP_CPP_NF_PG2) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\NF_PG2D.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG2D.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\NF_PG2D.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG2D.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\NF_PG2H.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_NF_PG2H=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\NF_PG2H.obj" : $(SOURCE) $(DEP_CPP_NF_PG2H) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG2H.sbr" : $(SOURCE) $(DEP_CPP_NF_PG2H) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_NF_PG2H=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\NF_PG2H.obj" : $(SOURCE) $(DEP_CPP_NF_PG2H) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG2H.sbr" : $(SOURCE) $(DEP_CPP_NF_PG2H) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_NF_PG2H=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\NF_PG2H.obj" : $(SOURCE) $(DEP_CPP_NF_PG2H) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG2H.sbr" : $(SOURCE) $(DEP_CPP_NF_PG2H) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_NF_PG2H=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_NF_PG2H=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\NF_PG2H.obj" : $(SOURCE) $(DEP_CPP_NF_PG2H) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG2H.sbr" : $(SOURCE) $(DEP_CPP_NF_PG2H) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\NF_PG2H.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG2H.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\NF_PG2H.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG2H.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\NF_PG1GB.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_NF_PG1=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\NF_PG1GB.obj" : $(SOURCE) $(DEP_CPP_NF_PG1) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG1GB.sbr" : $(SOURCE) $(DEP_CPP_NF_PG1) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_NF_PG1=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\NF_PG1GB.obj" : $(SOURCE) $(DEP_CPP_NF_PG1) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG1GB.sbr" : $(SOURCE) $(DEP_CPP_NF_PG1) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_NF_PG1=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\NF_PG1GB.obj" : $(SOURCE) $(DEP_CPP_NF_PG1) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG1GB.sbr" : $(SOURCE) $(DEP_CPP_NF_PG1) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_NF_PG1=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_NF_PG1=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\NF_PG1GB.obj" : $(SOURCE) $(DEP_CPP_NF_PG1) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG1GB.sbr" : $(SOURCE) $(DEP_CPP_NF_PG1) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\NF_PG1GB.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG1GB.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\NF_PG1GB.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG1GB.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\NF_PG1FL.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_NF_PG1F=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\NF_PG1FL.obj" : $(SOURCE) $(DEP_CPP_NF_PG1F) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG1FL.sbr" : $(SOURCE) $(DEP_CPP_NF_PG1F) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_NF_PG1F=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\NF_PG1FL.obj" : $(SOURCE) $(DEP_CPP_NF_PG1F) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG1FL.sbr" : $(SOURCE) $(DEP_CPP_NF_PG1F) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_NF_PG1F=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\NF_PG1FL.obj" : $(SOURCE) $(DEP_CPP_NF_PG1F) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG1FL.sbr" : $(SOURCE) $(DEP_CPP_NF_PG1F) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_NF_PG1F=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_NF_PG1F=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\NF_PG1FL.obj" : $(SOURCE) $(DEP_CPP_NF_PG1F) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG1FL.sbr" : $(SOURCE) $(DEP_CPP_NF_PG1F) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\NF_PG1FL.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG1FL.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\NF_PG1FL.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_PG1FL.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\EdPage1.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_EDPAG=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\EdPage1.h"\
	".\ErfassPrivDlg.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\EdPage1.obj" : $(SOURCE) $(DEP_CPP_EDPAG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage1.sbr" : $(SOURCE) $(DEP_CPP_EDPAG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_EDPAG=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\EdPage1.h"\
	".\ErfassPrivDlg.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\EdPage1.obj" : $(SOURCE) $(DEP_CPP_EDPAG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage1.sbr" : $(SOURCE) $(DEP_CPP_EDPAG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_EDPAG=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\EdPage1.h"\
	".\ErfassPrivDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\EdPage1.obj" : $(SOURCE) $(DEP_CPP_EDPAG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage1.sbr" : $(SOURCE) $(DEP_CPP_EDPAG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_EDPAG=\
	"..\..\..\Util\xstring.h"\
	".\EdPage1.h"\
	".\ErfassPrivDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_EDPAG=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\EdPage1.obj" : $(SOURCE) $(DEP_CPP_EDPAG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage1.sbr" : $(SOURCE) $(DEP_CPP_EDPAG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\EdPage1.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage1.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\EdPage1.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage1.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\EdPage2.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_EDPAGE=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\DeleteDialog.h"\
	".\EdPage2.h"\
	".\ErfassPrivDlg.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\EdPage2.obj" : $(SOURCE) $(DEP_CPP_EDPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage2.sbr" : $(SOURCE) $(DEP_CPP_EDPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_EDPAGE=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\DeleteDialog.h"\
	".\EdPage2.h"\
	".\ErfassPrivDlg.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\EdPage2.obj" : $(SOURCE) $(DEP_CPP_EDPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage2.sbr" : $(SOURCE) $(DEP_CPP_EDPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_EDPAGE=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\DeleteDialog.h"\
	".\EdPage2.h"\
	".\ErfassPrivDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\EdPage2.obj" : $(SOURCE) $(DEP_CPP_EDPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage2.sbr" : $(SOURCE) $(DEP_CPP_EDPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_EDPAGE=\
	"..\..\..\Util\xstring.h"\
	".\DeleteDialog.h"\
	".\EdPage2.h"\
	".\ErfassPrivDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_EDPAGE=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\EdPage2.obj" : $(SOURCE) $(DEP_CPP_EDPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage2.sbr" : $(SOURCE) $(DEP_CPP_EDPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\EdPage2.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage2.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\EdPage2.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage2.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\EdPage3.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_EDPAGE3=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\DeleteDialog.h"\
	".\EdPage3.h"\
	".\ErfassPrivDlg.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\EdPage3.obj" : $(SOURCE) $(DEP_CPP_EDPAGE3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage3.sbr" : $(SOURCE) $(DEP_CPP_EDPAGE3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_EDPAGE3=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\DeleteDialog.h"\
	".\EdPage3.h"\
	".\ErfassPrivDlg.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\EdPage3.obj" : $(SOURCE) $(DEP_CPP_EDPAGE3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage3.sbr" : $(SOURCE) $(DEP_CPP_EDPAGE3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_EDPAGE3=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\DeleteDialog.h"\
	".\EdPage3.h"\
	".\ErfassPrivDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\EdPage3.obj" : $(SOURCE) $(DEP_CPP_EDPAGE3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage3.sbr" : $(SOURCE) $(DEP_CPP_EDPAGE3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_EDPAGE3=\
	"..\..\..\Util\xstring.h"\
	".\DeleteDialog.h"\
	".\EdPage3.h"\
	".\ErfassPrivDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_EDPAGE3=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\EdPage3.obj" : $(SOURCE) $(DEP_CPP_EDPAGE3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage3.sbr" : $(SOURCE) $(DEP_CPP_EDPAGE3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\EdPage3.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage3.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\EdPage3.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage3.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\EdPage4.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_EDPAGE4=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\EdPage4.h"\
	".\ErfassPrivDlg.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\EdPage4.obj" : $(SOURCE) $(DEP_CPP_EDPAGE4) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage4.sbr" : $(SOURCE) $(DEP_CPP_EDPAGE4) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_EDPAGE4=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\EdPage4.h"\
	".\ErfassPrivDlg.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\EdPage4.obj" : $(SOURCE) $(DEP_CPP_EDPAGE4) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage4.sbr" : $(SOURCE) $(DEP_CPP_EDPAGE4) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_EDPAGE4=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\EdPage4.h"\
	".\ErfassPrivDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\EdPage4.obj" : $(SOURCE) $(DEP_CPP_EDPAGE4) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage4.sbr" : $(SOURCE) $(DEP_CPP_EDPAGE4) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_EDPAGE4=\
	"..\..\..\Util\xstring.h"\
	".\EdPage4.h"\
	".\ErfassPrivDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_EDPAGE4=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\EdPage4.obj" : $(SOURCE) $(DEP_CPP_EDPAGE4) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage4.sbr" : $(SOURCE) $(DEP_CPP_EDPAGE4) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\EdPage4.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage4.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\EdPage4.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage4.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\EdPage5.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_EDPAGE5=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\DeleteDialog.h"\
	".\EdPage5.h"\
	".\ErfassPrivDlg.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\EdPage5.obj" : $(SOURCE) $(DEP_CPP_EDPAGE5) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage5.sbr" : $(SOURCE) $(DEP_CPP_EDPAGE5) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_EDPAGE5=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\DeleteDialog.h"\
	".\EdPage5.h"\
	".\ErfassPrivDlg.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\EdPage5.obj" : $(SOURCE) $(DEP_CPP_EDPAGE5) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage5.sbr" : $(SOURCE) $(DEP_CPP_EDPAGE5) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_EDPAGE5=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\DeleteDialog.h"\
	".\EdPage5.h"\
	".\ErfassPrivDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\EdPage5.obj" : $(SOURCE) $(DEP_CPP_EDPAGE5) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage5.sbr" : $(SOURCE) $(DEP_CPP_EDPAGE5) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_EDPAGE5=\
	"..\..\..\Util\xstring.h"\
	".\DeleteDialog.h"\
	".\EdPage5.h"\
	".\ErfassPrivDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_EDPAGE5=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\EdPage5.obj" : $(SOURCE) $(DEP_CPP_EDPAGE5) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage5.sbr" : $(SOURCE) $(DEP_CPP_EDPAGE5) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\EdPage5.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage5.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\EdPage5.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage5.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\EdPage6.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_EDPAGE6=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\EdPage6.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\EdPage6.obj" : $(SOURCE) $(DEP_CPP_EDPAGE6) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage6.sbr" : $(SOURCE) $(DEP_CPP_EDPAGE6) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_EDPAGE6=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\EdPage6.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\EdPage6.obj" : $(SOURCE) $(DEP_CPP_EDPAGE6) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage6.sbr" : $(SOURCE) $(DEP_CPP_EDPAGE6) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_EDPAGE6=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\EdPage6.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\EdPage6.obj" : $(SOURCE) $(DEP_CPP_EDPAGE6) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage6.sbr" : $(SOURCE) $(DEP_CPP_EDPAGE6) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_EDPAGE6=\
	"..\..\..\Util\xstring.h"\
	".\EdPage6.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_EDPAGE6=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\EdPage6.obj" : $(SOURCE) $(DEP_CPP_EDPAGE6) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage6.sbr" : $(SOURCE) $(DEP_CPP_EDPAGE6) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\EdPage6.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage6.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\EdPage6.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EdPage6.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\About.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_ABOUT=\
	".\About.h"\
	".\GbmTRiAS.h"\
	".\StdAfx.h"\
	

"$(INTDIR)\About.obj" : $(SOURCE) $(DEP_CPP_ABOUT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\About.sbr" : $(SOURCE) $(DEP_CPP_ABOUT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_ABOUT=\
	".\About.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\About.obj" : $(SOURCE) $(DEP_CPP_ABOUT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\About.sbr" : $(SOURCE) $(DEP_CPP_ABOUT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_ABOUT=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\About.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\About.obj" : $(SOURCE) $(DEP_CPP_ABOUT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\About.sbr" : $(SOURCE) $(DEP_CPP_ABOUT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_ABOUT=\
	"..\..\..\Util\xstring.h"\
	".\About.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_ABOUT=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\About.obj" : $(SOURCE) $(DEP_CPP_ABOUT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\About.sbr" : $(SOURCE) $(DEP_CPP_ABOUT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\About.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\About.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\About.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\About.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SetOI.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_SETOI=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetOI.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetOI.obj" : $(SOURCE) $(DEP_CPP_SETOI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOI.sbr" : $(SOURCE) $(DEP_CPP_SETOI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_SETOI=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetOI.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetOI.obj" : $(SOURCE) $(DEP_CPP_SETOI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOI.sbr" : $(SOURCE) $(DEP_CPP_SETOI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_SETOI=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetOI.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\SetOI.obj" : $(SOURCE) $(DEP_CPP_SETOI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOI.sbr" : $(SOURCE) $(DEP_CPP_SETOI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_SETOI=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetOI.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_SETOI=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\SetOI.obj" : $(SOURCE) $(DEP_CPP_SETOI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOI.sbr" : $(SOURCE) $(DEP_CPP_SETOI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\SetOI.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOI.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\SetOI.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOI.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SetSI.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_SETSI=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetSI.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetSI.obj" : $(SOURCE) $(DEP_CPP_SETSI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetSI.sbr" : $(SOURCE) $(DEP_CPP_SETSI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_SETSI=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetSI.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetSI.obj" : $(SOURCE) $(DEP_CPP_SETSI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetSI.sbr" : $(SOURCE) $(DEP_CPP_SETSI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_SETSI=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetSI.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\SetSI.obj" : $(SOURCE) $(DEP_CPP_SETSI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetSI.sbr" : $(SOURCE) $(DEP_CPP_SETSI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_SETSI=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetSI.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_SETSI=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\SetSI.obj" : $(SOURCE) $(DEP_CPP_SETSI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetSI.sbr" : $(SOURCE) $(DEP_CPP_SETSI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\SetSI.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetSI.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\SetSI.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetSI.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SuchPage4.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_SUCHP=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage4.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SuchPage4.obj" : $(SOURCE) $(DEP_CPP_SUCHP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage4.sbr" : $(SOURCE) $(DEP_CPP_SUCHP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_SUCHP=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage4.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SuchPage4.obj" : $(SOURCE) $(DEP_CPP_SUCHP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage4.sbr" : $(SOURCE) $(DEP_CPP_SUCHP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_SUCHP=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage4.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\SuchPage4.obj" : $(SOURCE) $(DEP_CPP_SUCHP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage4.sbr" : $(SOURCE) $(DEP_CPP_SUCHP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_SUCHP=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage4.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_SUCHP=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\SuchPage4.obj" : $(SOURCE) $(DEP_CPP_SUCHP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage4.sbr" : $(SOURCE) $(DEP_CPP_SUCHP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\SuchPage4.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage4.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\SuchPage4.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage4.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SuchPage1.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_SUCHPA=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage1.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SuchPage1.obj" : $(SOURCE) $(DEP_CPP_SUCHPA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage1.sbr" : $(SOURCE) $(DEP_CPP_SUCHPA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_SUCHPA=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage1.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SuchPage1.obj" : $(SOURCE) $(DEP_CPP_SUCHPA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage1.sbr" : $(SOURCE) $(DEP_CPP_SUCHPA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_SUCHPA=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage1.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\SuchPage1.obj" : $(SOURCE) $(DEP_CPP_SUCHPA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage1.sbr" : $(SOURCE) $(DEP_CPP_SUCHPA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_SUCHPA=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage1.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_SUCHPA=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\SuchPage1.obj" : $(SOURCE) $(DEP_CPP_SUCHPA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage1.sbr" : $(SOURCE) $(DEP_CPP_SUCHPA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\SuchPage1.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage1.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\SuchPage1.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage1.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SuchPage2.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_SUCHPAG=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage2.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SuchPage2.obj" : $(SOURCE) $(DEP_CPP_SUCHPAG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage2.sbr" : $(SOURCE) $(DEP_CPP_SUCHPAG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_SUCHPAG=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage2.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SuchPage2.obj" : $(SOURCE) $(DEP_CPP_SUCHPAG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage2.sbr" : $(SOURCE) $(DEP_CPP_SUCHPAG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_SUCHPAG=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage2.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\SuchPage2.obj" : $(SOURCE) $(DEP_CPP_SUCHPAG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage2.sbr" : $(SOURCE) $(DEP_CPP_SUCHPAG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_SUCHPAG=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage2.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_SUCHPAG=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\SuchPage2.obj" : $(SOURCE) $(DEP_CPP_SUCHPAG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage2.sbr" : $(SOURCE) $(DEP_CPP_SUCHPAG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\SuchPage2.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage2.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\SuchPage2.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage2.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SuchPage3.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_SUCHPAGE=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage3.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SuchPage3.obj" : $(SOURCE) $(DEP_CPP_SUCHPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage3.sbr" : $(SOURCE) $(DEP_CPP_SUCHPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_SUCHPAGE=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage3.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SuchPage3.obj" : $(SOURCE) $(DEP_CPP_SUCHPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage3.sbr" : $(SOURCE) $(DEP_CPP_SUCHPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_SUCHPAGE=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage3.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\SuchPage3.obj" : $(SOURCE) $(DEP_CPP_SUCHPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage3.sbr" : $(SOURCE) $(DEP_CPP_SUCHPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_SUCHPAGE=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage3.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_SUCHPAGE=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\SuchPage3.obj" : $(SOURCE) $(DEP_CPP_SUCHPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage3.sbr" : $(SOURCE) $(DEP_CPP_SUCHPAGE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\SuchPage3.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage3.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\SuchPage3.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage3.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SuchPage0.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_SUCHPAGE0=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage0.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SuchPage0.obj" : $(SOURCE) $(DEP_CPP_SUCHPAGE0) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage0.sbr" : $(SOURCE) $(DEP_CPP_SUCHPAGE0) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_SUCHPAGE0=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage0.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SuchPage0.obj" : $(SOURCE) $(DEP_CPP_SUCHPAGE0) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage0.sbr" : $(SOURCE) $(DEP_CPP_SUCHPAGE0) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_SUCHPAGE0=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage0.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\SuchPage0.obj" : $(SOURCE) $(DEP_CPP_SUCHPAGE0) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage0.sbr" : $(SOURCE) $(DEP_CPP_SUCHPAGE0) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_SUCHPAGE0=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\MyPropS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchPage0.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_SUCHPAGE0=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\SuchPage0.obj" : $(SOURCE) $(DEP_CPP_SUCHPAGE0) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage0.sbr" : $(SOURCE) $(DEP_CPP_SUCHPAGE0) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\SuchPage0.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage0.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\SuchPage0.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchPage0.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SuchResDlg.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_SUCHR=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchResDlg.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SuchResDlg.obj" : $(SOURCE) $(DEP_CPP_SUCHR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchResDlg.sbr" : $(SOURCE) $(DEP_CPP_SUCHR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_SUCHR=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchResDlg.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SuchResDlg.obj" : $(SOURCE) $(DEP_CPP_SUCHR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchResDlg.sbr" : $(SOURCE) $(DEP_CPP_SUCHR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_SUCHR=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchResDlg.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\SuchResDlg.obj" : $(SOURCE) $(DEP_CPP_SUCHR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchResDlg.sbr" : $(SOURCE) $(DEP_CPP_SUCHR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_SUCHR=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\SuchResDlg.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_SUCHR=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\SuchResDlg.obj" : $(SOURCE) $(DEP_CPP_SUCHR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchResDlg.sbr" : $(SOURCE) $(DEP_CPP_SUCHR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\SuchResDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchResDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\SuchResDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SuchResDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\GSTeilenDlg.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_GSTEI=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\GSTeilenDlg.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\GSTeilenDlg.obj" : $(SOURCE) $(DEP_CPP_GSTEI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\GSTeilenDlg.sbr" : $(SOURCE) $(DEP_CPP_GSTEI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_GSTEI=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\GSTeilenDlg.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\GSTeilenDlg.obj" : $(SOURCE) $(DEP_CPP_GSTEI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\GSTeilenDlg.sbr" : $(SOURCE) $(DEP_CPP_GSTEI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_GSTEI=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\GSTeilenDlg.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\GSTeilenDlg.obj" : $(SOURCE) $(DEP_CPP_GSTEI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\GSTeilenDlg.sbr" : $(SOURCE) $(DEP_CPP_GSTEI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_GSTEI=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\GSTeilenDlg.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_GSTEI=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\GSTeilenDlg.obj" : $(SOURCE) $(DEP_CPP_GSTEI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\GSTeilenDlg.sbr" : $(SOURCE) $(DEP_CPP_GSTEI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\GSTeilenDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\GSTeilenDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\GSTeilenDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\GSTeilenDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ErfassPrivDlg.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_ERFAS=\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\EditPage7.h"\
	".\EdPage1.h"\
	".\EdPage2.h"\
	".\EdPage3.h"\
	".\EdPage4.h"\
	".\EdPage5.h"\
	".\ErfassPrivDlg.h"\
	".\GbmTRiAS.h"\
	".\Ospace\config.h"\
	".\Ospace\std\string"\
	".\Ospace\stl\config.h"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\config.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\StdAfx.h"\
	{$(INCLUDE)}"\bool.h"\
	

"$(INTDIR)\ErfassPrivDlg.obj" : $(SOURCE) $(DEP_CPP_ERFAS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ErfassPrivDlg.sbr" : $(SOURCE) $(DEP_CPP_ERFAS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_ERFAS=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\EditPage7.h"\
	".\EdPage1.h"\
	".\EdPage2.h"\
	".\EdPage3.h"\
	".\EdPage4.h"\
	".\EdPage5.h"\
	".\ErfassPrivDlg.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\ErfassPrivDlg.obj" : $(SOURCE) $(DEP_CPP_ERFAS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ErfassPrivDlg.sbr" : $(SOURCE) $(DEP_CPP_ERFAS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_ERFAS=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\EditPage7.h"\
	".\EdPage1.h"\
	".\EdPage2.h"\
	".\EdPage3.h"\
	".\EdPage4.h"\
	".\EdPage5.h"\
	".\ErfassPrivDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\ErfassPrivDlg.obj" : $(SOURCE) $(DEP_CPP_ERFAS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ErfassPrivDlg.sbr" : $(SOURCE) $(DEP_CPP_ERFAS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_ERFAS=\
	"..\..\..\Util\xstring.h"\
	".\EditPage7.h"\
	".\EdPage1.h"\
	".\EdPage2.h"\
	".\EdPage3.h"\
	".\EdPage4.h"\
	".\EdPage5.h"\
	".\ErfassPrivDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_ERFAS=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\ErfassPrivDlg.obj" : $(SOURCE) $(DEP_CPP_ERFAS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ErfassPrivDlg.sbr" : $(SOURCE) $(DEP_CPP_ERFAS) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\ErfassPrivDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ErfassPrivDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\ErfassPrivDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ErfassPrivDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Nf_pg3.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_NF_PG3=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\CulcuDlg.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\Nf_pg3.obj" : $(SOURCE) $(DEP_CPP_NF_PG3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\Nf_pg3.sbr" : $(SOURCE) $(DEP_CPP_NF_PG3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_NF_PG3=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\CulcuDlg.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\Nf_pg3.obj" : $(SOURCE) $(DEP_CPP_NF_PG3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\Nf_pg3.sbr" : $(SOURCE) $(DEP_CPP_NF_PG3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_NF_PG3=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\CulcuDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\Nf_pg3.obj" : $(SOURCE) $(DEP_CPP_NF_PG3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\Nf_pg3.sbr" : $(SOURCE) $(DEP_CPP_NF_PG3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_NF_PG3=\
	"..\..\..\Util\xstring.h"\
	".\CulcuDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_NF_PG3=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\Nf_pg3.obj" : $(SOURCE) $(DEP_CPP_NF_PG3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\Nf_pg3.sbr" : $(SOURCE) $(DEP_CPP_NF_PG3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\Nf_pg3.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\Nf_pg3.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\Nf_pg3.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\Nf_pg3.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\DeleteDialog.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_DELET=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\DeleteDialog.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\DeleteDialog.obj" : $(SOURCE) $(DEP_CPP_DELET) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DeleteDialog.sbr" : $(SOURCE) $(DEP_CPP_DELET) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_DELET=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\DeleteDialog.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\DeleteDialog.obj" : $(SOURCE) $(DEP_CPP_DELET) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DeleteDialog.sbr" : $(SOURCE) $(DEP_CPP_DELET) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_DELET=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\DeleteDialog.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\DeleteDialog.obj" : $(SOURCE) $(DEP_CPP_DELET) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DeleteDialog.sbr" : $(SOURCE) $(DEP_CPP_DELET) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_DELET=\
	"..\..\..\Util\xstring.h"\
	".\DeleteDialog.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_DELET=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\DeleteDialog.obj" : $(SOURCE) $(DEP_CPP_DELET) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DeleteDialog.sbr" : $(SOURCE) $(DEP_CPP_DELET) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\DeleteDialog.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DeleteDialog.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\DeleteDialog.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DeleteDialog.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\PreviewDialog.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_PREVI=\
	".\DIBAPI.H"\
	".\GbmTRiAS.h"\
	".\PreviewDialog.h"\
	".\PrintAnlage.h"\
	".\RectDlg.h"\
	".\StdAfx.h"\
	".\ViewPortDlg.h"\
	{$(INCLUDE)}"\bool.h"\
	

"$(INTDIR)\PreviewDialog.obj" : $(SOURCE) $(DEP_CPP_PREVI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PreviewDialog.sbr" : $(SOURCE) $(DEP_CPP_PREVI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_PREVI=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\PreviewDialog.h"\
	".\PrintAnlage.h"\
	".\RectDlg.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	".\ViewPortDlg.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\PreviewDialog.obj" : $(SOURCE) $(DEP_CPP_PREVI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PreviewDialog.sbr" : $(SOURCE) $(DEP_CPP_PREVI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_PREVI=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\PreviewDialog.h"\
	".\PrintAnlage.h"\
	".\RectDlg.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	".\ViewPortDlg.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\PreviewDialog.obj" : $(SOURCE) $(DEP_CPP_PREVI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PreviewDialog.sbr" : $(SOURCE) $(DEP_CPP_PREVI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_PREVI=\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\PreviewDialog.h"\
	".\PrintAnlage.h"\
	".\RectDlg.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	".\ViewPortDlg.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_PREVI=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\PreviewDialog.obj" : $(SOURCE) $(DEP_CPP_PREVI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PreviewDialog.sbr" : $(SOURCE) $(DEP_CPP_PREVI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

DEP_CPP_PREVI=\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\PreviewDialog.h"\
	".\PrintAnlage.h"\
	".\RectDlg.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	".\ViewPortDlg.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_PREVI=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\PreviewDialog.obj" : $(SOURCE) $(DEP_CPP_PREVI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PreviewDialog.sbr" : $(SOURCE) $(DEP_CPP_PREVI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

DEP_CPP_PREVI=\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\PreviewDialog.h"\
	".\PrintAnlage.h"\
	".\RectDlg.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	".\ViewPortDlg.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_PREVI=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\PreviewDialog.obj" : $(SOURCE) $(DEP_CPP_PREVI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PreviewDialog.sbr" : $(SOURCE) $(DEP_CPP_PREVI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\PrintAnlaDialog.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_PRINT=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\PrintAnlaDialog.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\PrintAnlaDialog.obj" : $(SOURCE) $(DEP_CPP_PRINT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PrintAnlaDialog.sbr" : $(SOURCE) $(DEP_CPP_PRINT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_PRINT=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\PrintAnlaDialog.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\PrintAnlaDialog.obj" : $(SOURCE) $(DEP_CPP_PRINT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PrintAnlaDialog.sbr" : $(SOURCE) $(DEP_CPP_PRINT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_PRINT=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\PrintAnlaDialog.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\PrintAnlaDialog.obj" : $(SOURCE) $(DEP_CPP_PRINT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PrintAnlaDialog.sbr" : $(SOURCE) $(DEP_CPP_PRINT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_PRINT=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\PrintAnlaDialog.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_PRINT=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\PrintAnlaDialog.obj" : $(SOURCE) $(DEP_CPP_PRINT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PrintAnlaDialog.sbr" : $(SOURCE) $(DEP_CPP_PRINT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\PrintAnlaDialog.obj" : $(SOURCE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PrintAnlaDialog.sbr" : $(SOURCE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\PrintAnlaDialog.obj" : $(SOURCE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PrintAnlaDialog.sbr" : $(SOURCE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\NF_OG1.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_NF_OG=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\NF_OG1.obj" : $(SOURCE) $(DEP_CPP_NF_OG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_OG1.sbr" : $(SOURCE) $(DEP_CPP_NF_OG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_NF_OG=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\NF_OG1.obj" : $(SOURCE) $(DEP_CPP_NF_OG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_OG1.sbr" : $(SOURCE) $(DEP_CPP_NF_OG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_NF_OG=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\NF_OG1.obj" : $(SOURCE) $(DEP_CPP_NF_OG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_OG1.sbr" : $(SOURCE) $(DEP_CPP_NF_OG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_NF_OG=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_NF_OG=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\NF_OG1.obj" : $(SOURCE) $(DEP_CPP_NF_OG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_OG1.sbr" : $(SOURCE) $(DEP_CPP_NF_OG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\NF_OG1.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_OG1.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\NF_OG1.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\NF_OG1.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\PrintAnlage.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_PRINTA=\
	".\DIBAPI.H"\
	".\GbmTRiAS.h"\
	".\PrintAnlage.h"\
	".\SetVorlagen.h"\
	".\StdAfx.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	

"$(INTDIR)\PrintAnlage.obj" : $(SOURCE) $(DEP_CPP_PRINTA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PrintAnlage.sbr" : $(SOURCE) $(DEP_CPP_PRINTA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_PRINTA=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\PrintAnlage.h"\
	".\SetNF_PG4.h"\
	".\SetVorlagen.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\PrintAnlage.obj" : $(SOURCE) $(DEP_CPP_PRINTA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PrintAnlage.sbr" : $(SOURCE) $(DEP_CPP_PRINTA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_PRINTA=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\PrintAnlage.h"\
	".\SetNF_PG4.h"\
	".\SetVorlagen.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\PrintAnlage.obj" : $(SOURCE) $(DEP_CPP_PRINTA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PrintAnlage.sbr" : $(SOURCE) $(DEP_CPP_PRINTA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_PRINTA=\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\PrintAnlage.h"\
	".\SetNF_PG4.h"\
	".\SetVorlagen.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_PRINTA=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\PrintAnlage.obj" : $(SOURCE) $(DEP_CPP_PRINTA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PrintAnlage.sbr" : $(SOURCE) $(DEP_CPP_PRINTA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

DEP_CPP_PRINTA=\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\PrintAnlage.h"\
	".\SetNF_PG4.h"\
	".\SetVorlagen.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_PRINTA=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\PrintAnlage.obj" : $(SOURCE) $(DEP_CPP_PRINTA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PrintAnlage.sbr" : $(SOURCE) $(DEP_CPP_PRINTA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

DEP_CPP_PRINTA=\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\PrintAnlage.h"\
	".\SetNF_PG4.h"\
	".\SetVorlagen.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_PRINTA=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\PrintAnlage.obj" : $(SOURCE) $(DEP_CPP_PRINTA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PrintAnlage.sbr" : $(SOURCE) $(DEP_CPP_PRINTA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\PrintHandler.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_PRINTH=\
	".\DIBAPI.H"\
	".\PrintAnlage.h"\
	".\PrintHandler.h"\
	".\StdAfx.h"\
	

"$(INTDIR)\PrintHandler.obj" : $(SOURCE) $(DEP_CPP_PRINTH) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PrintHandler.sbr" : $(SOURCE) $(DEP_CPP_PRINTH) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_PRINTH=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\PrintAnlage.h"\
	".\PrintHandler.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\PrintHandler.obj" : $(SOURCE) $(DEP_CPP_PRINTH) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PrintHandler.sbr" : $(SOURCE) $(DEP_CPP_PRINTH) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_PRINTH=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\PrintAnlage.h"\
	".\PrintHandler.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\PrintHandler.obj" : $(SOURCE) $(DEP_CPP_PRINTH) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PrintHandler.sbr" : $(SOURCE) $(DEP_CPP_PRINTH) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_PRINTH=\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\PrintAnlage.h"\
	".\PrintHandler.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_PRINTH=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\PrintHandler.obj" : $(SOURCE) $(DEP_CPP_PRINTH) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PrintHandler.sbr" : $(SOURCE) $(DEP_CPP_PRINTH) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

DEP_CPP_PRINTH=\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\PrintAnlage.h"\
	".\PrintHandler.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_PRINTH=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\PrintHandler.obj" : $(SOURCE) $(DEP_CPP_PRINTH) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PrintHandler.sbr" : $(SOURCE) $(DEP_CPP_PRINTH) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

DEP_CPP_PRINTH=\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\PrintAnlage.h"\
	".\PrintHandler.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_PRINTH=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\PrintHandler.obj" : $(SOURCE) $(DEP_CPP_PRINTH) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\PrintHandler.sbr" : $(SOURCE) $(DEP_CPP_PRINTH) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\RectDlg.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_RECTD=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\RectDlg.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\RectDlg.obj" : $(SOURCE) $(DEP_CPP_RECTD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\RectDlg.sbr" : $(SOURCE) $(DEP_CPP_RECTD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_RECTD=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\RectDlg.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\RectDlg.obj" : $(SOURCE) $(DEP_CPP_RECTD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\RectDlg.sbr" : $(SOURCE) $(DEP_CPP_RECTD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_RECTD=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\RectDlg.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\RectDlg.obj" : $(SOURCE) $(DEP_CPP_RECTD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\RectDlg.sbr" : $(SOURCE) $(DEP_CPP_RECTD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_RECTD=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\RectDlg.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_RECTD=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\RectDlg.obj" : $(SOURCE) $(DEP_CPP_RECTD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\RectDlg.sbr" : $(SOURCE) $(DEP_CPP_RECTD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\RectDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\RectDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\RectDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\RectDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ViewPortDlg.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_VIEWP=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\ViewPortDlg.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\ViewPortDlg.obj" : $(SOURCE) $(DEP_CPP_VIEWP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ViewPortDlg.sbr" : $(SOURCE) $(DEP_CPP_VIEWP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_VIEWP=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\ViewPortDlg.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\ViewPortDlg.obj" : $(SOURCE) $(DEP_CPP_VIEWP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ViewPortDlg.sbr" : $(SOURCE) $(DEP_CPP_VIEWP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_VIEWP=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	".\ViewPortDlg.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\ViewPortDlg.obj" : $(SOURCE) $(DEP_CPP_VIEWP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ViewPortDlg.sbr" : $(SOURCE) $(DEP_CPP_VIEWP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_VIEWP=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	".\ViewPortDlg.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_VIEWP=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\ViewPortDlg.obj" : $(SOURCE) $(DEP_CPP_VIEWP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ViewPortDlg.sbr" : $(SOURCE) $(DEP_CPP_VIEWP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\ViewPortDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ViewPortDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\ViewPortDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ViewPortDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\TestDialogBar.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_TESTD=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TestDialogBar.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\TestDialogBar.obj" : $(SOURCE) $(DEP_CPP_TESTD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\TestDialogBar.sbr" : $(SOURCE) $(DEP_CPP_TESTD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_TESTD=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TestDialogBar.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\TestDialogBar.obj" : $(SOURCE) $(DEP_CPP_TESTD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\TestDialogBar.sbr" : $(SOURCE) $(DEP_CPP_TESTD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_TESTD=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TestDialogBar.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\TestDialogBar.obj" : $(SOURCE) $(DEP_CPP_TESTD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\TestDialogBar.sbr" : $(SOURCE) $(DEP_CPP_TESTD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_TESTD=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TestDialogBar.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_TESTD=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\TestDialogBar.obj" : $(SOURCE) $(DEP_CPP_TESTD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\TestDialogBar.sbr" : $(SOURCE) $(DEP_CPP_TESTD) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\TestDialogBar.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\TestDialogBar.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\TestDialogBar.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\TestDialogBar.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\FlAbgleichDlg.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_FLABG=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\FlAbgleichDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetZW_PG1GB.h"\
	".\SetZW_PG2D.h"\
	".\SetZW_PG2H.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\FlAbgleichDlg.obj" : $(SOURCE) $(DEP_CPP_FLABG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\FlAbgleichDlg.sbr" : $(SOURCE) $(DEP_CPP_FLABG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_FLABG=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\FlAbgleichDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetZW_PG1GB.h"\
	".\SetZW_PG2D.h"\
	".\SetZW_PG2H.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\FlAbgleichDlg.obj" : $(SOURCE) $(DEP_CPP_FLABG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\FlAbgleichDlg.sbr" : $(SOURCE) $(DEP_CPP_FLABG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_FLABG=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\FlAbgleichDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetZW_PG1GB.h"\
	".\SetZW_PG2D.h"\
	".\SetZW_PG2H.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\FlAbgleichDlg.obj" : $(SOURCE) $(DEP_CPP_FLABG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\FlAbgleichDlg.sbr" : $(SOURCE) $(DEP_CPP_FLABG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_FLABG=\
	"..\..\..\Util\xstring.h"\
	".\FlAbgleichDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetZW_PG1GB.h"\
	".\SetZW_PG2D.h"\
	".\SetZW_PG2H.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_FLABG=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\FlAbgleichDlg.obj" : $(SOURCE) $(DEP_CPP_FLABG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\FlAbgleichDlg.sbr" : $(SOURCE) $(DEP_CPP_FLABG) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\FlAbgleichDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\FlAbgleichDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\FlAbgleichDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\FlAbgleichDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SetZW_PG1GB.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_SETZW=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetZW_PG1GB.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetZW_PG1GB.obj" : $(SOURCE) $(DEP_CPP_SETZW) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetZW_PG1GB.sbr" : $(SOURCE) $(DEP_CPP_SETZW) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_SETZW=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetZW_PG1GB.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetZW_PG1GB.obj" : $(SOURCE) $(DEP_CPP_SETZW) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetZW_PG1GB.sbr" : $(SOURCE) $(DEP_CPP_SETZW) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_SETZW=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetZW_PG1GB.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\SetZW_PG1GB.obj" : $(SOURCE) $(DEP_CPP_SETZW) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetZW_PG1GB.sbr" : $(SOURCE) $(DEP_CPP_SETZW) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_SETZW=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetZW_PG1GB.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_SETZW=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\SetZW_PG1GB.obj" : $(SOURCE) $(DEP_CPP_SETZW) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetZW_PG1GB.sbr" : $(SOURCE) $(DEP_CPP_SETZW) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\SetZW_PG1GB.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetZW_PG1GB.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\SetZW_PG1GB.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetZW_PG1GB.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SetZW_PG2D.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_SETZW_=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetZW_PG2D.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetZW_PG2D.obj" : $(SOURCE) $(DEP_CPP_SETZW_) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetZW_PG2D.sbr" : $(SOURCE) $(DEP_CPP_SETZW_) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_SETZW_=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetZW_PG2D.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetZW_PG2D.obj" : $(SOURCE) $(DEP_CPP_SETZW_) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetZW_PG2D.sbr" : $(SOURCE) $(DEP_CPP_SETZW_) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_SETZW_=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetZW_PG2D.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\SetZW_PG2D.obj" : $(SOURCE) $(DEP_CPP_SETZW_) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetZW_PG2D.sbr" : $(SOURCE) $(DEP_CPP_SETZW_) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_SETZW_=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetZW_PG2D.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_SETZW_=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\SetZW_PG2D.obj" : $(SOURCE) $(DEP_CPP_SETZW_) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetZW_PG2D.sbr" : $(SOURCE) $(DEP_CPP_SETZW_) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\SetZW_PG2D.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetZW_PG2D.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\SetZW_PG2D.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetZW_PG2D.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SetZW_PG2H.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_SETZW_P=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetZW_PG2H.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetZW_PG2H.obj" : $(SOURCE) $(DEP_CPP_SETZW_P) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetZW_PG2H.sbr" : $(SOURCE) $(DEP_CPP_SETZW_P) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_SETZW_P=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetZW_PG2H.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetZW_PG2H.obj" : $(SOURCE) $(DEP_CPP_SETZW_P) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetZW_PG2H.sbr" : $(SOURCE) $(DEP_CPP_SETZW_P) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_SETZW_P=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetZW_PG2H.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\SetZW_PG2H.obj" : $(SOURCE) $(DEP_CPP_SETZW_P) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetZW_PG2H.sbr" : $(SOURCE) $(DEP_CPP_SETZW_P) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_SETZW_P=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetZW_PG2H.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_SETZW_P=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\SetZW_PG2H.obj" : $(SOURCE) $(DEP_CPP_SETZW_P) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetZW_PG2H.sbr" : $(SOURCE) $(DEP_CPP_SETZW_P) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\SetZW_PG2H.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetZW_PG2H.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\SetZW_PG2H.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetZW_PG2H.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\RButton.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_RBUTT=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\RBUTTON.H"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\RButton.obj" : $(SOURCE) $(DEP_CPP_RBUTT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\RButton.sbr" : $(SOURCE) $(DEP_CPP_RBUTT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_RBUTT=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\RBUTTON.H"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\RButton.obj" : $(SOURCE) $(DEP_CPP_RBUTT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\RButton.sbr" : $(SOURCE) $(DEP_CPP_RBUTT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_RBUTT=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\RBUTTON.H"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\RButton.obj" : $(SOURCE) $(DEP_CPP_RBUTT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\RButton.sbr" : $(SOURCE) $(DEP_CPP_RBUTT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_RBUTT=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\RBUTTON.H"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_RBUTT=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\RButton.obj" : $(SOURCE) $(DEP_CPP_RBUTT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\RButton.sbr" : $(SOURCE) $(DEP_CPP_RBUTT) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\RButton.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\RButton.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\RButton.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\RButton.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\Work\Win16\Util\Xstring.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_XSTRI=\
	"..\..\..\Util\xstring.h"\
	{$(INCLUDE)}"\LAFX.H"\
	{$(INCLUDE)}"\LAFX.INL"\
	
NODEP_CPP_XSTRI=\
	"..\..\..\Util\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\Xstring.obj" : $(SOURCE) $(DEP_CPP_XSTRI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

"$(INTDIR)\Xstring.sbr" : $(SOURCE) $(DEP_CPP_XSTRI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_XSTRI=\
	"..\..\..\Util\xstring.h"\
	{$(INCLUDE)}"\LAFX.H"\
	{$(INCLUDE)}"\LAFX.INL"\
	
NODEP_CPP_XSTRI=\
	"..\..\..\Util\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\Xstring.obj" : $(SOURCE) $(DEP_CPP_XSTRI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

"$(INTDIR)\Xstring.sbr" : $(SOURCE) $(DEP_CPP_XSTRI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_XSTRI=\
	"..\..\..\Util\xstring.h"\
	{$(INCLUDE)}"\LAFX.H"\
	{$(INCLUDE)}"\LAFX.INL"\
	
NODEP_CPP_XSTRI=\
	"..\..\..\Util\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\Xstring.obj" : $(SOURCE) $(DEP_CPP_XSTRI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

"$(INTDIR)\Xstring.sbr" : $(SOURCE) $(DEP_CPP_XSTRI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_XSTRI=\
	"..\..\..\Util\xstring.h"\
	{$(INCLUDE)}"\LAFX.H"\
	{$(INCLUDE)}"\LAFX.INL"\
	
NODEP_CPP_XSTRI=\
	"..\..\..\Util\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\Xstring.obj" : $(SOURCE) $(DEP_CPP_XSTRI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

"$(INTDIR)\Xstring.sbr" : $(SOURCE) $(DEP_CPP_XSTRI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\Xstring.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

"$(INTDIR)\Xstring.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\Xstring.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

"$(INTDIR)\Xstring.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\Work\Win16\Util\ResiWnd.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_RESIW=\
	"..\..\..\Util\ResiWnd.h"\
	
NODEP_CPP_RESIW=\
	"..\..\..\Util\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\ResiWnd.obj" : $(SOURCE) $(DEP_CPP_RESIW) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

"$(INTDIR)\ResiWnd.sbr" : $(SOURCE) $(DEP_CPP_RESIW) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_RESIW=\
	"..\..\..\Util\ResiWnd.h"\
	
NODEP_CPP_RESIW=\
	"..\..\..\Util\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\ResiWnd.obj" : $(SOURCE) $(DEP_CPP_RESIW) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

"$(INTDIR)\ResiWnd.sbr" : $(SOURCE) $(DEP_CPP_RESIW) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_RESIW=\
	"..\..\..\Util\ResiWnd.h"\
	
NODEP_CPP_RESIW=\
	"..\..\..\Util\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\ResiWnd.obj" : $(SOURCE) $(DEP_CPP_RESIW) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

"$(INTDIR)\ResiWnd.sbr" : $(SOURCE) $(DEP_CPP_RESIW) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_RESIW=\
	"..\..\..\Util\ResiWnd.h"\
	
NODEP_CPP_RESIW=\
	"..\..\..\Util\stdafx.h"\
	

BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\ResiWnd.obj" : $(SOURCE) $(DEP_CPP_RESIW) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

"$(INTDIR)\ResiWnd.sbr" : $(SOURCE) $(DEP_CPP_RESIW) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\ResiWnd.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

"$(INTDIR)\ResiWnd.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


BuildCmds= \
	$(CPP) $(CPP_PROJ) $(SOURCE) \
	

"$(INTDIR)\ResiWnd.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

"$(INTDIR)\ResiWnd.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\CulcuDlg.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_CULCU=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\CulcuDlg.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\CulcuDlg.obj" : $(SOURCE) $(DEP_CPP_CULCU) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\CulcuDlg.sbr" : $(SOURCE) $(DEP_CPP_CULCU) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_CULCU=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\CulcuDlg.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\CulcuDlg.obj" : $(SOURCE) $(DEP_CPP_CULCU) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\CulcuDlg.sbr" : $(SOURCE) $(DEP_CPP_CULCU) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_CULCU=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\CulcuDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\CulcuDlg.obj" : $(SOURCE) $(DEP_CPP_CULCU) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\CulcuDlg.sbr" : $(SOURCE) $(DEP_CPP_CULCU) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_CULCU=\
	"..\..\..\Util\xstring.h"\
	".\CulcuDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_CULCU=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\CulcuDlg.obj" : $(SOURCE) $(DEP_CPP_CULCU) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\CulcuDlg.sbr" : $(SOURCE) $(DEP_CPP_CULCU) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\CulcuDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\CulcuDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\CulcuDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\CulcuDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\DlgSelPrint.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_DLGSE=\
	".\DlgSelPrint.h"\
	".\GbmTRiAS.h"\
	".\StdAfx.h"\
	{$(INCLUDE)}"\bool.h"\
	

"$(INTDIR)\DlgSelPrint.obj" : $(SOURCE) $(DEP_CPP_DLGSE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgSelPrint.sbr" : $(SOURCE) $(DEP_CPP_DLGSE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_DLGSE=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\DlgSelPrint.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\DlgSelPrint.obj" : $(SOURCE) $(DEP_CPP_DLGSE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgSelPrint.sbr" : $(SOURCE) $(DEP_CPP_DLGSE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_DLGSE=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\DlgSelPrint.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\DlgSelPrint.obj" : $(SOURCE) $(DEP_CPP_DLGSE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgSelPrint.sbr" : $(SOURCE) $(DEP_CPP_DLGSE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_DLGSE=\
	"..\..\..\Util\xstring.h"\
	".\DlgSelPrint.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_DLGSE=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\DlgSelPrint.obj" : $(SOURCE) $(DEP_CPP_DLGSE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgSelPrint.sbr" : $(SOURCE) $(DEP_CPP_DLGSE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

DEP_CPP_DLGSE=\
	"..\..\..\Util\xstring.h"\
	".\DlgSelPrint.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_DLGSE=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\DlgSelPrint.obj" : $(SOURCE) $(DEP_CPP_DLGSE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgSelPrint.sbr" : $(SOURCE) $(DEP_CPP_DLGSE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

DEP_CPP_DLGSE=\
	"..\..\..\Util\xstring.h"\
	".\DlgSelPrint.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_DLGSE=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\DlgSelPrint.obj" : $(SOURCE) $(DEP_CPP_DLGSE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgSelPrint.sbr" : $(SOURCE) $(DEP_CPP_DLGSE) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SetParam.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_SETPA=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetParam.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetParam.obj" : $(SOURCE) $(DEP_CPP_SETPA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetParam.sbr" : $(SOURCE) $(DEP_CPP_SETPA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_SETPA=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetParam.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetParam.obj" : $(SOURCE) $(DEP_CPP_SETPA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetParam.sbr" : $(SOURCE) $(DEP_CPP_SETPA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_SETPA=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetParam.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\SetParam.obj" : $(SOURCE) $(DEP_CPP_SETPA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetParam.sbr" : $(SOURCE) $(DEP_CPP_SETPA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_SETPA=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetParam.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_SETPA=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\SetParam.obj" : $(SOURCE) $(DEP_CPP_SETPA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetParam.sbr" : $(SOURCE) $(DEP_CPP_SETPA) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\SetParam.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetParam.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\SetParam.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetParam.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\DlgTB.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_DLGTB=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\DlgTB.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetParam.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\DlgTB.obj" : $(SOURCE) $(DEP_CPP_DLGTB) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgTB.sbr" : $(SOURCE) $(DEP_CPP_DLGTB) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_DLGTB=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\DlgTB.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetParam.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\DlgTB.obj" : $(SOURCE) $(DEP_CPP_DLGTB) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgTB.sbr" : $(SOURCE) $(DEP_CPP_DLGTB) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_DLGTB=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\DlgTB.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetParam.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\DlgTB.obj" : $(SOURCE) $(DEP_CPP_DLGTB) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgTB.sbr" : $(SOURCE) $(DEP_CPP_DLGTB) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_DLGTB=\
	"..\..\..\Util\xstring.h"\
	".\DlgTB.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetParam.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_DLGTB=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\DlgTB.obj" : $(SOURCE) $(DEP_CPP_DLGTB) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgTB.sbr" : $(SOURCE) $(DEP_CPP_DLGTB) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\DlgTB.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgTB.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\DlgTB.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgTB.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Macro2.ebs

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

# Begin Custom Build - Compiling Macro
InputPath=.\Macro2.ebs

"Macro2.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

# Begin Custom Build - Compiling Macro
InputPath=.\Macro2.ebs

"Macro2.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

# Begin Custom Build - Compiling Macro
InputPath=.\Macro2.ebs

"Macro2.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

# Begin Custom Build - Compiling Macro
InputPath=.\Macro2.ebs

"Macro2.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

# Begin Custom Build - Compiling Macro
InputPath=.\Macro2.ebs

"Macro2.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

# Begin Custom Build - Compiling Macro
InputPath=.\Macro2.ebs

"Macro2.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Macro1.ebs

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

# Begin Custom Build - Compiling Macro
InputPath=.\Macro1.ebs

"Macro1.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

# Begin Custom Build - Compiling Macro
InputPath=.\Macro1.ebs

"Macro1.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

# Begin Custom Build - Compiling Macro
InputPath=.\Macro1.ebs

"Macro1.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

# Begin Custom Build - Compiling Macro
InputPath=.\Macro1.ebs

"Macro1.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

# Begin Custom Build - Compiling Macro
InputPath=.\Macro1.ebs

"Macro1.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

# Begin Custom Build - Compiling Macro
InputPath=.\Macro1.ebs

"Macro1.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\InterDialog.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_INTER=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\InterDialog.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\InterDialog.obj" : $(SOURCE) $(DEP_CPP_INTER) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\InterDialog.sbr" : $(SOURCE) $(DEP_CPP_INTER) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_INTER=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\InterDialog.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\InterDialog.obj" : $(SOURCE) $(DEP_CPP_INTER) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\InterDialog.sbr" : $(SOURCE) $(DEP_CPP_INTER) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_INTER=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\InterDialog.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\InterDialog.obj" : $(SOURCE) $(DEP_CPP_INTER) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\InterDialog.sbr" : $(SOURCE) $(DEP_CPP_INTER) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_INTER=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\InterDialog.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_INTER=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\InterDialog.obj" : $(SOURCE) $(DEP_CPP_INTER) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\InterDialog.sbr" : $(SOURCE) $(DEP_CPP_INTER) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\InterDialog.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\InterDialog.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\InterDialog.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\InterDialog.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\EditIDEDlg.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_EDITI=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\EditIDEDlg.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\EditIDEDlg.obj" : $(SOURCE) $(DEP_CPP_EDITI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EditIDEDlg.sbr" : $(SOURCE) $(DEP_CPP_EDITI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_EDITI=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\EditIDEDlg.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\EditIDEDlg.obj" : $(SOURCE) $(DEP_CPP_EDITI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EditIDEDlg.sbr" : $(SOURCE) $(DEP_CPP_EDITI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_EDITI=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\EditIDEDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\EditIDEDlg.obj" : $(SOURCE) $(DEP_CPP_EDITI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EditIDEDlg.sbr" : $(SOURCE) $(DEP_CPP_EDITI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_EDITI=\
	"..\..\..\Util\xstring.h"\
	".\EditIDEDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_EDITI=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\EditIDEDlg.obj" : $(SOURCE) $(DEP_CPP_EDITI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EditIDEDlg.sbr" : $(SOURCE) $(DEP_CPP_EDITI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\EditIDEDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EditIDEDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\EditIDEDlg.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EditIDEDlg.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Color.ebs

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

# Begin Custom Build - Compiling Macro
InputPath=.\Color.ebs

"Color.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

# Begin Custom Build - Compiling Macro
InputPath=.\Color.ebs

"Color.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

# Begin Custom Build - Compiling Macro
InputPath=.\Color.ebs

"Color.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

# Begin Custom Build - Compiling Macro
InputPath=.\Color.ebs

"Color.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

# Begin Custom Build - Compiling Macro
InputPath=.\Color.ebs

"Color.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

# Begin Custom Build - Compiling Macro
InputPath=.\Color.ebs

"Color.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Visu1.ebs

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

# Begin Custom Build - Compiling Macro
InputPath=.\Visu1.ebs

"Visu1.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

# Begin Custom Build - Compiling Macro
InputPath=.\Visu1.ebs

"Visu1.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

# Begin Custom Build - Compiling Macro
InputPath=.\Visu1.ebs

"Visu1.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

# Begin Custom Build - Compiling Macro
InputPath=.\Visu1.ebs

"Visu1.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

# Begin Custom Build - Compiling Macro
InputPath=.\Visu1.ebs

"Visu1.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

# Begin Custom Build - Compiling Macro
InputPath=.\Visu1.ebs

"Visu1.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\DlgZFkt.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_DLGZF=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\DlgZFkt.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\DlgZFkt.obj" : $(SOURCE) $(DEP_CPP_DLGZF) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgZFkt.sbr" : $(SOURCE) $(DEP_CPP_DLGZF) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_DLGZF=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\DlgZFkt.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\DlgZFkt.obj" : $(SOURCE) $(DEP_CPP_DLGZF) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgZFkt.sbr" : $(SOURCE) $(DEP_CPP_DLGZF) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_DLGZF=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\DlgZFkt.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\DlgZFkt.obj" : $(SOURCE) $(DEP_CPP_DLGZF) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgZFkt.sbr" : $(SOURCE) $(DEP_CPP_DLGZF) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_DLGZF=\
	"..\..\..\Util\xstring.h"\
	".\DlgZFkt.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_DLGZF=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\DlgZFkt.obj" : $(SOURCE) $(DEP_CPP_DLGZF) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgZFkt.sbr" : $(SOURCE) $(DEP_CPP_DLGZF) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\DlgZFkt.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgZFkt.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\DlgZFkt.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgZFkt.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\DlgVisu.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_DLGVI=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\DlgVisu.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\DlgVisu.obj" : $(SOURCE) $(DEP_CPP_DLGVI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgVisu.sbr" : $(SOURCE) $(DEP_CPP_DLGVI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_DLGVI=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\DlgVisu.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\DlgVisu.obj" : $(SOURCE) $(DEP_CPP_DLGVI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgVisu.sbr" : $(SOURCE) $(DEP_CPP_DLGVI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_DLGVI=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\DlgVisu.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\DlgVisu.obj" : $(SOURCE) $(DEP_CPP_DLGVI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgVisu.sbr" : $(SOURCE) $(DEP_CPP_DLGVI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_DLGVI=\
	"..\..\..\Util\xstring.h"\
	".\DlgVisu.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_DLGVI=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\DlgVisu.obj" : $(SOURCE) $(DEP_CPP_DLGVI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgVisu.sbr" : $(SOURCE) $(DEP_CPP_DLGVI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\DlgVisu.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgVisu.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\DlgVisu.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgVisu.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Strings.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_STRIN=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\Strings.obj" : $(SOURCE) $(DEP_CPP_STRIN) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\Strings.sbr" : $(SOURCE) $(DEP_CPP_STRIN) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_STRIN=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\Strings.obj" : $(SOURCE) $(DEP_CPP_STRIN) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\Strings.sbr" : $(SOURCE) $(DEP_CPP_STRIN) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_STRIN=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\Strings.obj" : $(SOURCE) $(DEP_CPP_STRIN) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\Strings.sbr" : $(SOURCE) $(DEP_CPP_STRIN) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_STRIN=\
	"..\..\..\Util\xstring.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_STRIN=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\Strings.obj" : $(SOURCE) $(DEP_CPP_STRIN) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\Strings.sbr" : $(SOURCE) $(DEP_CPP_STRIN) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\Strings.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\Strings.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\Strings.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\Strings.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ZF_001.ebs

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

# Begin Custom Build - Compiling Macro
InputPath=.\ZF_001.ebs

"ZF_001.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

# Begin Custom Build - Compiling Macro
InputPath=.\ZF_001.ebs

"ZF_001.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

# Begin Custom Build - Compiling Macro
InputPath=.\ZF_001.ebs

"ZF_001.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

# Begin Custom Build - Compiling Macro
InputPath=.\ZF_001.ebs

"ZF_001.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

# Begin Custom Build - Compiling Macro
InputPath=.\ZF_001.ebs

"ZF_001.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

# Begin Custom Build - Compiling Macro
InputPath=.\ZF_001.ebs

"ZF_001.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\K2000.ebs

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

# Begin Custom Build - Compiling Kanal 2000 Macro
InputPath=.\K2000.ebs

"K2000.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

# Begin Custom Build - Compiling Kanal 2000 Macro
InputPath=.\K2000.ebs

"K2000.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

# Begin Custom Build - Compiling Kanal 2000 Macro
InputPath=.\K2000.ebs

"K2000.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

# Begin Custom Build - Compiling Kanal 2000 Macro
InputPath=.\K2000.ebs

"K2000.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

# Begin Custom Build - Compiling Kanal 2000 Macro
InputPath=.\K2000.ebs

"K2000.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

# Begin Custom Build - Compiling Kanal 2000 Macro
InputPath=.\K2000.ebs

"K2000.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\GS_Ana.ebs

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

# Begin Custom Build - Compiling GS-Analyse Macro
InputPath=.\GS_Ana.ebs

"GS_Ana.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

# Begin Custom Build - Compiling GS-Analyse Macro
InputPath=.\GS_Ana.ebs

"GS_Ana.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

# Begin Custom Build - Compiling GS-Analyse Macro
InputPath=.\GS_Ana.ebs

"GS_Ana.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

# Begin Custom Build - Compiling GS-Analyse Macro
InputPath=.\GS_Ana.ebs

"GS_Ana.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

# Begin Custom Build - Compiling GS-Analyse Macro
InputPath=.\GS_Ana.ebs

"GS_Ana.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

# Begin Custom Build - Compiling GS-Analyse Macro
InputPath=.\GS_Ana.ebs

"GS_Ana.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\TopoAna.ebs

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

# Begin Custom Build - Compiling Topo-Analyse Macro
InputPath=.\TopoAna.ebs

"TopoAna.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

# Begin Custom Build - Compiling Topo-Analyse Macro
InputPath=.\TopoAna.ebs

"TopoAna.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

# Begin Custom Build - Compiling Topo-Analyse Macro
InputPath=.\TopoAna.ebs

"TopoAna.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

# Begin Custom Build - Compiling Topo-Analyse Macro
InputPath=.\TopoAna.ebs

"TopoAna.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

# Begin Custom Build - Compiling Topo-Analyse Macro
InputPath=.\TopoAna.ebs

"TopoAna.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

# Begin Custom Build - Compiling Topo-Analyse Macro
InputPath=.\TopoAna.ebs

"TopoAna.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ObjProp.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_OBJPR=\
	".\ObjProp.h"\
	".\StdAfx.h"\
	{$(INCLUDE)}"\EONRGUID.H"\
	{$(INCLUDE)}"\XTSNGUID.H"\
	

"$(INTDIR)\ObjProp.obj" : $(SOURCE) $(DEP_CPP_OBJPR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ObjProp.sbr" : $(SOURCE) $(DEP_CPP_OBJPR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_OBJPR=\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\EONRGUID.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNGUID.H"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\ObjProp.obj" : $(SOURCE) $(DEP_CPP_OBJPR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ObjProp.sbr" : $(SOURCE) $(DEP_CPP_OBJPR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_OBJPR=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\EONRGUID.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNGUID.H"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\ObjProp.obj" : $(SOURCE) $(DEP_CPP_OBJPR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ObjProp.sbr" : $(SOURCE) $(DEP_CPP_OBJPR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_OBJPR=\
	"..\..\..\Util\xstring.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\EONRGUID.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNGUID.H"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_OBJPR=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\ObjProp.obj" : $(SOURCE) $(DEP_CPP_OBJPR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ObjProp.sbr" : $(SOURCE) $(DEP_CPP_OBJPR) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\ObjProp.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ObjProp.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\ObjProp.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ObjProp.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Visu.ebs

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

# Begin Custom Build - Compiling Visu-Macro
InputPath=.\Visu.ebs

"Visu.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

# Begin Custom Build - Compiling Visu-Macro
InputPath=.\Visu.ebs

"Visu.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

# Begin Custom Build - Compiling Visu-Macro
InputPath=.\Visu.ebs

"Visu.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

# Begin Custom Build - Compiling Visu-Macro
InputPath=.\Visu.ebs

"Visu.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

# Begin Custom Build - Compiling Visu-Macro
InputPath=.\Visu.ebs

"Visu.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

# Begin Custom Build - Compiling Visu-Macro
InputPath=.\Visu.ebs

"Visu.ebc" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
   d:\Programme\TRiAS\TRiAS\BSL -c $(InputPath)

# End Custom Build

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=\Programme\TRiAS\TRiAS\GBM_VER.TXT

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

# PROP BASE Exclude_From_Build 1
# PROP Exclude_From_Build 1

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ObjProp2.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_OBJPRO=\
	".\GbmTRiAS.h"\
	".\ObjProp.h"\
	".\SetOP1.h"\
	".\SetOP2.h"\
	".\SetOP3.h"\
	".\SetOP4.h"\
	".\StdAfx.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\EONRGUID.H"\
	{$(INCLUDE)}"\XTSNGUID.H"\
	

"$(INTDIR)\ObjProp2.obj" : $(SOURCE) $(DEP_CPP_OBJPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ObjProp2.sbr" : $(SOURCE) $(DEP_CPP_OBJPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_OBJPRO=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetOP1.h"\
	".\SetOP2.h"\
	".\SetOP3.h"\
	".\SetOP4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\EONRGUID.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNGUID.H"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\ObjProp2.obj" : $(SOURCE) $(DEP_CPP_OBJPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ObjProp2.sbr" : $(SOURCE) $(DEP_CPP_OBJPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_OBJPRO=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetOP1.h"\
	".\SetOP2.h"\
	".\SetOP3.h"\
	".\SetOP4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\EONRGUID.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNGUID.H"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\ObjProp2.obj" : $(SOURCE) $(DEP_CPP_OBJPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ObjProp2.sbr" : $(SOURCE) $(DEP_CPP_OBJPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_OBJPRO=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetOP1.h"\
	".\SetOP2.h"\
	".\SetOP3.h"\
	".\SetOP4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\EONRGUID.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNGUID.H"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_OBJPRO=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\ObjProp2.obj" : $(SOURCE) $(DEP_CPP_OBJPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ObjProp2.sbr" : $(SOURCE) $(DEP_CPP_OBJPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

DEP_CPP_OBJPRO=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetOP1.h"\
	".\SetOP2.h"\
	".\SetOP3.h"\
	".\SetOP4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\EONRGUID.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNGUID.H"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_OBJPRO=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\ObjProp2.obj" : $(SOURCE) $(DEP_CPP_OBJPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ObjProp2.sbr" : $(SOURCE) $(DEP_CPP_OBJPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

DEP_CPP_OBJPRO=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetOP1.h"\
	".\SetOP2.h"\
	".\SetOP3.h"\
	".\SetOP4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\EONRGUID.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNGUID.H"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_OBJPRO=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\ObjProp2.obj" : $(SOURCE) $(DEP_CPP_OBJPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\ObjProp2.sbr" : $(SOURCE) $(DEP_CPP_OBJPRO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\EditPage7.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_EDITP=\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DeleteDialog.h"\
	".\EditPage7.h"\
	".\ErfassPrivDlg.h"\
	".\GbmTRiAS.h"\
	".\Ospace\config.h"\
	".\Ospace\std\string"\
	".\Ospace\stl\config.h"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\config.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	{$(INCLUDE)}"\bool.h"\
	

"$(INTDIR)\EditPage7.obj" : $(SOURCE) $(DEP_CPP_EDITP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EditPage7.sbr" : $(SOURCE) $(DEP_CPP_EDITP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_EDITP=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\DeleteDialog.h"\
	".\EditPage7.h"\
	".\ErfassPrivDlg.h"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\EditPage7.obj" : $(SOURCE) $(DEP_CPP_EDITP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EditPage7.sbr" : $(SOURCE) $(DEP_CPP_EDITP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_EDITP=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\DeleteDialog.h"\
	".\EditPage7.h"\
	".\ErfassPrivDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\EditPage7.obj" : $(SOURCE) $(DEP_CPP_EDITP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EditPage7.sbr" : $(SOURCE) $(DEP_CPP_EDITP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_EDITP=\
	"..\..\..\Util\xstring.h"\
	".\DeleteDialog.h"\
	".\EditPage7.h"\
	".\ErfassPrivDlg.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_EDITP=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\EditPage7.obj" : $(SOURCE) $(DEP_CPP_EDITP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EditPage7.sbr" : $(SOURCE) $(DEP_CPP_EDITP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\EditPage7.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EditPage7.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\EditPage7.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\EditPage7.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SetNF_PG4.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_SETNF=\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\GbmTRiAS.h"\
	".\Ospace\config.h"\
	".\Ospace\std\string"\
	".\Ospace\stl\config.h"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\config.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	{$(INCLUDE)}"\bool.h"\
	

"$(INTDIR)\SetNF_PG4.obj" : $(SOURCE) $(DEP_CPP_SETNF) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetNF_PG4.sbr" : $(SOURCE) $(DEP_CPP_SETNF) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_SETNF=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetNF_PG4.obj" : $(SOURCE) $(DEP_CPP_SETNF) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetNF_PG4.sbr" : $(SOURCE) $(DEP_CPP_SETNF) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_SETNF=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\SetNF_PG4.obj" : $(SOURCE) $(DEP_CPP_SETNF) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetNF_PG4.sbr" : $(SOURCE) $(DEP_CPP_SETNF) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_SETNF=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_SETNF=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\SetNF_PG4.obj" : $(SOURCE) $(DEP_CPP_SETNF) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetNF_PG4.sbr" : $(SOURCE) $(DEP_CPP_SETNF) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\SetNF_PG4.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetNF_PG4.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\SetNF_PG4.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetNF_PG4.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\AuxUIOwner.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_AUXUI=\
	".\AuxUIOwner.h"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\GbmTRiAS.h"\
	".\Ospace\config.h"\
	".\Ospace\except\config.h"\
	".\Ospace\except\except.h"\
	".\Ospace\except\stdex.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\istream"\
	".\Ospace\std\map"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\basalgo.cc"\
	".\Ospace\stl\basalgo.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\function.h"\
	".\Ospace\stl\internal.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\map.cc"\
	".\Ospace\stl\map.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\rbtree.cc"\
	".\Ospace\stl\rbtree.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\stl\treeaux.h"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\config.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\StdAfx.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\DIRISOLE.H"\
	{$(INCLUDE)}"\EONRGUID.H"\
	{$(INCLUDE)}"\ITOOLBAR.H"\
	{$(INCLUDE)}"\OCIDL.H"\
	{$(INCLUDE)}"\TOOLGUID.H"\
	{$(INCLUDE)}"\TRIASTLB.H"\
	{$(INCLUDE)}"\XTSNGUID.H"\
	

"$(INTDIR)\AuxUIOwner.obj" : $(SOURCE) $(DEP_CPP_AUXUI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\AuxUIOwner.sbr" : $(SOURCE) $(DEP_CPP_AUXUI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_AUXUI=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\AuxUIOwner.h"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\except\config.h"\
	".\Ospace\except\except.h"\
	".\Ospace\except\stdex.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\map"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\basalgo.cc"\
	".\Ospace\stl\basalgo.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\function.h"\
	".\Ospace\stl\internal.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\map.cc"\
	".\Ospace\stl\map.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\rbtree.cc"\
	".\Ospace\stl\rbtree.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\stl\treeaux.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DIRISOLE.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\EONRGUID.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\ITOOLBAR.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OCIDL.H"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TOOLGUID.H"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\TRIASTLB.H"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNGUID.H"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\AuxUIOwner.obj" : $(SOURCE) $(DEP_CPP_AUXUI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\AuxUIOwner.sbr" : $(SOURCE) $(DEP_CPP_AUXUI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_AUXUI=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\AuxUIOwner.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\DIRISOLE.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\EONRGUID.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\ITOOLBAR.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OCIDL.H"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\except\config.h"\
	{$(INCLUDE)}"\Ospace\except\except.h"\
	{$(INCLUDE)}"\Ospace\except\stdex.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\map"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\Ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\function.h"\
	{$(INCLUDE)}"\Ospace\stl\internal.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\map.cc"\
	{$(INCLUDE)}"\Ospace\stl\map.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\Ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TOOLGUID.H"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\TRIASTLB.H"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNGUID.H"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\AuxUIOwner.obj" : $(SOURCE) $(DEP_CPP_AUXUI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\AuxUIOwner.sbr" : $(SOURCE) $(DEP_CPP_AUXUI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_AUXUI=\
	"..\..\..\Util\xstring.h"\
	".\AuxUIOwner.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\DIRISOLE.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\EONRGUID.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\ITOOLBAR.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OCIDL.H"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\except\config.h"\
	{$(INCLUDE)}"\Ospace\except\except.h"\
	{$(INCLUDE)}"\Ospace\except\stdex.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\map"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\basalgo.cc"\
	{$(INCLUDE)}"\Ospace\stl\basalgo.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\function.h"\
	{$(INCLUDE)}"\Ospace\stl\internal.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\map.cc"\
	{$(INCLUDE)}"\Ospace\stl\map.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\rbtree.cc"\
	{$(INCLUDE)}"\Ospace\stl\rbtree.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\stl\treeaux.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TOOLGUID.H"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\TRIASTLB.H"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNGUID.H"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_AUXUI=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\AuxUIOwner.obj" : $(SOURCE) $(DEP_CPP_AUXUI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\AuxUIOwner.sbr" : $(SOURCE) $(DEP_CPP_AUXUI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\AuxUIOwner.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\AuxUIOwner.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\AuxUIOwner.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\AuxUIOwner.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\DlgEditVorlage.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_DLGED=\
	".\DlgEditVorlage.h"\
	".\GbmTRiAS.h"\
	".\SetVorlagen.h"\
	".\StdAfx.h"\
	{$(INCLUDE)}"\bool.h"\
	

"$(INTDIR)\DlgEditVorlage.obj" : $(SOURCE) $(DEP_CPP_DLGED) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgEditVorlage.sbr" : $(SOURCE) $(DEP_CPP_DLGED) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_DLGED=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\DlgEditVorlage.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetVorlagen.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\DlgEditVorlage.obj" : $(SOURCE) $(DEP_CPP_DLGED) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgEditVorlage.sbr" : $(SOURCE) $(DEP_CPP_DLGED) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_DLGED=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\DlgEditVorlage.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetVorlagen.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\DlgEditVorlage.obj" : $(SOURCE) $(DEP_CPP_DLGED) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgEditVorlage.sbr" : $(SOURCE) $(DEP_CPP_DLGED) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_DLGED=\
	"..\..\..\Util\xstring.h"\
	".\DlgEditVorlage.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetVorlagen.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_DLGED=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\DlgEditVorlage.obj" : $(SOURCE) $(DEP_CPP_DLGED) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgEditVorlage.sbr" : $(SOURCE) $(DEP_CPP_DLGED) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"

DEP_CPP_DLGED=\
	"..\..\..\Util\xstring.h"\
	".\DlgEditVorlage.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetVorlagen.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_DLGED=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\DlgEditVorlage.obj" : $(SOURCE) $(DEP_CPP_DLGED) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgEditVorlage.sbr" : $(SOURCE) $(DEP_CPP_DLGED) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"

DEP_CPP_DLGED=\
	"..\..\..\Util\xstring.h"\
	".\DlgEditVorlage.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetVorlagen.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_DLGED=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\DlgEditVorlage.obj" : $(SOURCE) $(DEP_CPP_DLGED) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DlgEditVorlage.sbr" : $(SOURCE) $(DEP_CPP_DLGED) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SetVorlagen.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_SETVO=\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\GbmTRiAS.h"\
	".\Ospace\config.h"\
	".\Ospace\std\string"\
	".\Ospace\stl\config.h"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\config.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SetVorlagen.h"\
	".\StdAfx.h"\
	{$(INCLUDE)}"\bool.h"\
	

"$(INTDIR)\SetVorlagen.obj" : $(SOURCE) $(DEP_CPP_SETVO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetVorlagen.sbr" : $(SOURCE) $(DEP_CPP_SETVO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_SETVO=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetVorlagen.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetVorlagen.obj" : $(SOURCE) $(DEP_CPP_SETVO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetVorlagen.sbr" : $(SOURCE) $(DEP_CPP_SETVO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_SETVO=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetVorlagen.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\SetVorlagen.obj" : $(SOURCE) $(DEP_CPP_SETVO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetVorlagen.sbr" : $(SOURCE) $(DEP_CPP_SETVO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_SETVO=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetVorlagen.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_SETVO=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\SetVorlagen.obj" : $(SOURCE) $(DEP_CPP_SETVO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetVorlagen.sbr" : $(SOURCE) $(DEP_CPP_SETVO) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\SetVorlagen.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetVorlagen.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\SetVorlagen.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetVorlagen.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SetOP1.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_SETOP=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetOP1.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetOP1.obj" : $(SOURCE) $(DEP_CPP_SETOP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP1.sbr" : $(SOURCE) $(DEP_CPP_SETOP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_SETOP=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetOP1.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetOP1.obj" : $(SOURCE) $(DEP_CPP_SETOP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP1.sbr" : $(SOURCE) $(DEP_CPP_SETOP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_SETOP=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetOP1.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\SetOP1.obj" : $(SOURCE) $(DEP_CPP_SETOP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP1.sbr" : $(SOURCE) $(DEP_CPP_SETOP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_SETOP=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetOP1.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_SETOP=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\SetOP1.obj" : $(SOURCE) $(DEP_CPP_SETOP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP1.sbr" : $(SOURCE) $(DEP_CPP_SETOP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\SetOP1.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP1.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\SetOP1.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP1.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SetOP2.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_SETOP2=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetOP2.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetOP2.obj" : $(SOURCE) $(DEP_CPP_SETOP2) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP2.sbr" : $(SOURCE) $(DEP_CPP_SETOP2) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_SETOP2=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetOP2.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetOP2.obj" : $(SOURCE) $(DEP_CPP_SETOP2) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP2.sbr" : $(SOURCE) $(DEP_CPP_SETOP2) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_SETOP2=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetOP2.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\SetOP2.obj" : $(SOURCE) $(DEP_CPP_SETOP2) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP2.sbr" : $(SOURCE) $(DEP_CPP_SETOP2) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_SETOP2=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetOP2.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_SETOP2=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\SetOP2.obj" : $(SOURCE) $(DEP_CPP_SETOP2) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP2.sbr" : $(SOURCE) $(DEP_CPP_SETOP2) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\SetOP2.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP2.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\SetOP2.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP2.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SetOP3.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_SETOP3=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetOP3.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetOP3.obj" : $(SOURCE) $(DEP_CPP_SETOP3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP3.sbr" : $(SOURCE) $(DEP_CPP_SETOP3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_SETOP3=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetOP3.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetOP3.obj" : $(SOURCE) $(DEP_CPP_SETOP3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP3.sbr" : $(SOURCE) $(DEP_CPP_SETOP3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_SETOP3=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetOP3.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\SetOP3.obj" : $(SOURCE) $(DEP_CPP_SETOP3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP3.sbr" : $(SOURCE) $(DEP_CPP_SETOP3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_SETOP3=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetOP3.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_SETOP3=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\SetOP3.obj" : $(SOURCE) $(DEP_CPP_SETOP3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP3.sbr" : $(SOURCE) $(DEP_CPP_SETOP3) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\SetOP3.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP3.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\SetOP3.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP3.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\SetOP4.cpp

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_SETOP4=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetOP4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetOP4.obj" : $(SOURCE) $(DEP_CPP_SETOP4) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP4.sbr" : $(SOURCE) $(DEP_CPP_SETOP4) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_SETOP4=\
	"..\..\..\Util\xstring.h"\
	".\ATL11.H"\
	".\ATLBASE.H"\
	".\ATLCOM.H"\
	".\ATLCOMX.H"\
	".\ATLUTIL.H"\
	".\config\_compile.h"\
	".\config\_platfrm.h"\
	".\config\compiler.h"\
	".\config\local.h"\
	".\config\platform.h"\
	".\DEFINES.HPP"\
	".\Exceptio.hpp"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\Ospace\Com\ComErrorMacros.h"\
	".\Ospace\Com\Iterenum.h"\
	".\Ospace\Com\Iterenum.wobase.h"\
	".\Ospace\Com\Smartif.Debug.h"\
	".\Ospace\Com\Smartif.h"\
	".\Ospace\Com\Smartif.Nodebug.h"\
	".\Ospace\config.h"\
	".\Ospace\internal\fmacros.h"\
	".\Ospace\std\iosfwd"\
	".\Ospace\std\istream"\
	".\Ospace\std\ostream"\
	".\Ospace\std\string"\
	".\Ospace\stl\allocate.cc"\
	".\Ospace\stl\allocate.h"\
	".\Ospace\stl\allocimp.h"\
	".\Ospace\stl\common.h"\
	".\Ospace\stl\config.h"\
	".\Ospace\stl\iterator.cc"\
	".\Ospace\stl\iterator.h"\
	".\Ospace\stl\ops.h"\
	".\Ospace\stl\pair.h"\
	".\Ospace\stl\stlerror.h"\
	".\Ospace\string\basic.cc"\
	".\Ospace\string\basic.h"\
	".\Ospace\string\basic.ipp"\
	".\Ospace\string\config.h"\
	".\Ospace\string\search.cc"\
	".\Ospace\string\search.h"\
	".\Ospace\string\string.h"\
	".\Ospace\string\traits.cc"\
	".\Ospace\string\traits.h"\
	".\Ospace\type\prim.h"\
	".\Ospace\utility\memory.h"\
	".\SECALL.H"\
	".\SetNF_PG4.h"\
	".\SetOP4.h"\
	".\SLOCALE.H"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\Tstring"\
	".\TSTRING.HPP"\
	".\VerzSet.h"\
	".\Yxvals.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	

"$(INTDIR)\SetOP4.obj" : $(SOURCE) $(DEP_CPP_SETOP4) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP4.sbr" : $(SOURCE) $(DEP_CPP_SETOP4) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_SETOP4=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetOP4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\SetOP4.obj" : $(SOURCE) $(DEP_CPP_SETOP4) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP4.sbr" : $(SOURCE) $(DEP_CPP_SETOP4) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_SETOP4=\
	"..\..\..\Util\xstring.h"\
	".\GbmTRiAS.h"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\SetOP4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_SETOP4=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\SetOP4.obj" : $(SOURCE) $(DEP_CPP_SETOP4) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP4.sbr" : $(SOURCE) $(DEP_CPP_SETOP4) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\SetOP4.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP4.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\SetOP4.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\SetOP4.sbr" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\DIBAPI.CPP

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_DIBAP=\
	".\DIBAPI.H"\
	".\StdAfx.h"\
	

"$(INTDIR)\DIBAPI.OBJ" : $(SOURCE) $(DEP_CPP_DIBAP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DIBAPI.SBR" : $(SOURCE) $(DEP_CPP_DIBAP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_DIBAP=\
	".\DIBAPI.H"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	
NODEP_CPP_DIBAP=\
	".\SECALL.H"\
	

"$(INTDIR)\DIBAPI.OBJ" : $(SOURCE) $(DEP_CPP_DIBAP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DIBAPI.SBR" : $(SOURCE) $(DEP_CPP_DIBAP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_DIBAP=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\DIBAPI.OBJ" : $(SOURCE) $(DEP_CPP_DIBAP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DIBAPI.SBR" : $(SOURCE) $(DEP_CPP_DIBAP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_DIBAP=\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_DIBAP=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\DIBAPI.OBJ" : $(SOURCE) $(DEP_CPP_DIBAP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DIBAPI.SBR" : $(SOURCE) $(DEP_CPP_DIBAP) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\DIBAPI.OBJ" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DIBAPI.SBR" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\DIBAPI.OBJ" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DIBAPI.SBR" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\DIBFILE.CPP

!IF  "$(CFG)" == "GbmTRiAS - Win32 Release"

DEP_CPP_DIBFI=\
	".\DIBAPI.H"\
	".\StdAfx.h"\
	

"$(INTDIR)\DIBFILE.OBJ" : $(SOURCE) $(DEP_CPP_DIBFI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DIBFILE.SBR" : $(SOURCE) $(DEP_CPP_DIBFI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug"

DEP_CPP_DIBFI=\
	".\DIBAPI.H"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	
NODEP_CPP_DIBFI=\
	".\SECALL.H"\
	

"$(INTDIR)\DIBFILE.OBJ" : $(SOURCE) $(DEP_CPP_DIBFI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DIBFILE.SBR" : $(SOURCE) $(DEP_CPP_DIBFI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug"

DEP_CPP_DIBFI=\
	"..\..\..\..\INCLUDE.OT5\SLOCALE.H"\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"\work\Include.ot5\secall.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	

"$(INTDIR)\DIBFILE.OBJ" : $(SOURCE) $(DEP_CPP_DIBFI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DIBFILE.SBR" : $(SOURCE) $(DEP_CPP_DIBFI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 SmartDebug_210"

DEP_CPP_DIBFI=\
	"..\..\..\Util\xstring.h"\
	".\DIBAPI.H"\
	".\NF_OG1.h"\
	".\NF_PG1.h"\
	".\NF_PG1FL.h"\
	".\NF_PG1GB.h"\
	".\NF_PG2D.h"\
	".\NF_PG2H.h"\
	".\nf_pg3.h"\
	".\ObjProp.h"\
	".\ObjProp2.h"\
	".\OrteSet.h"\
	".\SetNF_PG4.h"\
	".\StdAfx.h"\
	".\StrasseSet.h"\
	".\Strings.h"\
	".\TriDBSet.h"\
	".\VerzSet.h"\
	"E:\Toolkit\OT51\Include\BWDef.h"\
	"E:\Toolkit\OT51\Include\plugin.h"\
	"E:\Toolkit\OT51\Include\sbarcore.h"\
	"E:\Toolkit\OT51\Include\sbarmgr.h"\
	"E:\Toolkit\OT51\Include\sdocksta.h"\
	"E:\Toolkit\OT51\Include\secall.h"\
	"E:\Toolkit\OT51\Include\slocale.h"\
	"E:\Toolkit\OT51\Include\tbarcust.h"\
	"E:\Toolkit\OT51\Include\tbarmgr.h"\
	"E:\Toolkit\OT51\Include\TBtnMenu.h"\
	"E:\Toolkit\OT51\Include\tbtnstd.h"\
	"E:\Toolkit\OT51\Include\tbtntxt.h"\
	"E:\Toolkit\OT51\Include\TMenuFrm.h"\
	"E:\Toolkit\OT51\Include\TrayIcon.h"\
	{$(INCLUDE)}"\ATL11.H"\
	{$(INCLUDE)}"\ATLBASE.H"\
	{$(INCLUDE)}"\ATLCOM.H"\
	{$(INCLUDE)}"\ATLCOMX.H"\
	{$(INCLUDE)}"\ATLUTIL.H"\
	{$(INCLUDE)}"\bool.h"\
	{$(INCLUDE)}"\BSCRGUID.H"\
	{$(INCLUDE)}"\CodeFragments.h"\
	{$(INCLUDE)}"\config\_compile.h"\
	{$(INCLUDE)}"\config\_platfrm.h"\
	{$(INCLUDE)}"\config\compiler.h"\
	{$(INCLUDE)}"\config\local.h"\
	{$(INCLUDE)}"\config\platform.h"\
	{$(INCLUDE)}"\DC.H"\
	{$(INCLUDE)}"\DEFINES.HPP"\
	{$(INCLUDE)}"\Eb.h"\
	{$(INCLUDE)}"\EBOEM.H"\
	{$(INCLUDE)}"\ERRCODES.HXX"\
	{$(INCLUDE)}"\EVENTS.H"\
	{$(INCLUDE)}"\Exceptio.hpp"\
	{$(INCLUDE)}"\IBSCRIPT.HXX"\
	{$(INCLUDE)}"\IENUMOBJ.HXX"\
	{$(INCLUDE)}"\ISTATUS.H"\
	{$(INCLUDE)}"\IXTENSN.HXX"\
	{$(INCLUDE)}"\OS2.H"\
	{$(INCLUDE)}"\Ospace\Com\ComErrorMacros.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.h"\
	{$(INCLUDE)}"\Ospace\Com\Iterenum.wobase.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Debug.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.h"\
	{$(INCLUDE)}"\Ospace\Com\Smartif.Nodebug.h"\
	{$(INCLUDE)}"\Ospace\config.h"\
	{$(INCLUDE)}"\Ospace\internal\fmacros.h"\
	{$(INCLUDE)}"\Ospace\std\iosfwd"\
	{$(INCLUDE)}"\Ospace\std\istream"\
	{$(INCLUDE)}"\Ospace\std\ostream"\
	{$(INCLUDE)}"\Ospace\std\string"\
	{$(INCLUDE)}"\Ospace\stl\allocate.cc"\
	{$(INCLUDE)}"\Ospace\stl\allocate.h"\
	{$(INCLUDE)}"\Ospace\stl\allocimp.h"\
	{$(INCLUDE)}"\Ospace\stl\common.h"\
	{$(INCLUDE)}"\Ospace\stl\config.h"\
	{$(INCLUDE)}"\Ospace\stl\iterator.cc"\
	{$(INCLUDE)}"\Ospace\stl\iterator.h"\
	{$(INCLUDE)}"\Ospace\stl\ops.h"\
	{$(INCLUDE)}"\Ospace\stl\pair.h"\
	{$(INCLUDE)}"\Ospace\stl\stlerror.h"\
	{$(INCLUDE)}"\Ospace\string\basic.cc"\
	{$(INCLUDE)}"\Ospace\string\basic.h"\
	{$(INCLUDE)}"\Ospace\string\basic.ipp"\
	{$(INCLUDE)}"\Ospace\string\config.h"\
	{$(INCLUDE)}"\Ospace\string\search.cc"\
	{$(INCLUDE)}"\Ospace\string\search.h"\
	{$(INCLUDE)}"\Ospace\string\string.h"\
	{$(INCLUDE)}"\Ospace\string\traits.cc"\
	{$(INCLUDE)}"\Ospace\string\traits.h"\
	{$(INCLUDE)}"\Ospace\type\prim.h"\
	{$(INCLUDE)}"\Ospace\utility\memory.h"\
	{$(INCLUDE)}"\QuickDraw.h"\
	{$(INCLUDE)}"\TRIASM.HXX"\
	{$(INCLUDE)}"\Tstring"\
	{$(INCLUDE)}"\TSTRING.HPP"\
	{$(INCLUDE)}"\XTENCUNK.HXX"\
	{$(INCLUDE)}"\XTENSION.H"\
	{$(INCLUDE)}"\XTENSNM.HXX"\
	{$(INCLUDE)}"\XTENSNX.H"\
	{$(INCLUDE)}"\XTSNAUX.HXX"\
	{$(INCLUDE)}"\XTSNPROP.HXX"\
	{$(INCLUDE)}"\Yxvals.h"\
	
NODEP_CPP_DIBFI=\
	"E:\Toolkit\OT51\Include\ProAll.h"\
	"E:\Toolkit\OT51\Include\ProPre.h"\
	

"$(INTDIR)\DIBFILE.OBJ" : $(SOURCE) $(DEP_CPP_DIBFI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DIBFILE.SBR" : $(SOURCE) $(DEP_CPP_DIBFI) "$(INTDIR)"\
 "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Release_210"


"$(INTDIR)\DIBFILE.OBJ" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DIBFILE.SBR" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ELSEIF  "$(CFG)" == "GbmTRiAS - Win32 Debug_210"


"$(INTDIR)\DIBFILE.OBJ" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"

"$(INTDIR)\DIBFILE.SBR" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\GbmTRiAS.pch"


!ENDIF 

# End Source File
# End Target
# End Project
################################################################################