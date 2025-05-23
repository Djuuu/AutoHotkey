﻿#Requires AutoHotkey v2.0

#SingleInstance Force ; Skip dialog box and replace old instance automatically (similar to Reload)

;;;;;;;; Fixed states ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SetCapsLockState "AlwaysOff"
SetNumLockState "AlwaysOn"

;;;;;;;; AutoHotkey reload ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#HotIf GetKeyState("Ctrl", "P")
	Capslock & r::Reload
#HotIf

;;;;;;;; Configuration ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#Include %A_ScriptDir%\config.local.ahk

;;;;;;;; General shortcuts ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#Include %A_ScriptDir%\shortcuts\Backtick.ahk           ;;; {²}         - Backtick (non-dead key)
#Include %A_ScriptDir%\shortcuts\SpecialCharacters.ahk  ;;; {éèçà...}   - Uppercase accented characters, etc.
#Include %A_ScriptDir%\shortcuts\CurrentDate.ahk        ;;; {DT}        - Current date/time
#Include %A_ScriptDir%\shortcuts\F13-F24.ahk            ;;; {F1-F12}    - F13-F24
#Include %A_ScriptDir%\shortcuts\QwertyBits.ahk         ;;; {^$ù*}      - QWERTY bits (brackets, braces)
#Include %A_ScriptDir%\shortcuts\Symbols-Teams.ahk      ;;; {wxcvhgmny} - Symbols ⚠️ ❌✔️ ⏳ 🎸 🎶🎵 (ツ) (MS Teams)
#Include %A_ScriptDir%\shortcuts\Symbols.ahk            ;;; {wxcvhgmny} - Symbols ⚠️ ❌✔️ ⏳ 🎸 🎶🎵 (ツ)

;;;;;;;; Program shortcuts ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#Include %A_ScriptDir%\programs\FancyZones.ahk
#Include %A_ScriptDir%\programs\PowerDimmer.ahk
#Include %A_ScriptDir%\programs\MSTeams.ahk
#Include %A_ScriptDir%\programs\PhpStorm.ahk

;;;;;;;; Scripts ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#Include %A_ScriptDir%\scripts\MoveMouseToOtherMonitor.ahk
Capslock & Tab::moveMouseToOtherMonitor  ;;; {Tab} - Move mouse to other monitor and activates underlying window

#Include %A_ScriptDir%\scripts\SetMonitorSource.ahk
Pause::setMonitorSource(AlternateMonitorSource, DisplayToToggle)  ;;; {Pause} - Toggle monitor source

#Include %A_ScriptDir%\scripts\SearchSelection.ahk
Capslock & s::searchSelection()  ;;; {s} - Search selected text in Google

#Include %A_ScriptDir%\scripts\SwitchApplicationWindow.ahk
!²::switchApplicationWindow()  ;;; {Alt}{²} - Switch between windows of same application

; Load bash aliases
if (IsSet(bashAliasesUrl)) {
#HotIf IsSet(bashAliasesUrl) and GetKeyState("Alt", "P")
	Capslock & z::Send "a=" . bashAliasesUrl . "; . /dev/fd/3 3<<-EOF{Enter}$({{} curl -sL $a || wget -qO - $a;{}} 2>/dev/null){Enter}EOF{Enter}"
#HotIf
#HotIf IsSet(bashAliasesUrl)
	Capslock & z::Send "a=" . bashAliasesUrl . "; . <({{} curl -sL $a || wget -qO - $a;{}} 2>/dev/null){Enter}"
#HotIf
}

;;;;;;;; Program launch shortcuts ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#c::Run "Calc"
#n::Run "Notepad++"
