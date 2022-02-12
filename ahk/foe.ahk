#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

SendMode Event
SetMouseDelay 20

; plan is to have various screens resopond to different number key combo keys
; I am using functions to make it self document the keypresses
!esc::Reload

;; key index
Numpad0::send {Numpad0}
Numpad0 & Numpad1:: GoFOE()

Numpad0 & Numpad2::GoCode()
Numpad0 & Numpad3::ClickMany()
Numpad0 & Numpad4::OrientScreen()
Numpad0 & Numpad5::CollectTavern()
Numpad0 & Numpad6::OnTime()

Numpad0 & Numpad7::Unbirthday()
Numpad0 & Numpad8::Firstperson()
Numpad0 & Numpad9:: FoeTimer()

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
z & f::VisitTaverns() ; think Friends
z & g::Aid() ; Think guild for aid


return
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
    Loop 29{
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
    ; (3600 * )+ (60* ) * 1000*4*3600 = 14400000 
    SetTimer, CollectTraz , -14400000 
    Return
}
CollectTraz(){
    OrientScreen()
    MouseClick, l,  1048, 558 ,1,30
  

    return
}
CollectTavern(){

    OrientScreen()
    MouseClick, l, 1351, 203, 1,20
    Sleep 1000
    MouseClick, l, 836, 635, 1,30
    

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
Visit5Taverns(){

    ; first spot
    Click,	409, 1036 

    Sleep 2000
    send {esc}

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
    click 	288, 1040 
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
    Firstperson()
    loop %value%
        Visit5()
    return

}

Aid(){
    

    click 1078, 1046 
    InputBox, guildCount, guildCount, How many are in Guild,, 400, 600,,,,, 20
    value := Floor(guildCount/5) +1
    Firstperson()
   loop %value%
       Visit5()
    return value

}

VisitTaverns(){
    
 
  
    value := Aid()
   
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
    MouseClick, L,	367, 594 , 1, 10
    sleep 2000
    return
}
UnbirthdayAbortLowerButton(){
    MouseClick, L,	362, 664 , 1, 10
    sleep 2000
    return
}

; ---------------------------------------------
Unbirthday(){
    OrientScreen()
    MouseClick, l,	48, 197 , 1, 30

    loop 25 {

        MouseClick, 	L,	553, 526 , 1, 10
        sleep 2000
        MouseClick, L,	541, 602 , 1, 30
        sleep 2000
        MouseClick, 	L,	666, 554 , 1, 30
        sleep 2000
        send {esc}
        sleep 2000

        loop 5 {
            UnbirthdayAbortButton()
            sleep 2000
        }
        UnbirthdayAbortLowerButton()
        UnbirthdayAbortButton()
    }
    return
}
