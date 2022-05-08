#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#InstallKeybdHook
#SingleInstance Force
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

SendMode Event
SetMouseDelay 20

; plan is to have various screens resopond to different number key combo keys
; I am using functions to make it self document the keypresses
!esc::Reload
Numpad0 & q::ExitApp
;; key index
Numpad0::send {Numpad0}

Numpad1::send {Numpad1}
^Numpad1::send ^{Numpad1}
!Numpad1::send !{Numpad1}
+Numpad1::send +{Numpad1}
Numpad0 & Numpad1:: GoFOE()
Numpad0 & Numpad2::GoCode()
Numpad0 & Numpad3::ClickMany()
Numpad0 & Numpad4::OrientScreen()
Numpad0 & Numpad5::CollectTavern()
Numpad0 & Numpad6::OnTime()

Numpad0 & Numpad7::Unbirthday()
; Numpad1 & Numpad7::UnbirthdayBAsmallScreen()
Numpad0 & Numpad8::Firstperson()
Numpad0 & Numpad9:: FoeTimer()

;; fight small screen
;Numpad0 & u::UBQrecording1()
Numpad0 & e::EightArtileryIA()
Numpad0 & n::noNeighborFight()
Numpad0 & b::NeighborBackAfterFight() ; think BACK
Numpad1 & n::NeighborAutoBattle()

Numpad1 & r::twoRogue() 
Numpad0 & r::RogueOnly() 
Numpad0 & h::HeavyIA()
Numpad1 & h::HeavyIA2()

Numpad0 & 6::Zoom67()
Numpad0 & a::ArtileryIA()
Numpad1 & a::ArtileryIA2()
Numpad0 & c::ChampionIA()
Numpad0 & 1::MinuteClickTimer()
Numpad0 & 2::ClickTimer15sec()
Numpad1 & g::autoFight()

;; fight large OrientScreen()
;use normal keys hotkeys
Numpad0 & f::run "C:\d\githh\DJF1\ahk\fightkeys.ahk"
Numpad1 & f::run "C:\d\githh\DJF1\ahk\fightkeys Small67p.ahk"
Numpad2::send {Numpad2}
^Numpad2::send ^{Numpad2}15
!Numpad2::send !{Numpad2}
+Numpad2::send +{Numpad2}
Numpad2 & h::largeScreenHeavy()
Numpad2 & 7::run C:\d\githh\DJF1\ahk\smallScreenRQs.ahk
Numpad2 & 8::run C:\d\githh\DJF1\ahk\emaRQ80pLargeScreen.ahk


; switching guild
z::send {z}
^z::send ^{z}
!z::send !{z}
+z::send +{z}

z & a::LeaveguildStep1()
z & b::Exitguild()
z & c::Joinguild()
z & d::Visit5()
z & l::LeaveCoversation()
z & f::VisitTaverns80p() ; think Friends
; z & g::Aid() ; Think guild for aid
z & 1::Contribution15() ;  
z & 2::ContributeCollectOnly() ;  
z & 3::ContributionMultiple() ;  

;;fights
/*

f::send f
^f::send ^{f}
!f::send !{f}
+f::send +{f}
!^f::send !^{f}
^!+f::send ^!+{f}
f & a::click 846, 580 ; attack
f & c::getAChampion() 
Return
*/

ContributeCollectOnly(){
    loop 3 {
        MouseClick, l, 52, 187, 1 ;the old man 3 times
        sleep 1500
    }

    MouseClick, l, 658, 268 , 1, 20 ; Collect
    sleep 3000
    Send {esc} ; it may have been a BP
    sleep 1500
    UnbirthdayAbortButton()
    UnbirthdayAbortLowerButton()
    UnbirthdayAbortButton()
    UnbirthdayOnly()
    loop 3 {
        UnbirthdayAbortButton() ; should be back to spend 15
    }
}

