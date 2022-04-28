#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


s::fightRemoveStarting2()
e::fightRemoveLast2()
h::fightAdd2heavy()
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

    return
}
fightAdd2artelery(){

    return
}