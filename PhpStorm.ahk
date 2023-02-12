;;;;;;;;;;;;;;; PhpStorm mouse shortcuts ;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;; Back (F20) ;;;;;;;;;;;;

  F20::Send ^+{F12}    ;;; Default      ->  Hide all tool windows
^!F20::Send ^!l        ;;; Control+Alt  ->  Reformat code
 !F20::Send {Left} !l  ;;; Alt          ->  (move left and) Align carets


;;;;;;;; Forward (F21) ;;;;;;;;;

 F21::Send {F3}   ;;; Default  ->  Find next
+F21::Send +{F3}  ;;; Shift    ->  Find previous
^F21::Send ^{F3}  ;;; Control  ->  Find word at caret

  !F21::Send !j    ;;; Alt                ->  Add selection for next occurrence
 +!F21::Send +!j   ;;; Shift+Alt          ->  Unselect occurrence
+^!F21::Send ^+!j  ;;; Shift+Control+Alt  ->  Select all occurrences


;;;;;;;; Thumb wheel (F23-F24) ;;;;;;;;

;;; Default  ->  Previous/next tab  {Ctrl [+ Shift] + Tab}
F23::Send ^+{Tab}
F24::Send ^{Tab}

;;; Alt  ->  Shrink/Expand selection  {Alt + (Down|Up)}
!F23::Send !{Down}
!F24::Send !{Up}

;;; Shift + Alt  ->  Navigate Back/Forward  {Shift + Alt + (Left|Right)}
+!F23::Send +!{Left}
+!F24::Send +!{Right}

;;; Ctrl [+ (Shift|Alt)]  ->  Collapse/Expand (all / recursively)  {Ctrl [+ (Shift|Alt)] + ({)}|{=})}
 ^F23::Send ^)
 ^F24::Send ^{=}
+^F23::Send +^)
+^F24::Send +^{=}
^!F23::Send ^!)
^!F24::Send ^!{=}