ContributionMultiple(){
 

       run C:\d\githh\DJF1\ahk\contributeLots.ahk
    
    Return
}
;; contribute
Contribution15(){ 
    ; should first OrientScreen()

    KeyWait, NumpadAdd, T8
    click ; the gb Open button leads to contribute screen
    sleep 2000 ;
    MouseClick, l,1240, 436 ; the enter box for amount
    Sleep 1000
    Send, 15
    Sleep 1000
    MouseClick,l, 1305, 435
    sleep 1000

    ContributeCollectOnly()
    MouseClick, l, 665, 1007
    Sleep 1000
    Click ; first click opens gb on the people menu
    Sleep 2000
    MouseMove, 1267, 453 ;  aproximatly the open for contribution
    ; manually choose the correct Gb for the next round
}
Return
; Launch_App1 TODO
GoCode()
{
    If (WinExist("foe.ahk - githh - Visual Studio Code") )
    {
        WinActivate 

        ; Use the window found by WinExist.

    }
}
Return

GoFOE(){
    If WinExist("Forge of Empires - Google Chrome") 
    {

        WinActivate 

        ; Use the window found by WinExist.

    }

}
Return
ClickMany(){

    BlockInput On
    Loop 1300 {
        Send {Click}
        Sleep 800

    }
    BlockInput Off
    return
}
return
OrientScreen(){
    ; assumes that screen is oriented Full screen with F11
    BlockInput ON

    Loop 10{
        Send ^-
        Sleep 100

    }

    Loop 7{
        Send ^{+}
        Sleep 100

    }
    BlockInput Off

    EmptyClick()

    Loop 5 {
        Send {click WD}
        Sleep 200

    } 

    MouseClickDrag, L, 759, 124, 550 , 124, 30 ; shift screen left

    Return
}

Collect1(){

    loop 3 {
        send {esc};
        Sleep, 300
    }

    OrientScreen()
    sleep, 300

    ;---------------------------------------

    CollectTavern()
    sleep 500
    EmptyClick()
    Return

    ;- -----------------------------
    ; ; one row down; X: 1125-1173=-48 Y: 808-832=-24

    ;1073-1510,=-437 576-335 =241
    ;1633, 506 
    ;1255-1633,=Run-378 698-508= rise190
    ;1814 -1121=693
    ; sy is x* -378/190=-1.989474
    SendEvent {Click 1121, 801 Down}
    loop 2 {
        MouseMove, 750, -375,30,R
        MouseMove , 50, 25, 0, R
        MouseMove, -750,375, 30, R
        MouseMove , 50, 25, 0, R
    }
    mouseMove 1121, 801 ; still down I want to work up the screen

    loop 4{
        MouseMove, 750, -375,30,R
        MouseMove , -50, -25, 0, R
        MouseMove, -750,375, 30, R
        MouseMove , -50, -25, 0, R
    }
    SendEvent {Click up}
    Click 1121, 801 ; back to start square
    Sleep 600
    click 700, 576 ; the 5 minute timer
    ClickMany()

    CollectTavern()
    sleep 500
    EmptyClick()
    Return
}

EmptyClick(){
    click 492, 115 
    return
}
OnTime(){
    ; hr min sec * 1000
    ; (3600 * )+ (60* ) * 1000* 60 * 15 =900000
    value := 1000 * 60 * 15
    SetTimer, CollectTavern , %value% 
    Return
}
CollectTraz(){
    OrientScreen()
    MouseClick, l, 1048, 558 ,1,30

    return
}
CollectTavern(){
    Send {esc}
    OrientScreen()
    MouseClick, l, 1351, 203, 1,20
    Sleep 1000
    MouseClick, l, 836, 635, 1,40
    sleep 2000

    send {esc}
    return
    ;  collect rosarium
    Sleep 2000

    ; click ok
    MouseClick, l, 975, 865, 1,40

    ; click rosarium then 5 Minutes to collect
    MouseClick, l, 889, 975 , 1,40 ; CollectTavern()
    sleep 1500
    ; when not collecting dismiss window
    send {esc}
    sleep 500
    MouseClick, l, 889, 975 , 1,40 ; open time options
    sleep 1500
    MouseClick, l, 704, 573 , 1,40 ;choos 5 min
    sleep 1000
    ; if not a collection what happens?

    send {esc}
    Return
}

