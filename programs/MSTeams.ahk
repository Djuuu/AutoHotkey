;;;;;;;;;;;;;;; MS Teams shortcuts ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

msTeamsMute() {
	if (WinExist("ahk_exe ms-teams.exe")) {
		WinActivate ; Use the window found by WinExist.
		Send "^+M" ; Mute/Unmute (Ctrl + Shift + M)
	} else {
		MsgBox "MS Teams window not found"
	}
}

Capslock & Esc::msTeamsMute  ;;; {Esc} - MS Teams mute/unmute
