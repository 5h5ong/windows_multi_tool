#Requires AutoHotkey v2.0
#SingleInstance Force  ; Ensures only one instance of this script is running.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir A_ScriptDir  ; Ensures a consistent starting directory.

; Change Hangul to F12
; For Doom Emacs to ignore native IME and use Korean input
#HotIf WinActive("ahk_exe msrdc.exe")
    SC138::F13
#HotIf

; Remap CapsLock to Control
CapsLock::Ctrl

^!n::{
    emacsWin := "Doom Emacs ahk_exe msrdc.exe"
    if WinExist(emacsWin)
    {
        WinActivate emacsWin
    }
    else
    {
        emacsPath := IniRead(A_ScriptDir "\config.ini", "Paths", "Emacs")
        if (emacsPath = "")
        {
            MsgBox "Emacs path not found in config.ini"
            return
        }
        Run emacsPath
    }
}