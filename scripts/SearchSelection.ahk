;;;;;;;;;;;;;;; Search highlighted text ;;;;;;;;;;;;;;;

searchSelection() {
	searchUrl := defaultSearchUrl ?? "https://www.google.com/search?q="

	selection := copySelection()
	searchString := sanitizeSearchTerm(selection)

	Run searchUrl . searchString
}

copySelection() {
	BlockInput "On"
	prevClipboard := A_Clipboard
	A_Clipboard := ""

	Send "^c"
	BlockInput "Off"
	if !ClipWait(1) {
		return prevClipboard
	}

	selection := A_Clipboard
	A_Clipboard := prevClipboard

	return selection
}

sanitizeSearchTerm(inputStr) {
	outputStr := inputStr

	outputStr := StrReplace(outputStr, "`r")
	outputStr := StrReplace(outputStr, "`n", A_Space)
	outputStr := StrReplace(outputStr, "`"", "\`"")
	outputStr := Trim(outputStr)

	return outputStr
}
