#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases
#SingleInstance Force  ; Ensures only one instance of the script is running
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory

^+z::  ; Ctrl+Shift+Z
{
    Send, ^c  ; Copy selected text
    Sleep, 50  ; Small delay to ensure copy is complete
    Send, ^t  ; Open new tab
    Sleep, 50  ; Small delay
    Send, ^v  ; Paste the copied text
    Sleep, 50  ; Small delay
    Send, {Enter}  ; Press Enter
    return
}
