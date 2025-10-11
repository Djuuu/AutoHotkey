;;;;;;;;;;;;;;; Windows Explorer ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

ExplorerWindowName := "ahk_exe explorer.exe ahk_class CabinetWClass"

#HotIf WinActive(ExplorerWindowName)

	;;;;;;;; Mouse Thumb wheel (F23-F24) ;;;;;;;;
	F23::Send "{Left}" ;;; -> Previous tab
	F24::Send "{Right}"  ;;; -> Next tab

#HotIf
