@echo Debug build ...
set CL=/D_TRiAS_VER=%TRiAS_VER%
nmake -i -a -nologo -f Makefile.mak CONF=_DEBUG TRiAS_VER=%TRiAS_VER% %1 > Debug.log
