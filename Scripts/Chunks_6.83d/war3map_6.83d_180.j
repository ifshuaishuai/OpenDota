
// 36616 ~ 36645
function Func1463 takes player loc_player01,integer loc_integer01,boolean loc_boolean01 returns nothing
    local integer loc_integer02=Func0055(loc_player01)
    local real loc_real01
    if Func0059(loc_player01)==false then
        return
    endif
    if Func0056(loc_player01)then
        call SetUnitPosition(units012[loc_integer01],reals016[loc_integer02],reals017[loc_integer02])
        set loc_real01=Func0142(Func0050(units012[loc_integer01])-0.3,0.5)
        call SetUnitScale(units012[loc_integer01],loc_real01,loc_real01,loc_real01)
        call SetUnitFacing(units012[loc_integer01],270)
        call UnitRemoveAbility(units012[loc_integer01],'Amov')
    else
        call SetUnitPosition(units012[loc_integer01],reals018[loc_integer02],reals019[loc_integer02])
        set loc_real01=Func0142(Func0050(units012[loc_integer01])-0.3,0.5)
        call SetUnitScale(units012[loc_integer01],loc_real01,loc_real01,loc_real01)
        call SetUnitFacing(units012[loc_integer01],90)
        call UnitRemoveAbility(units012[loc_integer01],'Amov')
    endif
    call SetUnitColor(units012[loc_integer01],GetPlayerColor(loc_player01))
    call PauseUnit(units012[loc_integer01],true)
    call SetUnitOwner(units012[loc_integer01],loc_player01,true)
    set booleans037[GetPlayerId(loc_player01)]=true
    set booleans036[loc_integer01]=true
    if Func0056(loc_player01)then
        set units001[GetPlayerId(loc_player01)]=CreateUnit(loc_player01,integers070[integers128[loc_integer01]],GetRectCenterX(rect011),GetRectCenterY(rect011),0)
    else
        set units001[GetPlayerId(loc_player01)]=CreateUnit(loc_player01,integers070[integers128[loc_integer01]],GetRectCenterX(rect004),GetRectCenterY(rect004),0)
    endif
endfunction

// 36647 ~ 36657
function Func1464 takes nothing returns integer
    local integer loc_integer01=1
    loop
        exitwhen loc_integer01>24
        if booleans036[loc_integer01]==false then
            return loc_integer01
        endif
        set loc_integer01=loc_integer01+1
    endloop
    return 0
endfunction

// 36659 ~ 36673
function Func1465 takes player loc_player01 returns nothing
    local integer loc_integer01=1
    local boolean loc_boolean01=Func0056(loc_player01)
    loop
        exitwhen loc_integer01==24
        if GetOwningPlayer(units012[loc_integer01])==players003[0]or GetOwningPlayer(units012[loc_integer01])==players004[0]then
            if loc_boolean01 then
                call SetUnitOwner(units012[loc_integer01],players003[0],false)
            else
                call SetUnitOwner(units012[loc_integer01],players004[0],false)
            endif
        endif
        set loc_integer01=loc_integer01+1
    endloop
endfunction
