;;;;;;;;;;;;;;; Capslock pseudo-modifier ;;;;;;;;;;;;;;;

; #Include %A_ScriptDir%\ScreeRes.cnf.ahk ; Screen resolutions configuration
; #Include ScreeRes.cnf.ahk ; Screen resolutions configuration

;;; {Tab}  -  Move mouse to other monitor and activates underlying window
Capslock & Tab::

    MouseGetPos, xpos, ypos
    
    If (ResolutionXLeft < 0) {
        screenSeparation = 0
    } else {
        screenSeparation = %ResolutionXLeft%
    }

    If (xpos > screenSeparation) { 
        ; Go to left screen
        Xdest := ResolutionXLeft / 2
        Ydest := ResolutionYLeft / 2
    } else {
        ; Go to right screen
        Xdest := screenSeparation + ResolutionXRight / 2
        Ydest := ResolutionYRight / 2
    }

    MouseMove, Xdest, Ydest

    ; activates window under the cursor
    MouseGetPos,,, WinUMID
    WinActivate, ahk_id %WinUMID%
Return
