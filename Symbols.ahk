;;;;;;;;;;;;;;; Capslock pseudo-modifier ;;;;;;;;;;;;;;;

;;; Symbols

Capslock & w::Send ⚠️

Capslock & x::
    If (GetKeyState("Shift", "P"))
        Send ❌
    Else If (GetKeyState("Alt", "P"))
        Send ☒
    Else
        Send x
Return

Capslock & c::Send ☐

Capslock & v::
    If (GetKeyState("Shift", "P"))
        Send ✔️
    Else If (GetKeyState("Alt", "P"))
        Send ☑
    Else
        Send 🗸
Return

Capslock & h::
    If (GetKeyState("Shift", "P"))
        Send ⌛
    Else If (GetKeyState("Alt", "P"))
        Send ⌛
    Else
        Send ⏳
Return

Capslock & g::Send 🎸
Capslock & m::Send 🎶
Capslock & n::Send 🎵

Capslock & y::Send ¯\_(ツ)_/¯