CollectCastle(){
    ; colle
    sleep 1000
    click 422, 312 
    sleep 3000

    MouseMove, 1299, 464 ,15
    click
    Return
}
Visit5(){

    ; first spot
    Click,	359, 1065

    ; 

    ; 493 -359=134, Y is always same
    loop 4{
        sleep 1000
        Click, 134, 0,L,1,,Rel
    }
    sleep 1000
    ; advance people
    click 1079, 1002 
    return
}
Visit5Taverns(){

    ; first spot
    Click,	409, 1036 

    Sleep 2000
    Send, {esc}

    ; 493 -359=134, Y is always same
    loop 4{
        Sleep 1000
        Click, 130, 0,L,1,,Rel
        sleep 2000 ; expecting it to be alread visited I wait for image
        Send, {esc}
    }
    sleep 1000
    ; advance people
    click 1079, 1002 
    return
}
unknown(){

    ; first spot
    Click,	359, 1071

    ; 

    ; 493 -359=134, Y is always same
    loop 4{
        sleep 1000
        Click, 134, 0,L,1,,Rel
    }
    sleep 1000
    ; advance people
    click 1079, 1002 
    return
}
Firstperson(){
    MouseClick, L, 289, 1041
    sleep 500
    return
}
LeaveguildStep1(){
    Send G
    Sleep, 1000
    click 836, 332 
    sleep 1000
    ; bottom of guildd
    click 1423, 793
    ;  InputBox, OutputVar [, Title, Prompt, HIDE, Width, Height, X,  , Locale, Timeout, Default]
    return 
}

Exitguild(){
    Click ; manualy position over the exit prior to calling this
    sleep 500
    click 1117, 688 ; verify
    sleep 200
    click 964, 687 ; OK
    return
}

Joinguild(){

    click ; manual find the join word
    Sleep 400
    send {esc}
    sleep 100
    send {esc}
    click 1078, 1046 
    InputBox, guildCount, guildCount, How many are in Guild,, 400, 600,,,,, 20
    value := Floor(guildCount/5) +1
    Sleep 2000
    ; for forge commander get rid of scroll bar
   /*
click 1900, 1061 ; will open now
    sleep 2000
    click 1546, 1060 ; really close it hide that bar
    sleep 2000 12*161=1932
    */

    Firstperson()
    loop %value%
        Visit5()
    return

}
;; dd
VisitTaverns80p(){
    MouseClick, L, 902, 1023 ; last person

   ; InputBox, guildCount, guildCount, How many are in Guild,, 400, 600,,,,, 20
   ; value := Floor(guildCount/5) 
    ;Sleep, 1100
    ;last person
    MouseClick, L, 895, 1008
    
        run "C:\d\githh\DJF1\ahk\Friends.ahk"
    
    return value

}

VisitTaverns(){

    InputBox, guildCount, guildCount, How many are in Guild,, 400, 600,,,,, 20
    value := Floor(guildCount/5) 
    Sleep, 1100

    Firstperson()
    loop %value%
        Visit5Taverns()

    return
}
FoeTimer(){

    Collect1()
    time := 6 * 60 *1000
    SetTimer, collect1, %time%
    ;SetTimer, Label [, Period|On|Off]
    return
}
JustClick(){
    click
}
MinuteClickTimer(){
    JustClick()

    time := 1 * 60 *1000
    SetTimer, JustClick, %time%
    Return
}
ClickTimer15sec(){
    JustClick()

    time := 1 * 15 *1000
    SetTimer, JustClick, %time%
    Return
}
UBQ(){
    MouseClick, L, 542, 530, 1, 25
    sleep 500
    MouseClick, L, 541, 614 , 1, 25
    sleep 500
    MouseClick, L, 662, 554, 1, 25
    loop 7{
        MouseClick, L, 380, 592 1, 25
        sleep 500
    }
    send {esc}
    return
}
LeaveCoversation(){

    loop 5 {
        MouseClick, L, 1025, 433 , 1, 30
        MouseClick, L, 489, 301 , 1, 30
        MouseClick, L, 515, 439 , 1, 30
        MouseClick, L, 1087, 683 , 1, 30
        MouseClick, L, 1087, 683 , 1, 30
    }

    MouseClick, L, 952, 828 , 1, 30

    return
}
LeavePageOfConversations(){

    MouseClick, L, 1039, 744 , 1, 30
    LeaveCoversation()
    MouseClick, L, 1039, 744 , 1, 30
    LeaveCoversation()
    MouseClick, L, 1039, 744 , 1, 30
    LeaveCoversation()
    MouseClick, L, 1039, 744 , 1, 30
    LeaveCoversation()
    MouseClick, L, 1039, 744 , 1, 30
    LeaveCoversation()

    return
}
UnbirthdayAbortButton(){
    MouseClick, L, 398, 595
    sleep 1500
    return
}
UnbirthdayAbortLowerButton(){
    MouseClick, L, 371, 670
    sleep 1500
    return
}

