# VISUALTEXT Generated NMAKE File, Based on kb.dsp
!IF "$(CFG)" == "" 
CFG=kb - Win32 Debug
!MESSAGE No configuration specified. Defaulting to kb - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "kb - Win32 Release" && "$(CFG)" != "kb - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "kb.mak" CFG="kb - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "kb - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "kb - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 


!IF  "$(CFG)" == "kb - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\kb.dll"


CLEAN :
	-@erase "$(INTDIR)\*.obj"
	-@erase "$(INTDIR)\*.pch"
	-@erase "$(INTDIR)\*.idb"
	-@erase "$(INTDIR)\*.pdb"
	-@erase "$(OUTDIR)\*.dll"
	-@erase "$(OUTDIR)\*.exp"
	-@erase "$(OUTDIR)\*.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /GX /Zi /O2 /I "$(TAI)\include\Api" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "KB_EXPORTS" /Fp"$(INTDIR)\kb.pch" /Yu"StdAfx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32 
RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\kb.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib libkbm.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\kb.pdb" /debug /machine:I386 /def:"kb.def" /out:"$(OUTDIR)\kb.dll" /implib:"$(OUTDIR)\kb.lib" /libpath:"$(TAI)\lib" /fixed:no 

LINK32_OBJS= \
	"$(INTDIR)\Con0.obj" \
	"$(INTDIR)\Ptr0.obj" \
	"$(INTDIR)\St0.obj" \
	"$(INTDIR)\Sym0.obj" \
	"$(INTDIR)\Sym1.obj" \
	"$(INTDIR)\Sym2.obj" \
	"$(INTDIR)\Sym3.obj" \
	"$(INTDIR)\Sym4.obj" \
	"$(INTDIR)\Sym5.obj" \
	"$(INTDIR)\Sym6.obj" \
	"$(INTDIR)\Sym7.obj" \
	"$(INTDIR)\Sym8.obj" \
	"$(INTDIR)\Sym9.obj" \
	"$(INTDIR)\Sym10.obj" \
	"$(INTDIR)\Sym11.obj" \
	"$(INTDIR)\Sym12.obj" \
	"$(INTDIR)\Sym13.obj" \
	"$(INTDIR)\Sym14.obj" \
	"$(INTDIR)\Sym15.obj" \
	"$(INTDIR)\Sym16.obj" \
	"$(INTDIR)\Sym17.obj" \
	"$(INTDIR)\Sym18.obj" \
	"$(INTDIR)\Sym19.obj" \
	"$(INTDIR)\Sym20.obj" \
	"$(INTDIR)\Sym21.obj" \
	"$(INTDIR)\Sym22.obj" \
	"$(INTDIR)\Sym23.obj" \
	"$(INTDIR)\Sym24.obj" \
	"$(INTDIR)\Sym25.obj" \
	"$(INTDIR)\Sym26.obj" \
	"$(INTDIR)\Sym27.obj" \
	"$(INTDIR)\Sym28.obj" \
	"$(INTDIR)\Sym29.obj" \
	"$(INTDIR)\Sym30.obj" \
	"$(INTDIR)\Sym31.obj" \
	"$(INTDIR)\Sym32.obj" \
	"$(INTDIR)\Sym33.obj" \
	"$(INTDIR)\Sym34.obj" \
	"$(INTDIR)\Sym35.obj" \
	"$(INTDIR)\Sym36.obj" \
	"$(INTDIR)\Sym37.obj" \
	"$(INTDIR)\Sym38.obj" \
	"$(INTDIR)\Sym39.obj" \
	"$(INTDIR)\Sym40.obj" \
	"$(INTDIR)\Sym41.obj" \
	"$(INTDIR)\Sym42.obj" \
	"$(INTDIR)\Sym43.obj" \
	"$(INTDIR)\Sym44.obj" \
	"$(INTDIR)\Sym45.obj" \
	"$(INTDIR)\Sym46.obj" \
	"$(INTDIR)\Sym47.obj" \
	"$(INTDIR)\Sym48.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\kb.obj" \
	"$(INTDIR)\kb_setup.obj" \
	"$(INTDIR)\Cc_code.obj" \
	"$(INTDIR)\Con_ini.obj" \
	"$(INTDIR)\Ptr_ini.obj" \
	"$(INTDIR)\St_ini.obj" \
	"$(INTDIR)\Sym_ini.obj"

"$(OUTDIR)\kb.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "kb - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\kb.dll"


