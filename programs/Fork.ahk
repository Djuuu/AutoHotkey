;;;;;;;;;;;;;;; Fork shortcuts ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

ForkWindowName := "ahk_exe Fork.exe"

#HotIf WinActive(ForkWindowName)

	;;;;;;;; Mouse Back (F20) ;;;;;;;;;;;;;;;;;;;
	 F20::Send "^é" ;;; -> All Commits view
	^F20::Send "^," ;;; -> Preferences

	;;;;;;;; Mouse Forward (F21) ;;;;;;;;;;;;;;;;
	 F21::Send "^&" ;;; -> Changes view
	^F21::Send "^p" ;;; -> Quick Launch

#HotIf
