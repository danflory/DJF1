#SingleInstance Force

 
 



global ContributionAmount
setAmount()
q::ExitApp
;+esc::Reload
 
r::RunIt()
 

RunIt()

    {
        SoundBeep
       

        tt = Forge of Empires   
        ;value := Floor ((205)/15)
        loop %ContributionAmount%
            { 
                SoundBeep, [ Frequency, Duration]
                doOne()1515
            }
            return
    }
 
doOne(){ 

    sleepsome()
   MouseClick, L, 1289, 441
 

    sleepsome()
sleepsome()
    MouseClick, L, 1200, 439

    ; = 2560 * 1440=3,686,400; 1920*1080=2,073,600
    ; 1440/2560= 0.5625 
    ; s1 = .5625 * s2;
    ; sqrt(s2^2 + (.5625*s2)^2) = 32 inches


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
  ContributionAmount   := Floor(ContributionAmount/15) 
    return
}