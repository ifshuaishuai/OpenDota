
// 3989 ~ 3995
function Func0118 takes player loc_player01,string loc_string01 returns nothing
    local sound loc_sound01=CreateSound(loc_string01,false,false,false,10,10,"DefaultEAXON")
    if(GetLocalPlayer()==loc_player01)then
        call StartSound(loc_sound01)
    endif
    call KillSoundWhenDone(loc_sound01)
endfunction

// 3997 ~ 4008
function Func0119 takes player loc_player01,string loc_string01 returns nothing
    call Func0118(players003[1],loc_string01)
    call Func0118(players003[2],loc_string01)
    call Func0118(players003[3],loc_string01)
    call Func0118(players003[4],loc_string01)
    call Func0118(players003[5],loc_string01)
    call Func0118(players004[1],loc_string01)
    call Func0118(players004[2],loc_string01)
    call Func0118(players004[3],loc_string01)
    call Func0118(players004[4],loc_string01)
    call Func0118(players004[5],loc_string01)
endfunction

// 4010 ~ 4020
function Func0120 takes player loc_player01,string loc_string01 returns nothing
    local sound loc_sound01=CreateSoundFromLabel("InterfaceError",false,false,false,10,10)
    if(GetLocalPlayer()==loc_player01)then
        if(loc_string01!="")and(loc_string01!=null)then
            call ClearTextMessages()
            call DisplayTimedTextToPlayer(loc_player01,0.50,-1.00,2.00,"|cffffcc00"+loc_string01+"|r")
        endif
        call StartSound(loc_sound01)
    endif
    call KillSoundWhenDone(loc_sound01)
endfunction

// 4022 ~ 4031
function Func0121 takes player loc_player01,string loc_string01 returns nothing
    local sound loc_sound01=CreateSoundFromLabel("InterfaceError",false,false,false,10,10)
    if(GetLocalPlayer()==loc_player01)then
        if(loc_string01!="")and(loc_string01!=null)then
            call DisplayTimedTextToPlayer(loc_player01,0,0,2.00,"|cffffcc00"+loc_string01+"|r")
        endif
        call StartSound(loc_sound01)
    endif
    call KillSoundWhenDone(loc_sound01)
endfunction

// 4033 ~ 4042
function Func0122 takes player loc_player01,string loc_string01 returns nothing
    local sound loc_sound01=CreateSoundFromLabel("InterfaceError",false,false,false,10,10)
    if(GetLocalPlayer()==loc_player01)then
        if(loc_string01!="")and(loc_string01!=null)then
            call DisplayTimedTextToPlayer(loc_player01,0,0,5.00,"|cffffcc00"+loc_string01+"|r")
        endif
        call StartSound(loc_sound01)
    endif
    call KillSoundWhenDone(loc_sound01)
endfunction

// 4044 ~ 4048
function Func0123 takes unit loc_unit01 returns nothing
    call PauseUnit(loc_unit01,true)
    call IssueImmediateOrder(loc_unit01,"stop")
    call PauseUnit(loc_unit01,false)
endfunction

// 4050 ~ 4056
function Func0124 takes nothing returns boolean
    if(GetTimeOfDay()>6.00 and GetTimeOfDay()<18.00)then
        return true
    else
        return false
    endif
endfunction

// 4058 ~ 4062
function Func0125 takes string loc_string01,boolean loc_boolean01 returns nothing
    if loc_boolean01 then
        call ExecuteFunc(loc_string01)
    endif
endfunction

// 4064 ~ 4074
function Func0126 takes real loc_real01 returns real
    local real loc_real02=GetRectMinX(bj_mapInitialPlayableArea)+50
    if(loc_real01<loc_real02)then
        return loc_real02
    endif
    set loc_real02=GetRectMaxX(bj_mapInitialPlayableArea)-50
    if(loc_real01>loc_real02)then
        return loc_real02
    endif
    return loc_real01
endfunction

// 4076 ~ 4086
function Func0127 takes real loc_real01 returns real
    local real loc_real02=GetRectMinX(bj_mapInitialPlayableArea)+75
    if(loc_real01<loc_real02)then
        return loc_real02
    endif
    set loc_real02=GetRectMaxX(bj_mapInitialPlayableArea)-75
    if(loc_real01>loc_real02)then
        return loc_real02
    endif
    return loc_real01
endfunction

// 4088 ~ 4098
function Func0128 takes real loc_real01 returns real
    local real loc_real02=GetRectMinX(bj_mapInitialPlayableArea)
    if(loc_real01<loc_real02)then
        return loc_real02
    endif
    set loc_real02=GetRectMaxX(bj_mapInitialPlayableArea)
    if(loc_real01>loc_real02)then
        return loc_real02
    endif
    return loc_real01
endfunction

// 4100 ~ 4110
function Func0129 takes real loc_real01 returns real
    local real loc_real02=GetRectMinY(bj_mapInitialPlayableArea)+50
    if(loc_real01<loc_real02)then
        return loc_real02
    endif
    set loc_real02=GetRectMaxY(bj_mapInitialPlayableArea)-50
    if(loc_real01>loc_real02)then
        return loc_real02
    endif
    return loc_real01
endfunction

// 4112 ~ 4122
function Func0130 takes real loc_real01 returns real
    local real loc_real02=GetRectMinY(bj_mapInitialPlayableArea)+75
    if(loc_real01<loc_real02)then
        return loc_real02
    endif
    set loc_real02=GetRectMaxY(bj_mapInitialPlayableArea)-75
    if(loc_real01>loc_real02)then
        return loc_real02
    endif
    return loc_real01
endfunction

// 4124 ~ 4134
function Func0131 takes real loc_real01 returns real
    local real loc_real02=GetRectMinY(bj_mapInitialPlayableArea)
    if(loc_real01<loc_real02)then
        return loc_real02
    endif
    set loc_real02=GetRectMaxY(bj_mapInitialPlayableArea)
    if(loc_real01>loc_real02)then
        return loc_real02
    endif
    return loc_real01
endfunction
