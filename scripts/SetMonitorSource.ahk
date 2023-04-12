;;;;;;;;;;;;;;; Monitor source toggle ;;;;;;;;;;;;;;;

#Include <Monitor>   ;;; Monitor config class
#Include <JXON>      ;;; JSON serializer

;;; WIP
setMonitorSource(source)
{
	mon := Monitor() ; Create new class instance
	moninfo := mon.GetInfo()

	MsgBox Jxon_Dump(source)
	MsgBox Jxon_Dump(moninfo)
}

;;; https://stackoverflow.com/questions/18553867/change-monitor-input-source
;;; TODO: fix for AutoHotkey V2
oldSetMonitorSource(source)
{
    ; Initialize Monitor handle
;    hMon := DllCall("MonitorFromPoint"
;        , "int64", 0 ; point on monitor
;        , "uint", 1) ; flag to return primary monitor on failure

;	MsgBox "hMon: " hMon

;    ; Get Physical Monitor from handle
;;    VarSetCapacity(Physical_Monitor, (A_PtrSize ? A_PtrSize : 4) + 128, 0)
;    VarSetStrCapacity(&Physical_Monitor, (A_PtrSize ? A_PtrSize : 4) + 128)

;	Physical_Monitor_buffer := Buffer(4 + 128)
;	Physical_Monitor_buffer := Buffer(8 + 256)

;    DllCall("dxva2\GetPhysicalMonitorsFromHMONITOR"
;        , "int", hMon               ; monitor handle
;        , "uint", 1                 ; monitor array size
;        , "int", &Physical_Monitor) ; point to array with monitor
;
;    hPhysMon := NumGet(Physical_Monitor, "Int")
;
;	MsgBox "Physical_Monitor: " Physical_Monitor
;	MsgBox "Physical_Monitor: " StrGet(Physical_Monitor)

;	ListVars

;    DllCall("dxva2\SetVCPFeature"
;        , "int", hPhysMon
;        , "char", 0x60 ; VCP code for Input Source Select
;        , "uint", source)
;
;    ; Destroy handle
;    DllCall("dxva2\DestroyPhysicalMonitor", "int", hPhysMon)
}
