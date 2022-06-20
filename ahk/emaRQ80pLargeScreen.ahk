

SetTitleMatchMode, 2
CoordMode, Mouse, Window

tt = Forge of Empires - Google Chrome ahk_class Chrome_WidgetWin_1
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%
    q::ExitApp
r::runit()
return
runit(){
    Loop, 100
    {
        Sleep, 1195

        MouseClick, L, 445, 439

        Sleep, 906

        MouseClick, L, 442, 504

        Sleep, 914

        MouseClick, L, 496, 468

        Sleep, 2477

        Send, {Blind}{Escape}

        Sleep, 1062

        MouseClick, L, 335, 510 ; 1

        Sleep, 1195

        MouseClick, L, 330, 550 ; 2

        Sleep, 1093

        MouseClick, L, 329, 518 ; 3

        Sleep, 1039

        MouseClick, L, 329, 518 ; 4

        Sleep, 1140

        MouseClick, L, 324, 542 ; 5

        Sleep, 1179

        MouseClick, L, 321, 518 ; 6

        Sleep, 1054

        MouseClick, L, 321, 518 ; 7

        Sleep, 1429

        MouseClick, L, 313, 552 ; 8

        Sleep, 1078

        MouseClick, L, 313, 552 ; 9

        Sleep, 1312

        MouseClick, L, 317, 520 ; 10

        Sleep, 1000

    }
}