; ---------------------------------------------
UnbirthdayOnly(){
    MouseClick, 	L,	553, 526 , 1, 10
    sleep 1500
    MouseClick, L,	541, 602 , 1, 30
    sleep 1500
    MouseClick, 	L,	666, 554 , 1, 30
    sleep 1500
    send {esc}
    sleep 1500
    return
}
Unbirthday(){
    OrientScreen()
    MouseClick, l,	48, 197 , 1, 30
    loop 140 {
        UnbirthdayOnly()
        loop 5{ 
            UnbirthdayAbortButton()
        }
        UnbirthdayAbortLowerButton()
        UnbirthdayAbortButton()

    }

    return
}
Zoom67(){
    Loop 8{
        Send ^-
        Sleep 300

    }

    Loop 3{
        Send ^{+}
        Sleep 300

    }
    Sleep 800
    return
}

ChampionIA(){
    ClearAllUnits()
    IronAge()
    FastUnitsTab()
    threeCenterBottom()
    SelectNoAge()
    LightUnits6()
    autoFight()

    return
}
FastUnitsTab(){
    MouseClick, L, 646, 491
    sleep 300
    return
}
ClearAllUnits(){
    ;  67% 1600x900
    ; clear all
    loop 8{
        MouseClick, L, 575, 379

        Sleep, 50
    }
    Sleep 300
    return
}
Clear2Units(){
    ;  67% 1600x900
    ; clear all
    loop 2{
        MouseClick, L, 575, 379

        Sleep, 50
    }
    Sleep 300
    return
}

SelectAllAges(){

    MouseClick, L, 1088, 489
    Sleep, 300
    MouseClick, L, 1009, 505
    Sleep, 300
    return
}
SelectNoAge(){
    ; no age units

    MouseClick, L, 1084, 488

    Sleep,300

    MouseClick, L, 1039, 524

    Sleep,300

    return
}
twoRogue(){
    ; clear two Rogue
    loop 2 {
        MouseClick, L, 740, 393 

        Sleep, 300
    }
    ; add them back In
    SelectNoAge()
    MouseClick, L, 717, 494 ; light units
    sleep 100

    loop 2 {
        MouseClick, L, 845, 538 ; use center to avoid defense

        Sleep, 100
    }
    return
}
LightUnits6(){

    MouseClick, L, 717, 494
    sleep 100
    loop 6 {
        MouseClick, L, 845, 538 ; use center to avoid the defensive

        Sleep, 100
    }

    return
}
IronAge(){
    MouseClick, L, 1084, 488 ; age selector
    sleep 300
    MouseClick, L, 1036, 565 ; iron age
    Sleep, 300
    return
}
HeavyTab(){
    MouseClick, L, 681, 494 ; heavy
    sleep 300
    return
}
threeLowerLeft(){
    loop 3{
        MouseClick, L, 615, 590 ; bottom left unit
        sleep 100
    }
    return
}
; avoid the issue of defensive units
threeCenterBottom(){
    loop 3{
        MouseClick, L, 845, 538 ;  center unit
        sleep 100
    }
    return
}
twoLowerLeft(){
    loop 2{
        MouseClick, L, 615, 590 ; bottom left unit
        sleep 100
    }
    return
}
twoCenterBottom(){
    loop 2{
        MouseClick, L, 845, 538 ; bottom center unit
        sleep 100
    }
    return
}
eightLowerLeft(){
    loop 8{
        MouseClick, L, 615, 590 ; bottom left unit
        sleep 100
    }
    return
}
HeavyIA(){
    ; 67% zoom

    ClearAllUnits()

    ; heavy tab then two Heavy

    IronAge()
    HeavyTab()
    twoCenterBottom()
    ; 6 rogues
    SelectNoAge()
    LightUnits6()
    autoFight()

    return
}
HeavyIA2(){
    ; 67% zoom

    Clear2Units()

    ; heavy tab then two Heavy

    IronAge()
    HeavyTab()
    twoCenterBottom()

    autoFight()

    return
}
autoFight(){
    MouseClick, L, 735, 657
    sleep 100
    return
}

