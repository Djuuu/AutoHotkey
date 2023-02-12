﻿;;;;;;;;;;;;;;; Init ;;;;;;;;;;;;;;;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force  ; Force singleinstance
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Set consistent working directory

;;; Tray icon management library
;;; https://www.autohotkey.com/boards/viewtopic.php?p=9186#p9186
#Include %A_ScriptDir%\TrayIcon.ahk
TrayIcon_Remove_Program(sExeName)
{
    programIcons := TrayIcon_GetInfo(sExeName)
    Loop % programIcons.MaxIndex() {
        TrayIcon_Remove(programIcons[A_Index].hwnd, programIcons[A_Index].uid)
    }
}

CoordMode, Mouse, Screen ; Mouse coordinates relative to screen

#Include %A_ScriptDir%\ScreeRes.cnf.ahk ; Screen resolutions configuration
#Include %A_ScriptDir%\MonitorSource.cnf.ahk ; Alternate monitor source configuration

;;;;;;;;;;;;;;; Variables, parameters ;;;;;;;;;;;;;;;

RegRead, OutputVar, HKEY_CLASSES_ROOT, http\shell\open\command 
StringReplace, OutputVar, OutputVar," 
SplitPath, OutputVar,,OutDir,,OutNameNoExt, OutDrive 
browser=%OutDir%\%OutNameNoExt%.exe 

;;;;;;;;;;;;;;; Fixed states ;;;;;;;;;;;;;;;
SetCapsLockState, AlwaysOff
SetNumLockState, AlwaysOn
SetScrollLockState, AlwaysOff

;;;;;;;;;;;;;;; One key shortcuts ;;;;;;;;;;;;;;;

;;; {²}  -  Google Search
;#Include %A_ScriptDir%\GoogleSearch.ahk

;;; {²}  -  Non-dead Backtick key
#Include %A_ScriptDir%\Backtick.ahk

;;;;;;;;;;;;;;; Program shortcuts ;;;;;;;;;;;;;;;
#n::Run Notepad
#c::Run Calc

;;;;;;;;;;;;;;; AutoHotkey reload ;;;;;;;;;;;;;;;

Capslock & R::GoSub DoReload
DoReload:
    Reload
    Sleep 1000 ; If successful, the reload will close this instance during the Sleep, so the line below will never be reached.
    MsgBox, 4,, The script could not be reloaded. Would you like to open it for editing?
    IfMsgBox, Yes, Edit
Return

;;;;;;;;;;;;;;; AltGr special characters ;;;;;;;;;;;;;;;

#Include %A_ScriptDir%\SpecialCharacters.ahk    ;;; {éèçà...} - Uppercase accented characters, etc.

;;;;;;;;;;;;;;; Capslock pseudo-modifier ;;;;;;;;;;;;;;;

#Include %A_ScriptDir%\QwertyBits.ahk           ;;; {^$ù*}    -  qwerty bits (brackets, braces)
#Include %A_ScriptDir%\PseudoViNavigation.ahk   ;;; {hjkl}    -  pseudo-vi navigation
#Include %A_ScriptDir%\MouseSwitchMonitor.ahk   ;;; {Tab}     -  Move mouse to other monitor
#Include %A_ScriptDir%\NumpadEmulation.ahk      ;;; {#}       -  Numpad emulation
#Include %A_ScriptDir%\Shrug.ahk                ;;; {Y}       -  ¯\_(ツ)_/¯
#Include %A_ScriptDir%\BonjourCordialement.ahk  ;;; {P}       -  Politeness e-mail template
#Include %A_ScriptDir%\CurrentDate.ahk          ;;; {DT}      -  Current date/time
#Include %A_ScriptDir%\Ballot.ahk               ;;; {xcv}     -  Ballot box ☒ ☐ ☑
#Include %A_ScriptDir%\F13-F24.ahk              ;;; {F1-F12}  -  F13-F24

;;;;;;;;;;;;;;; PhpStorm ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#Include %A_ScriptDir%\PhpStorm.ahk

;;;;;;;;;;;;;;; PowerToys - FancyZones ;;;;;;;;;;;;;;;

Capslock & 1::SendInput ^#!{&}
;Capslock & 2::SendInput ^#!{é}
Capslock & 2::SendInput ^#!{&}
Capslock & 3::SendInput ^#!{"}
Capslock & 4::SendInput ^#!{'}

;;;;;;;;;;;;;;; Focus ;;;;;;;;;;;;;;;
Capslock & f::
    If (!GetKeyState("Shift", "P")) {
        Run %A_ProgramFiles%\LeDimmer\LeDimmer.exe -alpha 225 -hideOnDesktop
        Send #{Home}
    } Else {
        TrayIcon_Remove_Program("LeDimmer.exe")
        Process, Close, LeDimmer.exe
    }
Return

;;;;;;;;;;;;;;; Monitor source ;;;;;;;;;;;;;;;
#Include %A_ScriptDir%\SetMonitorSource.ahk
ScrollLock::setMonitorSource(MainMonitorSource)
Pause::setMonitorSource(AlternateMonitorSource)
