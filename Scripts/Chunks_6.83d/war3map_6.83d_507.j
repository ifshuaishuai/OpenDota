
// 61938 ~ 61950
function Func2844 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    call Func0444(loc_unit01,loc_real01,loc_real02,Func0442(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 61952 ~ 61988
function Func2845 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=0
    local player loc_player01
    loop
        exitwhen loc_integer02>5
        set loc_player01=players003[loc_integer02]
        if units027[GetPlayerId(loc_player01)]==null or IsPlayerAlly(GetOwningPlayer(loc_unit01),loc_player01)==true or Func0278(units027[GetPlayerId(loc_player01)])then
            call SetUnitX(units026[GetPlayerId(loc_player01)],Func0113(loc_unit01))
            call SetUnitY(units026[GetPlayerId(loc_player01)],Func0114(loc_unit01))
        else
            if IsUnitVisible(units027[GetPlayerId(loc_player01)],GetOwningPlayer(loc_unit01))==false then
                call KillUnit(CreateUnit(GetOwningPlayer(loc_unit01),'o02C',GetUnitX(units027[GetPlayerId(loc_player01)]),GetUnitY(units027[GetPlayerId(loc_player01)]),0))
            endif
            call SetUnitX(units026[GetPlayerId(loc_player01)],GetUnitX(units027[GetPlayerId(loc_player01)]))
            call SetUnitY(units026[GetPlayerId(loc_player01)],GetUnitY(units027[GetPlayerId(loc_player01)]))
        endif
        set loc_player01=players004[loc_integer02]
        if units027[GetPlayerId(loc_player01)]==null or IsPlayerAlly(GetOwningPlayer(loc_unit01),loc_player01)==true or Func0278(units027[GetPlayerId(loc_player01)])then
            call SetUnitX(units026[GetPlayerId(loc_player01)],Func0113(loc_unit01))
            call SetUnitY(units026[GetPlayerId(loc_player01)],Func0114(loc_unit01))
        else
            if IsUnitVisible(units027[GetPlayerId(loc_player01)],GetOwningPlayer(loc_unit01))==false then
                call KillUnit(CreateUnit(GetOwningPlayer(loc_unit01),'o02C',GetUnitX(units027[GetPlayerId(loc_player01)]),GetUnitY(units027[GetPlayerId(loc_player01)]),0))
            endif
            call SetUnitX(units026[GetPlayerId(loc_player01)],GetUnitX(units027[GetPlayerId(loc_player01)]))
            call SetUnitY(units026[GetPlayerId(loc_player01)],GetUnitY(units027[GetPlayerId(loc_player01)]))
        endif
        set loc_integer02=loc_integer02+1
    endloop
    set loc_player01=null
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction
