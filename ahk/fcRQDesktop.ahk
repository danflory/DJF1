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
p::pay()
t::upperAbort()
b::lowerAbort()
u::Unbirthday()
c::collect()
r::closeopen() ; think reopen
a::collectAfterPay()
x::nextContribution()
w::waistAClick()
z::collect1()
o::doAll() ; do it once
return
; NOTES. Foe helper  browser 90% full screen

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

    MouseClick, L, 628, 85 ; silly game made it harder close and reopen
    sleep 4000

    MouseClick, L, 23, 137

    return
}

sleepfor1(){
    sleep 1300
    return
}
Pay(){
    MouseClick, L,999, 463

    sleep 250

    Send, {Blind}{Numpad3}{Numpad8}

    Sleep, 1000
  
    MouseClick, L, 1040, 453 ; pay button
    sleepfor2()
    return
}
collect1(){
    collectAfterPay()
    sleepfor2()
    upperAbort()
    sleepfor1() 
    lowerAbort()
      
    closeopen()
    sleepfor1()
    upperAbort()
     
    closeopen()
     sleepfor1()
    Unbirthday()
    sleepfor1() 
    upperAbort()
    sleepfor1() 
    upperAbort()
    
    closeopen()
    sleepfor1()
    upperAbort()
     
    nextContribution()
    sleepfor1() 
    return
}
doAll(){
    Pay()
    Collect1()
    return

}
collect(){
    MouseClick, L, 503, 204 ;collect
 
    return
}
waistAClick(){
    MouseClick, L, 41, 169 ; waist a click
}
collectAfterPay(){

    MouseClick, L, 	28, 142

    sleepfor1()

    MouseClick, L,	28, 142

    sleepfor1()

    MouseClick, L, 	28, 142

    sleepfor1()

    collect()
    sleepfor1()
    waistAClick()

    Return
}

lowerAbort(){
    MouseClick, L, 	268, 501 ; lower abort
    sleep 125
    MouseClick, L, 	268, 501

    return
}
upperAbort(){
    MouseClick, L, 264, 452
    sleep 125
       MouseClick, L, 264, 452
    return
}
Unbirthday(){
    MouseClick, L, 414, 405 ; pay coins

    sleepfor1()

    MouseClick, L, 417, 453

    sleepfor1()

    MouseClick, L, 486, 421 ; collect the unbirthday
 sleep 125
    MouseClick, L, 486, 421 ; collect the unbirthday

    sleepfor2()
    MouseClick, L, 41, 169 ; waist a click

}
nextContribution(){
   ; MouseClick, L, 577, 1016
    MouseClick, L, 520, 1021

    sleepfor2()

   ; MouseClick, L, 577, 1015
    MouseClick, L, 520, 1021

    sleepfor2()

    MouseClick, L, 1011, 468
  ;sleep 125
  ;  MouseClick, L, 1008, 481

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