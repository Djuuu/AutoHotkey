;;;;;;;;;;;;;;;;;;;;;;; Windows Terminal ;;;;;;;;;;;;;;;;;;;;;;;

TerminalWindowName := "ahk_exe WindowsTerminal.exe"

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
