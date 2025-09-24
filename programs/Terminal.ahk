;;;;;;;;;;;;;;;;;;;;;;; Windows Terminal ;;;;;;;;;;;;;;;;;;;;;;;

TerminalWindowName := "ahk_exe WindowsTerminal.exe"

ClearTerm := "^l"

TmuxPrefix := "^q"
TmuxPrevWindow := "!q"
TmuxNextWindow := "!f"
TmuxPrevPane := "!s"
TmuxNextPane := "!d"
TmuxZoom := "z"
TmuxSync := "^y"

;;;;;;;; Mouse Back (F15) ;;;;;;;;

;;; Default       ->  (clear screen)
;;; Double-press  ->  (Tmux: clear all panes)
F15::{
	if (A_PriorHotkey != ThisHotkey or A_TimeSincePriorHotkey > 250) {
		KeyWait "F15"
		Send ClearTerm
		return
	}
	Send "^{F15}"
}

;;; Control  ->  (Tmux: clear all panes)
^F15::{
	Send TmuxPrefix
	Sleep 10
	Send TmuxSync
	Sleep 10

	Send ClearTerm
	Sleep 10

	Send TmuxPrefix
	Sleep 10
	Send TmuxSync
}

;;;;;;;; Mouse Forward (F16) ;;;;;;;;

;;; Default  ->  (Tmux: zoom/unzoom pane)
F16::{
	Send TmuxPrefix
	Sleep 10
	Send TmuxZoom
}

;;; Control  ->  (Tmux: sync panes)
^F16::{
	Send TmuxPrefix
	Sleep 10
	Send TmuxSync
}

;;;;;;;; Mouse Thumb wheel (F17-F18) ;;;;;;;;

;;; Default  ->  (Tmux: previous/next window)
F17::Send TmuxPrevWindow
F18::Send TmuxNextWindow

;;; Control  ->  (Tmux: previous/next pane)
^F17::Send TmuxPrevPane
^F18::Send TmuxNextPane

;;;;;;;; Windows Terminal - keyboard ;;;;;;;;

;;; Convert Ctrl + <number row key> to Alt + <number row key>
;;;   ->  (Tmux: select window)
#HotIf WinActive(TerminalWindowName)
	^&::Send "!&" ; 1
	^é::Send "!é" ; 2
	^"::send '!"' ; 3
	^'::Send "!'" ; 4
	^(::Send "!(" ; 5

	^-::Send "!-" ; 6
	^è::Send "!è" ; 7
	^_::Send "!_" ; 8
	^ç::Send "!ç" ; 9
	^à::Send "!à" ; 0
#HotIf
