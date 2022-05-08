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
b::OKthree() ; in GE it is victory OK
Space::autoFight()
q::ExitApp
return
fightRemoveLast2(){

    MouseClick, L, 722, 388

    MouseClick, L, 722, 388
    return
}
fightRemoveStarting2(){

    MouseClick, L, 566, 373

    Sleep, 50

    MouseClick, L, 566, 373

    return
}
fightAdd2heavy(){

    MouseClick, L, 683, 484

    Sleep, 50

    MouseClick, L, 837, 536

    Sleep, 50

    MouseClick, L, 837, 536
    return
}
fightAdd2Champs(){

    MouseClick, L, 651, 494

    Sleep, 50

    MouseClick, L, 913, 540

    Sleep, 50

    MouseClick, L, 913, 540

    Sleep, 50

    MouseClick, L, 913, 540
    return
}
fightAdd2rogue(){

    MouseClick, L, 716, 490 ; lights

    MouseClick, L, 738, 635 ; center to pass other lights

    Sleep, 50

    MouseClick, L, 734, 534

    Sleep, 50

    MouseClick, L, 734, 534

    return
}
fightAdd2artelery(){

    MouseClick, L, 750, 492

    Sleep, 50

    MouseClick, L, 691, 529

    Sleep, 50

    MouseClick, L, 691, 529

    return
}
autoFight(){
    MouseClick, L, 757, 654
    return
}
attackFromMap(){
    MouseClick, L, 728, 502
    return
}
OKOne(){
    MouseClick, L, 798, 661
    return
}
OKTwo()
{
    MouseClick, L, 785, 536
    return
}
OKthree() {
    ; used in GE
   MouseClick, L, 801, 618
    return
}