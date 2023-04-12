#Requires AutoHotkey v2.0

if (!FileExist(A_ScriptDir . "\config.local.ahk")) {
	MsgBox "Creating configuration file: config.local.ahk"
	FileCopy A_ScriptDir . "\config.local.ahk.dist",
	         A_ScriptDir . "\config.local.ahk"
} else {
	MsgBox "Conf file exists"
}
