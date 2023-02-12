;;;;;;;;;;;;;;; Capslock pseudo-modifier ;;;;;;;;;;;;;;;

;;; Focus

Capslock & f::
    If (!GetKeyState("Shift", "P")) {
        Run %A_ProgramFiles%\LeDimmer\LeDimmer.exe -alpha 225 -hideOnDesktop
        Send #{Home}
    } Else {
        TrayIcon_Remove_Program("LeDimmer.exe")
        Process, Close, LeDimmer.exe
    }
Return
