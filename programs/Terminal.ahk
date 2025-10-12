;;;;;;;;;;;;;;; Windows Terminal shortcuts ;;;;;;;;;;;;;;;;;;;;;

TerminalWindowName := "ahk_exe WindowsTerminal.exe"

ClearTerm := "^l"

TmuxPrefix := "^q"
TmuxPrevWindow := "!q"
TmuxNextWindow := "!f"
TmuxPrevPane := "!s"
TmuxNextPane := "!d"
TmuxZoom := "z"
TmuxSync := "^y"

TmuxZoomPane() {
	Send TmuxPrefix
	Sleep 10
	Send TmuxZoom
}

TmuxSyncPanes() {
	Send TmuxPrefix
	Sleep 10
	Send TmuxSync
}

TmuxClearAllPanes() {
	TmuxSyncPanes
	Sleep 10

	Send ClearTerm
	Sleep 10

	TmuxSyncPanes
}

#HotIf WinActive(TerminalWindowName)

	;;;;;;;; Mouse Back (F20) ;;;;;;;;;;;;;;;;;;;

	;;; Default       ->  (clear screen)
	;;; Double-press  ->  (Tmux: clear all panes)
	F20::{
		if (A_PriorHotkey != ThisHotkey or A_TimeSincePriorHotkey > 250) {
			KeyWait "F20"
			Send ClearTerm
			return
		}
		TmuxClearAllPanes
	}
	;;; Control  ->  (Tmux: clear all panes)
	^F20::TmuxClearAllPanes

	;;;;;;;; Mouse Forward (F21) ;;;;;;;;;;;;;;;;

	;;; Default  ->  (Tmux: zoom/unzoom pane)
	F21::TmuxZoomPane
	;;; Control  ->  (Tmux: sync panes)
	^F21::TmuxSyncPanes

	;;;;;;;; Mouse Thumb wheel (F23-F24) ;;;;;;;;

	;;; Default  ->  (Tmux: previous/next window)
	F23::Send TmuxPrevWindow
	F24::Send TmuxNextWindow
	;;; Control  ->  (Tmux: previous/next pane)
	^F23::Send TmuxPrevPane
	^F24::Send TmuxNextPane

	;;;;;;;; Keyboard ;;;;;;;;;;;;;;;;;;;;;;;;;;;

	;;; Convert Ctrl + <number row key> to Alt + <number row key>
	;;;   ->  (Tmux: select window)
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
