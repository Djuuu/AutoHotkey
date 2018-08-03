;;;;;;;;;;;;;;; Current date ;;;;;;;;;;;;;;;

;;; {D}  -  Current date
Capslock & d::
    FormatTime, CurrentDateTime,, yyyy-MM-dd
    SendInput %CurrentDateTime%
    return
Return

;;; {T}  -  Current time
Capslock & t::
    FormatTime, CurrentDateTime,, HH:mm:ss
    SendInput %CurrentDateTime%
    return
Return
