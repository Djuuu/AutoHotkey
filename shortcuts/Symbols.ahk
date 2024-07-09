;;;;;;;;;;;;;;; Symbols ⚠️ ❌✔️ ⏳ 🎸 🎶🎵 (ツ) ;;;;;;;;;;;;;;;

Capslock & a::Send "⚛️"

Capslock & w::Send "⚠️"
Capslock & c::Send "🚧"

Capslock & x::Send "❌"
Capslock & v::Send "✔️"
#HotIf GetKeyState("Shift", "P")
	Capslock & v::Send "✔"
#HotIf

#HotIf GetKeyState("Alt", "P")
	Capslock & x::Send "☒"
	Capslock & c::Send "☐"
	Capslock & v::Send "☑"
#HotIf

Capslock & y::Send "¯\_(ツ)_/¯"
#HotIf GetKeyState("Alt", "P")
	Capslock & y::Send "¯\\_(ツ)_/¯"
#HotIf

Capslock & h::Send "⏳"
#HotIf GetKeyState("Alt", "P")
	Capslock & h::Send "⌛"
#HotIf

Capslock & u::Send "👍"
#HotIf GetKeyState("Shift", "P")
	Capslock & u::Send "👎"
#HotIf
#HotIf GetKeyState("Alt", "P")
	Capslock & u::Send "🤘"
#HotIf

Capslock & i::Send "ℹ️"

Capslock & l::Send "🔍"
#HotIf GetKeyState("Alt", "P")
	Capslock & l::Send "🕵️"
#HotIf
#HotIf GetKeyState("Shift", "P")
	Capslock & l::Send "🔎"
#HotIf

Capslock & ,::Send "❓"
Capslock & !::Send "❗"
#HotIf GetKeyState("Shift", "P")
	Capslock & ,::Send "❔"
	Capslock & !::Send "❕"
#HotIf
#HotIf GetKeyState("Alt", "P")
	Capslock & ,::Send "⁉️"
	Capslock & !::Send "‼️"
#HotIf

Capslock & g::Send "🎸"
Capslock & m::Send "🎶"
Capslock & n::Send "🎵"

Capslock & p::Send "💩"
