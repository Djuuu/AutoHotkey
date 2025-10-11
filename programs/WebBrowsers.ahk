;;;;;;;;;;;;;;; Web browser shortcuts ;;;;;;;;;;;;;;;;;;;;;;;;;;

FirefoxWindowName := "ahk_exe firefox.exe"
ChromeWindowName := "ahk_exe chrome.exe"
OperaWindowName := "ahk_exe opera.exe"
EdgeWindowName := "ahk_exe msedge.exe"

#HotIf WinActive(FirefoxWindowName) or WinActive(ChromeWindowName) or WinActive(EdgeWindowName)
	;;;;;;;; Mouse Back (F20) ;;;;;;;;;;;;;;;;;;;
	F20::Send "{F12}" ;;; -> Dev tools
	^F20::Send "^j" ;;; -> Downloads

	;;;;;;;; Mouse Forward (F21) ;;;;;;;;;;;;;;;;
	 F21::Send "{F3}" ;;; -> Find next
	^F21::Send "^f" ;;; -> Find
#HotIf

#HotIf WinActive(OperaWindowName)
	;;;;;;;; Mouse Back (F20) ;;;;;;;;;;;;;;;;;;;
	 F20::Send "+^i" ;;; -> Dev tools
	^F20::Send "^j" ;;; -> Downloads

	;;;;;;;; Mouse Forward (F21) ;;;;;;;;;;;;;;;;
	 F21::Send "{F3}" ;;; -> Find next
	^F21::Send "^f" ;;; -> Find
#HotIf
