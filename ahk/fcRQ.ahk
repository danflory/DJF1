SetTitleMatchMode, 2
        CoordMode, Mouse, Window

        tt = Forge Commander | Full suite of FOE Tools for desk ahk_class Chrome_WidgetWin_1
            WinWait, %tt%
        IfWinNotActive, %tt%,, WinActivate, %tt%

global ContributionCount
r::runit()
q::ExitApp
s::SetAmount()
 
 

; NOTES. Forge commander.FireFox full screen 100% FC right menu open @ 150
; set next RQ to collect 15
; open the correct gb to donate to
; set FC side to the gb leveling Log LogWindow
; take final note on how many FP were donated to estimate total work left for day.
setAmount(){
 
 
      InputBox, ContributionCount, ContributionCount, amount to contribute,, 400, 600,,,,, 20
  ContributionCount   := Floor(ContributionCount/15) 
    return
}
runit()
return
sleepfor2(){
    Sleep 2000
    return
}
sleepfor1(){
    sleep 1000
    return
}
; ------------------------------------------------------------------------------------------
runit(){
    Loop, %ContributionCount%
    {

        
 

MouseClick, L, 996, 454

sleepfor1()

Send, {Blind}2

sleep 20

Send, {Blind}5

sleep 150
MouseClick, L, 1053, 456

sleepfor1()

MouseClick, L, 47, 166

sleepfor1()

MouseClick, L, 47, 166

sleepfor1()

MouseClick, L, 47, 166

sleepfor1()

MouseClick, L, 555, 215 ; collect
sleep 100
MouseClick, L, 555, 226 
sleepfor2()

MouseClick, L, 47, 166 ; waist a click

sleepfor1()

MouseClick, L, 292, 507

sleepfor1()

MouseClick, L, 304, 563

sleepfor1()

MouseClick, L, 298, 502

sleepfor2()

MouseClick, L, 470, 446 ; coins

sleepfor1()

MouseClick, L, 465, 510

sleepfor1()

MouseClick, L, 549, 479 ; Collect1()
sleepfor2()

MouseClick, L, 47, 166 ;waist a click

sleepfor1()



MouseClick, L, 330, 499

sleepfor1()

MouseClick, L, 330, 499

sleepfor1()

MouseClick, L, 330, 499

sleepfor1()

MouseClick, L, 581, 1023

sleepfor1()

MouseClick, L, 581, 1023

sleepfor2()

MouseClick, L, 997, 459 

sleepfor1()
        
    }
    return
}