CLEAN :
	-@erase "$(INTDIR)\*.obj"
	-@erase "$(INTDIR)\*.pch"
	-@erase "$(INTDIR)\*.idb"
	-@erase "$(INTDIR)\*.pdb"
	-@erase "$(OUTDIR)\*.dll"
	-@erase "$(OUTDIR)\*.exp"
	-@erase "$(OUTDIR)\*.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /GX /Zi /Od /I "$(TAI)\include\Api" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "KB_EXPORTS" /Fp"$(INTDIR)\kb.pch" /Yu"StdAfx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32 
RSC=rc.exe
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\kb.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib libkbmd.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\kb.pdb" /debug /machine:I386 /def:"kb.def" /out:"$(OUTDIR)\kb.dll" /implib:"$(OUTDIR)\kb.lib" /libpath:"$(TAI)\lib" /fixed:no 

LINK32_OBJS= \
	"$(INTDIR)\Con0.obj" \
	"$(INTDIR)\Ptr0.obj" \
	"$(INTDIR)\St0.obj" \
	"$(INTDIR)\Sym0.obj" \
	"$(INTDIR)\Sym1.obj" \
	"$(INTDIR)\Sym2.obj" \
	"$(INTDIR)\Sym3.obj" \
	"$(INTDIR)\Sym4.obj" \
	"$(INTDIR)\Sym5.obj" \
	"$(INTDIR)\Sym6.obj" \
	"$(INTDIR)\Sym7.obj" \
	"$(INTDIR)\Sym8.obj" \
	"$(INTDIR)\Sym9.obj" \
	"$(INTDIR)\Sym10.obj" \
	"$(INTDIR)\Sym11.obj" \
	"$(INTDIR)\Sym12.obj" \
	"$(INTDIR)\Sym13.obj" \
	"$(INTDIR)\Sym14.obj" \
	"$(INTDIR)\Sym15.obj" \
	"$(INTDIR)\Sym16.obj" \
	"$(INTDIR)\Sym17.obj" \
	"$(INTDIR)\Sym18.obj" \
	"$(INTDIR)\Sym19.obj" \
	"$(INTDIR)\Sym20.obj" \
	"$(INTDIR)\Sym21.obj" \
	"$(INTDIR)\Sym22.obj" \
	"$(INTDIR)\Sym23.obj" \
	"$(INTDIR)\Sym24.obj" \
	"$(INTDIR)\Sym25.obj" \
	"$(INTDIR)\Sym26.obj" \
	"$(INTDIR)\Sym27.obj" \
	"$(INTDIR)\Sym28.obj" \
	"$(INTDIR)\Sym29.obj" \
	"$(INTDIR)\Sym30.obj" \
	"$(INTDIR)\Sym31.obj" \
	"$(INTDIR)\Sym32.obj" \
	"$(INTDIR)\Sym33.obj" \
	"$(INTDIR)\Sym34.obj" \
	"$(INTDIR)\Sym35.obj" \
	"$(INTDIR)\Sym36.obj" \
	"$(INTDIR)\Sym37.obj" \
	"$(INTDIR)\Sym38.obj" \
	"$(INTDIR)\Sym39.obj" \
	"$(INTDIR)\Sym40.obj" \
	"$(INTDIR)\Sym41.obj" \
	"$(INTDIR)\Sym42.obj" \
	"$(INTDIR)\Sym43.obj" \
	"$(INTDIR)\Sym44.obj" \
	"$(INTDIR)\Sym45.obj" \
	"$(INTDIR)\Sym46.obj" \
	"$(INTDIR)\Sym47.obj" \
	"$(INTDIR)\Sym48.obj" \
	"$(INTDIR)\StdAfx.obj" \
	"$(INTDIR)\kb.obj" \
	"$(INTDIR)\kb_setup.obj" \
	"$(INTDIR)\Cc_code.obj" \
	"$(INTDIR)\Con_ini.obj" \
	"$(INTDIR)\Ptr_ini.obj" \
	"$(INTDIR)\St_ini.obj" \
	"$(INTDIR)\Sym_ini.obj"

"$(OUTDIR)\kb.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("kb.dep")
!INCLUDE "kb.dep"
!ELSE 
!MESSAGE Warning: cannot find "kb.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "kb - Win32 Release" || "$(CFG)" == "kb - Win32 Debug"

SOURCE=.\StdAfx.cpp

!IF  "$(CFG)" == "kb - Win32 Release"

