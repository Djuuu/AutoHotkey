;;;;;;;;;;;;;;; Symbols ⚠️ ❌ ✔️ ⏳ 🎸 🎶 🎵 ¯\_(ツ)_/¯ ;;;;;;;;;;;;;;;

Capslock & w::Send "⚠️"

Capslock & x::Send "❌"
Capslock & v::Send "✔️"

Capslock & h::Send "⏳"

Capslock & y::Send "¯\_(ツ)_/¯"

#HotIf GetKeyState("Alt", "P")
	Capslock & x::Send "☒"
	Capslock & c::Send "☐"
	Capslock & v::Send "☑"

	Capslock & h::Send "⌛"

	Capslock & y::Send "¯\\_(ツ)_/¯"
#HotIf

#HotIf GetKeyState("Shift", "P")
	Capslock & v::Send "✔"
#HotIf

Capslock & g::Send "🎸"
Capslock & m::Send "🎶"
Capslock & n::Send "🎵"
