;;;;;;;;;;;;;;; Numpad emulation with Capslock pseudo-modifier ;;;;;;;;;;;;;;;

Capslock & PrintScreen::Send 7
Capslock & ScrollLock::Send 8
Capslock & Pause::Send 9

Capslock & Ins::Send 4
Capslock & Home::Send 5
Capslock & PgUp::Send 6

Capslock & Del::Send 1
Capslock & End::Send 2
Capslock & PgDn::Send 3

Capslock & Up::
	If (GetKeyState("Shift", "P"))
         Send {+}
	Else Send {,}
Return

Capslock & Down::
	If (GetKeyState("Shift", "P"))
         Send -
	Else Send {.}
Return

Capslock & Left::
	If (GetKeyState("Shift", "P"))
         Send /
	Else Send 0
Return

Capslock & Right::
	If (GetKeyState("Shift", "P"))
         Send *
	Else Send {Enter}
Return
