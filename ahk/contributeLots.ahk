#SingleInstance Force

s:: setAmount()
q:: ExitApp
return
+esc::Reload
return
r::
    {
        SetTitleMatchMode, 2
        CoordMode, Mouse, Screen

        tt = Forge of Empires - Google Chrome ahk_class Chrome_WidgetWin_1
        ;value := Floor ((205)/15)
        loop %ContributionAmount%
            { 
                SoundBeep, [ Frequency, Duration]
                doOne()1515
            }
    }
Return
doOne(){ 

    sleepsome()

    MouseClick, L, 1289, 441

    sleepsome()
sleepsome()
    MouseClick, L, 1254, 439

    
sleepsome()

    Send, 15

    sleepsome()

    MouseClick, L, 1313, 431

    sleepsome()

    MouseClick, L, 46, 182

    sleepsome()

    MouseClick, L, 46, 182

    sleepsome()

    MouseClick, L, 46, 182

    sleepsome()

     

    MouseClick, L, 634, 265

    sleepsome()
      MouseClick, L, 50, 553

    sleepsome()

    MouseClick, L, 396, 585

    sleepsome()

    MouseClick, L, 390, 654

    sleepsome()

    MouseClick, L, 391, 596

    sleepsome()
    sleepsome()

    MouseClick, L, 557, 524

    sleepsome()

    MouseClick, L, 556, 610

    sleepsome()

    MouseClick, L, 670, 553

    sleepsome()

      MouseClick, L, 50, 553

    sleepsome()

    MouseClick, L, 392, 589

    sleepsome()

    MouseClick, L, 392, 589

    sleepsome()

    MouseClick, L, 392, 589

    sleepsome()

    MouseClick, L, 687, 1004

    sleepsome()

    MouseClick, L, 687, 1004

    sleepsome()

}
Return
 
Sleepsome(){
    sleep 1500
return
}

setAmount(){
      InputBox, ContributionAmount, ContributionAmount, amount to contribute,, 400, 600,,,,, 20
    value := Floor(ContributionAmount/15) 
    return
}