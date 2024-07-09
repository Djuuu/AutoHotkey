;;;;;;;;;;;;;;; MS Teams shortcuts ;;;;;;;;;;;;;;;;;;;;;;;

msTeamsMute() {
	if WinExist("ahk_exe Teams.exe") {
		WinActivate ; Use the window found by WinExist.
		Send "^+M" ; Mute/Unmute (Ctrl + Shift + M)
	}
}

Capslock & Esc::msTeamsMute  ;;; {Esc} - MS Teams mute/unmute
