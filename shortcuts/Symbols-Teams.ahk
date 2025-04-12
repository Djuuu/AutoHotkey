
;;;;;;;;;;;;;;; Symbols ⚠️ ❌✔️ ⏳ 🎸 🎶🎵 (ツ) ;;;;;;;;;;;;;;;

MsTeamsWIndowName := "ahk_exe ms-teams.exe"

#HotIf WinActive(MsTeamsWIndowName) and GetKeyState("Alt", "P")
	Capslock & v::Send "(checkmark)"       ; ✔️
#HotIf
#HotIf WinActive(MsTeamsWIndowName)
	;Capslock & a::Send "(atom)"            ; ⚛️

	;Capslock & r::Send "(rocket)"          ; 🚀

	Capslock & w::Send "(warning)"          ; ⚠️
	Capslock & c::Send "(constructionsign)" ; 🚧

	Capslock & x::Send "(crossmark)"       ; ❌
	Capslock & v::Send "(checkmarkbutton)" ; ✅
#HotIf

#HotIf WinActive(MsTeamsWIndowName) and GetKeyState("Alt", "P")
	Capslock & h::Send "(hourglassdone)" ; ⌛
#HotIf
#HotIf WinActive(MsTeamsWIndowName)
	Capslock & h::Send "(holdon)"        ; ⏳
#HotIf

#HotIf WinActive(MsTeamsWIndowName) and GetKeyState("Alt", "P")
	Capslock & u::Send "(signofthehorns)" ; 🤘
#HotIf
#HotIf WinActive(MsTeamsWIndowName) and GetKeyState("Shift", "P")
	Capslock & u::Send "(n)"              ; 👎
#HotIf
#HotIf WinActive(MsTeamsWIndowName)
	Capslock & u::Send "(y)"              ; 👍
#HotIf

#HotIf WinActive(MsTeamsWIndowName)
	Capslock & i::Send "(information)" ; ℹ️
#HotIf

#HotIf WinActive(MsTeamsWIndowName) and GetKeyState("Alt", "P")
	Capslock & l::Send "(detective)"            ; 🕵️
#HotIf
#HotIf WinActive(MsTeamsWIndowName) and GetKeyState("Shift", "P")
	Capslock & l::Send "(magnifyingglassright)" ; 🔎
#HotIf
#HotIf WinActive(MsTeamsWIndowName)
	Capslock & l::Send "(magnifyingglassleft)"  ; 🔍
#HotIf

#HotIf WinActive(MsTeamsWIndowName) and GetKeyState("Alt", "P")
	Capslock & ,::Send "(exclamationquestionmark)" ; ⁉️
	Capslock & !::Send "(doubleexclamation)"       ; ‼️
#HotIf
#HotIf WinActive(MsTeamsWIndowName) and GetKeyState("Shift", "P")
	Capslock & ,::Send "(whitequestionmark)"    ; ❔
	Capslock & !::Send "(whiteexclamationmark)" ; ❕
#HotIf
#HotIf WinActive(MsTeamsWIndowName)
	Capslock & ,::Send "(questionmark)"    ; ❓
	Capslock & !::Send "(exclamationmark)" ; ❗
#HotIf

#HotIf WinActive(MsTeamsWIndowName)
	Capslock & g::Send "(guitar)"               ; 🎸
	Capslock & m::Send "(multiplemusicalnotes)" ; 🎶
	Capslock & n::Send "(music)"                ; 🎵

	Capslock & p::Send "(poop)" ; 💩
#HotIf
