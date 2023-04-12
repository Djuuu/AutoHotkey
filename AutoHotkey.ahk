#Requires AutoHotkey v2.0

#SingleInstance Force ; Skip dialog box and replace old instance automatically (similar to Reload)

;;;;;;;; Fixed states ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
SetCapsLockState "AlwaysOff"
SetNumLockState "AlwaysOn"

;;;;;;;; AutoHotkey reload ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Capslock & R::Reload

;;;;;;;; Configuration ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#Include %A_ScriptDir%\config.local.ahk

;;;;;;;; General shortcuts ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#Include %A_ScriptDir%\shortcuts\Backtick.ahk           ;;; {²}         - Backtick (non-dead key)
#Include %A_ScriptDir%\shortcuts\SpecialCharacters.ahk  ;;; {éèçà...}   - Uppercase accented characters, etc.
#Include %A_ScriptDir%\shortcuts\CurrentDate.ahk        ;;; {DT}        - Current date/time
#Include %A_ScriptDir%\shortcuts\F13-F24.ahk            ;;; {F1-F12}    - F13-F24
#Include %A_ScriptDir%\shortcuts\QwertyBits.ahk         ;;; {^$ù*}      - QWERTY bits (brackets, braces)
#Include %A_ScriptDir%\shortcuts\Symbols.ahk            ;;; {wxcvhgmny} - Symbols ⚠️ ❌ ✔️ ⏳ 🎸 🎶 🎵 ¯\_(ツ)_/¯

;;;;;;;; Program shortcuts ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#Include %A_ScriptDir%\programs\FancyZones.ahk
#Include %A_ScriptDir%\programs\LeDimmer.ahk
#Include %A_ScriptDir%\programs\PhpStorm.ahk

;;;;;;;; Scripts ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#Include %A_ScriptDir%\scripts\MoveMouseToOtherMonitor.ahk
Capslock & Tab::moveMouseToOtherMonitor  ;;; {Tab} - Move mouse to other monitor and activates underlying window

#Include %A_ScriptDir%\scripts\SetMonitorSource.ahk
Pause::setMonitorSource(AlternateMonitorSource)  ;;; {Pause} - Toggle monitor source
Capslock & q::setMonitorSource(AlternateMonitorSource)  ;;; TMP

;;;;;;;; Program launch shortcuts ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#c::Run "Calc"
#n::Run "Notepad++"
