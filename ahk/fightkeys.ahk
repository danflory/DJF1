#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
s::fightRemoveStarting2()
e::fightRemoveLast2()
h::fightAdd2heavy()
r::fightAdd2rogue()()
a::fightAdd2artelery() 
c::fightAdd2Champs() 
t::attackFromMap()
x::OKOne()
v::OKTwo()
d::fightAdd2drummers()
i::IronAge()
b::OKthree() ; in GE it is victory OK
Space::autoFight()

q::ExitApp
return

IronAge(){

    Sleep, 150

    MouseClick, L, 1303, 589

    Sleep, 150
    MouseClick, L, 1301, 611
 Sleep, 150
    MouseClick, L, 1301, 611
 Sleep, 150
    MouseClick, L, 1301, 613
 
    Sleep, 50

    MouseClick, L, 1241, 680

    Sleep, 50

    return
}

fightAdd2drummers(){

  /*

 Sleep, 150

    MouseClick, L, 1304, 586

    Sleep, 150

    MouseClick, L, 1307, 612
Sleep, 150
    MouseClick, L, 1307, 612
Sleep, 150
    MouseClick L, 1307, 612
*/ 
 
    Sleep, 50
    MouseClick, L, 861, 584

    Sleep, 50

    MouseClick, L, 894, 766

Sleep, 50
 

    MouseClick, L, 1143, 764

    Sleep, 50

    MouseClick, L, 1141, 707

    Sleep, 50

    return
}

fightRemoveLast2(){

    MouseClick, L, 870, 447

    MouseClick, L, 870, 447
    return
}
fightRemoveStarting2(){

    MouseClick, L, 683, 449

    Sleep, 50

    MouseClick, L, 683, 449

    return
}
fightAdd2heavy(){

    MouseClick, L, 821, 592

    Sleep, 50

    MouseClick, L, 894, 652

    Sleep, 50

    MouseClick, L, 894, 652
    return
}
fightAdd2Champs(){

    MouseClick, L, 781, 587

    Sleep, 50

    MouseClick, L, 934, 647

    Sleep, 50

    MouseClick, L, 934, 647
    return
}
fightAdd2rogue(){

    MouseClick, L, 861, 584

    Sleep, 50

    MouseClick, L, 794, 766

    Sleep, 50

    MouseClick, L, 934, 647

    Sleep, 50

    MouseClick, L, 934, 647

    return
}
fightAdd2artelery(){

    MouseClick, L, 901, 587

    Sleep, 50

    MouseClick, L, 934, 656

    Sleep, 50

    MouseClick, L, 934, 656
    return
}
autoFight(){
    attackFromMap()
    Sleep,600
    fightRemoveLast2()
    Sleep, 50
    fightRemoveStarting2()
    Sleep, 100
    fightAdd2artelery()
    Sleep, 200
    fightAdd2rogue()
    Sleep, 50
    OKOne()
    return
}
attackFromMap(){
    MouseClick, L, 885, 582
    return
}
OKOne(){
    MouseClick, L, 941, 785
    return
}
OKTwo()
{
    MouseClick, L, 944, 643
    return
}
OKthree() {
    MouseClick, L, 977, 745
    return
}