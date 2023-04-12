;;;;;;;;;;;;;;; LeDimmer - focus ;;;;;;;;;;;;;;;

#Include <TrayIcon>  ;;; Tray icon management library

Capslock & f::
{
	if (!GetKeyState("Shift", "P")) {
		Run A_ProgramFiles . "\LeDimmer\LeDimmer.exe -alpha 225 -hideOnDesktop"
		Send "#{Home}"
	} else {
		; Remove tray icon (before closing parent process)
	    for value in TrayIcon_GetInfo("LeDimmer.exe") {
			TrayIcon_Remove(value['hwnd'], value['uid'])
	    }

		ProcessClose "LeDimmer.exe"
	}
}
