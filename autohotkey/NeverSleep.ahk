#Requires AutoHotkey v2.0

Persistent  ;Keep the script running
MoveMouse
SetTimer MoveMouse, 360000  ; 5 minutes in milliseconds (5 * 60 * 1000)

MoveMouse()
{
    ; Get current mouse position and assign to variables
    MouseGetPos(&xPos, &yPos)
    
    ; Move mouse 1 pixel right
    MouseMove xPos - 1, yPos, 50
    ;MsgBox "Moving Left..."
    
    Sleep 1000

    ; Move mouse back to original position
    MouseMove xPos + 1, yPos, 50
}

