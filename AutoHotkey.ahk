;;;;;;;;;;;;;;; Init ;;;;;;;;;;;;;;;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force  ; Force singleinstance
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Set consistent working directory

CoordMode, Mouse, Screen ; Mouse coordinates relative to screen

#Include %A_ScriptDir%\ScreeRes.cnf.ahk ; Screen resolutions configuration

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
#Include %A_ScriptDir%\GoogleSearch.ahk

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

;;;;;;;;;;;;;;; Capslock pseudo-modifier ;;;;;;;;;;;;;;;

;;; {P}  -  Politeness e-mail template
Capslock & p::
    Send Bonjour,{enter}{enter}{enter}{enter}Cordialement, {up}{up}
Return

;;; {Y}  -  ¯\_(ツ)_/¯
Capslock & y::
    Send ¯\_(ツ)_/¯
Return

;;; {^$ù*}  -  qwerty bits (brackets, braces)
#Include %A_ScriptDir%\QwertyBits.ahk

;;; {hjkl}  -  pseudo-vi navigation
#Include %A_ScriptDir%\PseudoViNavigation.ahk

;;; {Tab}  -  Move mouse to other monitor
#Include %A_ScriptDir%\MouseSwitchMonitor.ahk
