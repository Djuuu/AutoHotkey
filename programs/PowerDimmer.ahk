;;;;;;;;;;;;;;; PowerDimmer - focus ;;;;;;;;;;;;;;;

#Include <TrayIcon>  ;;; Tray icon management library

Capslock & f::
{
	if (! FileExist(A_AppData . "\PowerDimmer\PowerDimmer.exe")) {
		MsgBox "PowerDimmer.exe not found"
		return
	}

	if (!GetKeyState("Shift", "P")) {
		Send "#{Home}"
		Run A_AppData . "\PowerDimmer\PowerDimmer.exe", A_AppData . "\PowerDimmer"
	} else {
		; Remove tray icon (before closing parent process)
		for value in TrayIcon_GetInfo("PowerDimmer.exe") {
			TrayIcon_Remove(value['hwnd'], value['uid'])
		}

		ProcessClose "PowerDimmer.exe"
	}
}
