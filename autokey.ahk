+F1::ExitApp
+F2::
{
global
if y = 1
{
y := 0
}
else
{
MsgBox "Wiggling has started."
y := 1
}
}
x := 0
y := 1
wigmuch := 16
; wigmuch value must be more than 10
wiglength := 100
; This is set to 170 seconds
wigdelay := 170000
77:
; MouseWiggler Script by @itsabttime
; Works with AutoHotkey v2.02 
; https://www.autohotkey.com/download/ 
; Notepad is the Window Name. It is Case Sensitive
;  adjustable values wigdelay see above
; adjustable value wigmuch (how much to wig) see above
; adjustable value wiglength 
if y = 1
{
if WinExist("Notepad") 
{ 

WinActivate
again:
if x >= 10
{
;Start Mouse Wiggler Body ==== 
;Remove/replace the following line if you are manually setting coordinates
MouseGetPos &xpos, &ypos 
xpos += wiglength
MouseMove xpos, ypos 
Sleep 200 
ypos -= wiglength
MouseMove xpos, ypos 
Sleep 200 
xpos -= wiglength
MouseMove xpos, ypos 
ypos += wiglength
Sleep 200 
MouseMove xpos, ypos 
;Stop Mouse Wiggler Body====
x := x-1
goto again
}
else
{
x := wigmuch
}
WinMinimize 
}
}

; Default Timeout: 170 seconds
Sleep wigdelay
Goto 77