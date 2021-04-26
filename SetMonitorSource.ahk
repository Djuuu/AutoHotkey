;;;;;;;;;;;;;;; Monitor source toggle ;;;;;;;;;;;;;;;

;;; https://stackoverflow.com/questions/18553867/change-monitor-input-source
setMonitorSource(source)
{
    ; Initialize Monitor handle
    hMon := DllCall("MonitorFromPoint"
        , "int64", 0 ; point on monitor
        , "uint", 1) ; flag to return primary monitor on failure

    ; Get Physical Monitor from handle
    VarSetCapacity(Physical_Monitor, (A_PtrSize ? A_PtrSize : 4) + 128, 0)
    DllCall("dxva2\GetPhysicalMonitorsFromHMONITOR"
        , "int", hMon               ; monitor handle
        , "uint", 1                 ; monitor array size
        , "int", &Physical_Monitor) ; point to array with monitor

    hPhysMon := NumGet(Physical_Monitor)

    DllCall("dxva2\SetVCPFeature"
        , "int", hPhysMon
        , "char", 0x60 ; VCP code for Input Source Select
        , "uint", source)

    ; Destroy handle
    DllCall("dxva2\DestroyPhysicalMonitor", "int", hPhysMon)
}