EightArtileryIA(){
    ClearAllUnits()
    IronAge()
    MouseClick, L, 747, 493
    eightLowerLeft()
    autoFight()
    return
}
ArtileryIA(){

    ClearAllUnits()
    IronAge()

    MouseClick, L, 747, 493
    sleep 100
    twoCenterBottom()
    //rogues
    SelectNoAge()
    LightUnits6()
    autoFight()

    return
}
ArtileryIA2(){

    Clear2Units()
    IronAge()

    MouseClick, L, 747, 493 ; artillery tab
    sleep 100
    twoCenterBottom()

    return
}
RogueOnly(){
    ; clear two
    loop 2 {
        MouseClick, L, 740, 393 

        Sleep, 300
    }
    ; add them NeighborBackAfterFight() assums that we are seeing them

    loop 2 {
        MouseClick, L, 845, 538 ; use center to avoid defense

        Sleep, 100
    }
    sleep 300
    autoFight()
    return
}
noNeighborFight(){
    ; done at 66% small screen person in right most slot
    MouseClick, L, 801, 527 ; dismiss the prompt
    sleep 800 ;
    MouseClick, L, 575, 891 ; Aid()
    sleep 1000 ;
    MouseClick, L, 192, 823 ; left one person
    sleep 800 ;
    MouseClick, L, 611, 872 ; attack this g
    Return

}

NeighborAutoBattle(){
    MouseClick, L, 726, 658 ; the autobattle button
    sleep 1200
    MouseClick, L, 875, 663 ; the back to city button after fight
    sleep 300
    MouseClick, L, 192, 823 ; left one person
    sleep 800 ;
    MouseClick, L, 611, 872 ; attack this g
    return
}
NeighborBackAfterFight(){
    MouseClick, L, 875, 663 ; back to City
    sleep 300
    MouseClick, L, 192, 823 ; left one person
    sleep 800 ;
    MouseClick, L, 611, 872 ; attack this guy
    return
}

largeScreenHeavy()
{

    sleeptime := 100
    MouseClick, L, 609, 430

    Sleep, %sleeptime%

    MouseClick, L, 609, 430

    Sleep, %sleeptime%
    MouseClick, L, 788, 603

    Sleep, %sleeptime%

    MouseClick, L, 1027, 679

    Sleep, %sleeptime%

    MouseClick, L, 1027, 679

    ;-----

    MouseClick, L, 776, 505

    MouseClick, L, 776, 505

    MouseClick, L, 776, 505

    Sleep, %sleeptime%

    MouseClick, L, 838, 606

    Sleep, %sleeptime%

    MouseClick, L, 967, 819

    Sleep, %sleeptime%

    MouseClick, L, 1094, 757

    Sleep, %sleeptime%

    MouseClick, L, 1094, 757

    MouseClick, L, 1094, 757

    Sleep, %sleeptime%

    MouseClick, L, 1094, 757

    Sleep, %sleeptime%
    MouseClick, L, 862, 853
    return
}
Temp(){

    return
}

