#SingleInstance Force
SetTitleMatchMode, 2
CoordMode, Mouse, Window

tt = Forge of Empires — Mozilla Firefox ahk_class MozillaWindowClass
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

global ContributionCount
ContributionCount := 2
g::runit() ; the loop that does many
q::ExitApp
s::SetAmount()
 
t::upperAbort()
b::lowerAbort()
u::Unbirthday()
 
r::closeopen() ; think reopen
 
;x::nextContribution()
w::waistAClick()
z::collect1()
o::doAll() ; do it once
return
; NOTES. Foe helper  browser 90% full screen
Scroll4Down(){
    loop 4{
    click WheelDown
    sleep 100

    }
    return
}
setAmount(){

    InputBox, ContributionCount, ContributionCount, amount to contribute,, 400, 600,,,,, 20
    ContributionCount := Floor(ContributionCount/7) 
    return
}
runit()
return
sleepfor2(){
    Sleep 2000
    return
}
closeopen(){

    MouseClick, L, 752, 98 ; silly game made it harder close and reopen
    sleep 4000

    MouseClick, L, 41, 169
sleepfor1()
Scroll4Down()

    return
}

sleepfor1(){
    sleep 1300
    return
}

collect1(){
    
     loop 6{
        upperAbort()
        sleepfor1()
     }
    closeopen()
    return
}
doAll(){
Unbirthday()
    Collect1()
    return

}
 
waistAClick(){
    MouseClick, L, 41, 169 ; waist a click
}


lowerAbort(){
    MouseClick, L, 359, 621 ; lower abort
 

    return
}
upperAbort(){
    MouseClick, L, 336, 595
    sleep 125
       MouseClick, L, 336, 575
    return
}
Unbirthday(){
    MouseClick, L, 505, 502 ; pay coins
 
    sleepfor1()

    MouseClick, L, 503, 565

    sleepfor1()

    MouseClick, L, 618, 529 ; collect the unbirthday
  ; collect the unbirthday

    sleepfor2()
    MouseClick, L, 41, 169 ; waist a click

}

; ------------------------------------------------------------------------------------------
runit(){
    Loop, %ContributionCount%
    {
        doAll() 
    }
    return
}