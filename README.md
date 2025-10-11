# AutoHotkey

My [AutoHotkey](https://www.autohotkey.com/) v2 scripts

## Scripts


* `Install.ahk`  
  Installs local configuration file if it doesn't exist.

* `AutoHotkey.ahk`  
  Main script.

## Configuration

`config.local.ahk`

```autohotkey
;;; Screen resolution configuration
ResolutionXLeft := -1920
ResolutionYLeft := 1080
ResolutionXRight := 1920
ResolutionYRight := 1080

;;; Alternate monitor source configuration
; Value depends on your monitor brand & model
; This tool can help: https://www.nirsoft.net/utils/control_my_monitor.html
DisplayToToggle        := "DISPLAY1"
AlternateMonitorSource := 1

;;; Default search URL
defaultSearchUrl := "https://duckduckgo.com/?q="
;defaultSearchUrl := "https://www.google.com/search?q="
;defaultSearchUrl := "https://www.bing.com/search?q="
;defaultSearchUrl := "https://www.qwant.com/?q="

;;; Bash aliases URL
bashAliasesUrl := "https://tardot.dev/sh"
```

## Documentation

* [AutoHotkey v2 documentation](https://www.autohotkey.com/docs/v2/)
