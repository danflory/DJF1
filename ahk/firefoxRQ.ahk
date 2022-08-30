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

    MouseClick, L, 752, 98 ; silly game made it harder close and reopen
  sleep 4000

  MouseClick, L, 41, 169

  return
}

sleepfor1(){
  sleep 1300
  return
}
Pay(){
  MouseClick, L, 1214, 447
  ;1193, 455
  ;1214, 447

  sleep 250

  Send, {Blind}{Numpad3}{Numpad8}

  Sleep, 250

  MouseClick, L, 1272, 441 
  ;1249, 453 ; pay button
  ;1272, 441 
  sleepfor2()
  return
}
collect1(){
  collectAfterPay()
   sleepfor2()
  upperAbort()
   sleepfor1() 
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
  MouseClick, L, 557, 223 ;collect
    sleep 125
     MouseClick, L, 557, 253
  return
}
waistAClick(){
   MouseClick, L, 41, 169 ; waist a click
}
collectAfterPay(){
 
    MouseClick, L, 41, 179

  sleepfor1()

    MouseClick, L, 41, 179

  sleepfor1()

  MouseClick, L, 41, 169

  sleepfor1()
  
  collect()
    sleepfor1()
    waistAClick()
  
  Return
}

lowerAbort(){
  MouseClick, L, 308, 564 ; lower abort
    sleep 125
    MouseClick, L, 308, 594

  return
}
upperAbort(){
     MouseClick, L, 336, 505
    sleep 125
       MouseClick, L, 336, 535
     return
}
Unbirthday(){
    MouseClick, L, 505, 460 ; pay coins

    sleepfor1()

    MouseClick, L, 503, 535

    sleepfor1()

    MouseClick, L, 586, 496 ; collect the unbirthday
 sleep 125
    MouseClick, L, 583, 514 ; collect the unbirthday

    sleepfor2()
    MouseClick, L, 41, 169 ; waist a click

}
nextContribution(){
 
    MouseClick, L, 377, 1008

    sleepfor2()

 
    MouseClick, L,377, 1008

    sleepfor2()

     MouseClick, L,   1232, 452
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