CPP_SWITCHES=/nologo /MD /W3 /GX /Zi /O2 /I "$(TAI)\include\Api" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "KB_EXPORTS" /Fp"$(INTDIR)\kb.pch" /Yc"StdAfx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\kb.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ELSEIF  "$(CFG)" == "kb - Win32 Debug"

CPP_SWITCHES=/nologo /MDd /W3 /Gm /GX /Zi /Od /I "$(TAI)\include\Api" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "KB_EXPORTS" /Fp"$(INTDIR)\kb.pch" /Yc"StdAfx.h" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

"$(INTDIR)\StdAfx.obj"	"$(INTDIR)\kb.pch" : $(SOURCE) "$(INTDIR)"
	$(CPP) @<<
  $(CPP_SWITCHES) $(SOURCE)
<<


!ENDIF 

SOURCE=.\Cc_code.cpp

"$(INTDIR)\Cc_code.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Con_ini.cpp

"$(INTDIR)\Con_ini.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"


SOURCE=.\kb.cpp

"$(INTDIR)\kb.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"


SOURCE=.\kb_setup.cpp

"$(INTDIR)\kb_setup.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Ptr_ini.cpp

"$(INTDIR)\Ptr_ini.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\St_ini.cpp

"$(INTDIR)\St_ini.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym_ini.cpp

"$(INTDIR)\Sym_ini.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Con0.cpp

"$(INTDIR)\Con0.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Ptr0.cpp

"$(INTDIR)\Ptr0.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\St0.cpp

"$(INTDIR)\St0.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym0.cpp

"$(INTDIR)\Sym0.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym1.cpp

"$(INTDIR)\Sym1.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym2.cpp

"$(INTDIR)\Sym2.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym3.cpp

"$(INTDIR)\Sym3.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym4.cpp

"$(INTDIR)\Sym4.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym5.cpp

"$(INTDIR)\Sym5.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym6.cpp

"$(INTDIR)\Sym6.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym7.cpp

"$(INTDIR)\Sym7.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym8.cpp

"$(INTDIR)\Sym8.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym9.cpp

"$(INTDIR)\Sym9.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym10.cpp

"$(INTDIR)\Sym10.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym11.cpp

"$(INTDIR)\Sym11.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym12.cpp

"$(INTDIR)\Sym12.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym13.cpp

"$(INTDIR)\Sym13.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym14.cpp

"$(INTDIR)\Sym14.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym15.cpp

"$(INTDIR)\Sym15.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym16.cpp

"$(INTDIR)\Sym16.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym17.cpp

"$(INTDIR)\Sym17.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym18.cpp

"$(INTDIR)\Sym18.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym19.cpp

"$(INTDIR)\Sym19.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym20.cpp

"$(INTDIR)\Sym20.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym21.cpp

"$(INTDIR)\Sym21.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym22.cpp

"$(INTDIR)\Sym22.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym23.cpp

"$(INTDIR)\Sym23.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym24.cpp

"$(INTDIR)\Sym24.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym25.cpp

"$(INTDIR)\Sym25.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym26.cpp

"$(INTDIR)\Sym26.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym27.cpp

"$(INTDIR)\Sym27.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym28.cpp

"$(INTDIR)\Sym28.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym29.cpp

"$(INTDIR)\Sym29.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym30.cpp

"$(INTDIR)\Sym30.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym31.cpp

"$(INTDIR)\Sym31.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym32.cpp

"$(INTDIR)\Sym32.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym33.cpp

"$(INTDIR)\Sym33.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym34.cpp

"$(INTDIR)\Sym34.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym35.cpp

"$(INTDIR)\Sym35.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym36.cpp

"$(INTDIR)\Sym36.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym37.cpp

"$(INTDIR)\Sym37.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym38.cpp

"$(INTDIR)\Sym38.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym39.cpp

"$(INTDIR)\Sym39.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym40.cpp

"$(INTDIR)\Sym40.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym41.cpp

"$(INTDIR)\Sym41.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym42.cpp

"$(INTDIR)\Sym42.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym43.cpp

"$(INTDIR)\Sym43.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym44.cpp

"$(INTDIR)\Sym44.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym45.cpp

"$(INTDIR)\Sym45.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym46.cpp

"$(INTDIR)\Sym46.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym47.cpp

"$(INTDIR)\Sym47.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"

SOURCE=.\Sym48.cpp

"$(INTDIR)\Sym48.obj" : $(SOURCE) "$(INTDIR)" "$(INTDIR)\kb.pch"


!ENDIF 


