; PerfMon.def : Declares the module parameters.

DESCRIPTION 'Schnittstelle zu Performance Monitor (WinNT only) V@A.@B.@C, Copyrightę #@D'

EXPORTS
	DllCanUnloadNow			@1 PRIVATE
	DllGetClassObject		@2 PRIVATE
	DllRegisterServer		@3 PRIVATE
	DllUnregisterServer		@4 PRIVATE
	OpenPerformanceData		@5 PRIVATE
	CollectPerformanceData	@6 PRIVATE
	ClosePerformanceData	@7 PRIVATE
	PerfMon::GetOrCreateContext=?GetOrCreateContext@PerfMon@@YAJPBGPAPAUIPerfContext@1@@Z	@8
