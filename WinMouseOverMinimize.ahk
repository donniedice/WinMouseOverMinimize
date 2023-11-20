#MButton::                                      ; Define a hotkey for the middle mouse button
  MouseGetPos,,, aID                            ; Get the current mouse position and store the active window ID in the variable "aID"
  WinGet, Style, Style, ahk_id %aID%            ; Get the window style of the active window and store it in the variable "Style"
  If ( Style & ( WS_MINIMIZEBOX := 0x20000) )   ; Check if the window has the WS_MINIMIZEBOX style (minimize button)
     WinMinimize, ahk_id %aID%                  ; Minimize the active window
Return
