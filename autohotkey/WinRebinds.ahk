#Requires AutoHotkey v2.0

Persistent
; Rebinds Windows Shortcuts

; Win + Q sends Alt + F4
!q::Send "!{F4}"

; Win + . sends Ctrl + Win + Right Arrow
!.::Send "^#{Right}"

; Win + , sends Ctrl + Win + Left Arrow
!,::Send "^#{Left}"

;Ctrl + Alt + T opens Windows Terminal
^!t::Run "wt.exe" 

; Win + T opens Windows Terminal
#t::{
	Run "wt.exe"  ; Ensure Windows Terminal is in your PATH
	Sleep 1000
	WinWait "ahk_exe wt.exe"
	Sleep 500
	WinActivate "Terminal"
}

; Alt + Enter opens alacritty
!Enter::{
	;Run ".\alacritty.ahk"
	Run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Alacritty\Alacritty.lnk" ; Ensure Alacritty is in your PATH
	;Send "!{Space}"
	Sleep 100
	;Send ">C:\Program Files\Alacritty\alacritty.exe"
	;Send "{Enter}"
	Sleep 1000
	WinWait "ahk_exe alacritty.exe"
	Sleep 500
	WinActivate "Alacritty"
}

; Alt + H and L keys to move focus to other windows 
!H::Send "^!{Tab}"
!L::Send "^!{Tab}"

#HotIf WinActive("Task Switching")
	H::Send "{Left}"
	L::Send "{Right}"
#HotIf

; Alt + Shift + vim keys move window around, replacing Win + arrow keys

	; Move window left
	<^!<+h::Send "#{Left}"

	; Move window right
	<^!<+l::Send "#{Right}"

	; Minimize window
	<^!<+j::Send "#{Down}"

	; Restor/maximize window
	<^!<+k::Send "#{Up}"

; Alt + N Launches Browser
	!N::Run "C:\programdata\microsoft\windows\start menu\programs\firefox.lnk"

; Use F1 to Play/Pause media
F1::{
	Send("{Media_Play_Pause}")
}

; Use F2 to Mute Audio
F2::{
	SoundSetMute(-1)
}

