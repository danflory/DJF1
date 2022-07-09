#SingleInstance Force
SetTitleMatchMode, 2
    CoordMode, Mouse, Window

    tt = Forge of Empires — Mozilla Firefox ahk_class MozillaWindowClass
    WinWait, %tt%
    IfWinNotActive, %tt%,, WinActivate, %tt%

global ContributionCount
ContributionCount := 2
r::runit()
q::ExitApp
s::SetAmount()

; NOTES. Foe helper  browser 100% full screen
 
setAmount(){

  InputBox, ContributionCount, ContributionCount, amount to contribute,, 400, 600,,,,, 20
  ContributionCount := Floor(ContributionCount/25) 
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
    sleepfor2()

    MouseClick, L, 41, 169

    sleepfor1()
    MouseClick, L, 41, 169
     sleepfor1()
      MouseClick, L, 41, 169
     sleepfor1()
    return
}

sleepfor1(){
  sleep 1300
  return
}

; ------------------------------------------------------------------------------------------
runit(){
  Loop,1
  {

    
    

    MouseClick, L, 1193, 455

   sleep 250

    Send, {Blind}{Numpad2}{Numpad5}

    Sleep, 250

    MouseClick, L, 1249, 453 ; pay button

    sleepfor1()

    MouseClick, L, 41, 169

    sleepfor1()

    MouseClick, L, 41, 169

    sleepfor1()

    MouseClick, L, 41, 169

    sleepfor1()

    MouseClick, L, 557, 223 ;collect

    sleepfor2()
 MouseClick, L, 41, 169 ;waist a click

    sleepfor1()
    MouseClick, L, 336, 505

    sleepfor1()

    MouseClick, L, 308, 564 ; lower abort

    sleepfor2()
     

    MouseClick, L, 306, 505
    sleep 200
     MouseClick, L, 306, 505

    sleepfor1()

    closeopen()
    

    MouseClick, L, 461, 450 ; pay coins

    sleepfor1()

    MouseClick, L, 463, 515

    sleepfor1()

    MouseClick, L, 556, 476 ; collect the unbirthday

    sleepfor2()
     MouseClick, L, 41, 169 ; waist a click

    sleepfor1()

    MouseClick, L, 326, 508

    sleepfor1()

    MouseClick, L, 326, 508

    sleepfor1()

    closeopen()
    
SoundBeep 
    MouseClick, L, 326, 508

    sleepfor1()

    MouseClick, L, 577, 1016

    sleepfor1()

    MouseClick, L, 577, 1015

    sleepfor1()

    MouseClick, L, 1213, 461

    sleepfor1()
  }
  return
}