#SingleInstance Force
SetTitleMatchMode, 2
CoordMode, Mouse, Window

tt = Forge of Empires — Mozilla Firefox ahk_class MozillaWindowClass
WinWait, %tt%
IfWinNotActive, %tt%,, WinActivate, %tt%

global ContributionCount
ContributionCount := 2
g::runit()
q::ExitApp
s::SetAmount()
p::pay()
t::upperAbort()
b::lowerAbort()
u::Unbirthday()
c::collect()
r::closeopen() ; think reopen
a::collectAfterPay()
x::nextContribution()
w::waistAClick()
z::doAll()
return
; NOTES. Foe helper  browser 100% full screen

setAmount(){

    InputBox, ContributionCount, ContributionCount, amount to contribute,, 400, 600,,,,, 20
    ContributionCount := Floor(ContributionCount/38) 
    return
}
runit()
return
sleepfor2(){
    Sleep 2000
    return
}
closeopen(){

    MouseClick, L, 693, 92 ; silly game made it harder close and reopen
    sleep 4000

    MouseClick, L, 41, 169

    return
}

sleepfor1(){
    sleep 1300
    return
}
Pay(){
    MouseClick, L,967, 455

    sleep 250

    Send, {Blind}{Numpad3}{Numpad8}

    Sleep, 250

    MouseClick, L, 1002, 453 ; pay button
    sleepfor2()
    return
}
doAll(){
    Pay()
    collectAfterPay()
    sleepfor2()
    upperAbort()
    sleepfor1() 
    lowerAbort()
    sleepfor1() 
    upperAbort()
    sleepfor1() 
    Unbirthday()
    sleepfor1() 
    upperAbort()
    sleepfor1() 
    upperAbort()
    sleepfor1() 
    closeopen()
    sleepfor1()
    upperAbort()
    sleepfor1() 
    nextContribution()
    sleepfor1() 
    return
}
collect(){
    MouseClick, L, 557, 223 ;collect
    return
}
waistAClick(){
    MouseClick, L, 41, 169 ; waist a click
}
collectAfterPay(){

    MouseClick, L, 41, 169

    sleepfor1()

    MouseClick, L, 41, 169

    sleepfor1()

    MouseClick, L, 41, 169

    sleepfor1()

    collect()
    sleepfor1()
    waistAClick()()

    Return
}

lowerAbort(){
    MouseClick, L, 308, 564 ; lower abort
    return
}
upperAbort(){
    MouseClick, L, 336, 505
    return
}
Unbirthday(){
    MouseClick, L, 461, 450 ; pay coins

    sleepfor1()

    MouseClick, L, 463, 515

    sleepfor1()

    MouseClick, L, 556, 476 ; collect the unbirthday

    sleepfor2()
    MouseClick, L, 41, 169 ; waist a click

}
nextContribution(){
    MouseClick, L, 577, 1016

    sleepfor1()

    MouseClick, L, 577, 1015

    sleepfor1()

    MouseClick, L, 987, 461

    sleepfor1()
    return
}
; ------------------------------------------------------------------------------------------
runit(){
    Loop, %ContributionCount%
    {
        doAll() 
    }
    return
}