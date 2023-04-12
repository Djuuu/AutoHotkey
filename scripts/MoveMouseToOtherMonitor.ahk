;;;;;;;;;;;;;;; Move mouse to other monitor ;;;;;;;;;;;;;;;

moveMouseToOtherMonitor() {

	CoordMode "Mouse", "Screen" ; Mouse coordinates relative to screen

	MouseGetPos &xpos, &ypos

	If (ResolutionXLeft < 0) {
		screenSeparation := 0
	} else {
		screenSeparation := ResolutionXLeft
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

	MouseMove Xdest, Ydest

	; Activate window under cursor
	MouseGetPos ,,&WinUMID
	WinActivate "ahk_id " . WinUMID
}
