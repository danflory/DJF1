#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
s::fightRemoveStarting2()
e::fightRemoveLast2()
h::fightAdd2heavy()
r::fightAdd2rogue()()
a::fightAdd2artelery() 
c::fightAdd2Champs() 
q::ExitApp
return
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

    return
}
fightAdd2rogue(){

    MouseClick, L, 861, 584

    Sleep, 50

    MouseClick, L, 894, 766

    Sleep, 50

    MouseClick, L, 874, 647

    Sleep, 50

    MouseClick, L, 874, 647

    return
}
fightAdd2artelery(){

    MouseClick, L, 901, 587

    Sleep, 50

    MouseClick, L, 755, 656

    Sleep, 50

    MouseClick, L, 755, 656
    return
}