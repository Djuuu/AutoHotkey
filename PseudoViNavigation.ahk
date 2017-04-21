;;;;;;;;;;;;;;; Capslock pseudo-modifier ;;;;;;;;;;;;;;;

;;; pseudo-vi navigation

Capslock & h::
	If (GetKeyState("Shift", "P"))
         Send +{Left}
	Else Send  {Left}
Return

Capslock & j::
	If (GetKeyState("Shift", "P"))
		If (GetKeyState("Alt", "P"))
			 Send !+{Down}
		Else Send  +{Down}
	Else     Send   {Down}

Return

Capslock & k::
	If (GetKeyState("Shift", "P"))
		If (GetKeyState("Alt", "P"))
			 Send !+{Up}
		Else Send  +{Up}
		Else Send   {Up}
Return

Capslock & l::
	If (GetKeyState("Shift", "P"))
		 Send +{Right}
	Else Send  {Right}
Return


Capslock & b::
    If (GetKeyState("Shift", "P"))
         Send +^{Left}
    Else Send  ^{Left}
Return

Capslock & m::
    If (GetKeyState("Shift", "P"))
         Send +^{Right}
    Else Send  ^{Right}
Return

Capslock & u::
    If (GetKeyState("Shift", "P"))
         Send +{Home}
    Else Send  {Home}
Return

Capslock & i::
    If (GetKeyState("Shift", "P"))
         Send +{End}
    Else Send  {End}
Return
