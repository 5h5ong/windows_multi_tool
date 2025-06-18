#Requires AutoHotkey v2.0
; #NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases. (In v2, #NoEnv is default and deprecated)
#SingleInstance Force  ; Ensures only one instance of this script is running.
; SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir A_ScriptDir  ; Ensures a consistent starting directory.

; Change Hangul to F12
; For Doom Emacs to ignore native IME and use Korean input
#HotIf WinActive("Doom Emacs")
    SC138::F13
#HotIf

; Remap CapsLock to Control
CapsLock::Ctrl

; ^!n::{
;     ; 1) Doom Emacs 실행 경로 (예시)
;     emacsPath := "C:\Users\meme\scoop\apps\emacs\current\bin\emacs.exe"
;     ; 2) 열고자 하는 Org 파일 윈도우 경로
;     ; notesPath  := "C:\Users\meme\notes\journal.org"
    
;     ; 3) Doom Emacs 실행
;     Run('"' emacsPath '" ',,, &PID)
    
;     ; 4) Doom Emacs 창이 뜰 때까지 대기 (창 제목에 "Doom Emacs" 문자열 포함 검출)
;     WinWait("*Doom Emacs*")
;     ; 5) 실행된 창에 포커스
;     WinActivate("*Doom Emacs*")
; }