
// 35339 ~ 35370
function Func1424 takes nothing returns boolean
    local unit loc_unit01=GetSoldUnit()
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local integer loc_integer01
    local real loc_real01
    local real loc_real02
    local real loc_real03
    if GetUnitTypeId(loc_unit01)=='h06N' and IsPlayerAlly(GetOwningPlayer(loc_unit01),GetOwningPlayer(GetSellingUnit()))then
        if units001[GetPlayerId(loc_player01)]!=null then
            call Func0120(loc_player01,GetObjectName('n0F3'))
            call KillUnit(loc_unit01)
            set loc_unit01=null
            set loc_player01=null
            return false
        endif
        set loc_real01=GetUnitX(GetSellingUnit())
        set loc_real02=GetUnitY(GetSellingUnit())
        set loc_integer01=Func0104(GetUnitTypeId(GetSellingUnit()))
        set loc_real03=GetUnitFacing(GetSellingUnit())
        call RemoveUnit(GetSellingUnit())
        call CreateUnit(loc_player01,loc_integer01,loc_real01,loc_real02,loc_real03)
    endif
    if GetUnitTypeId(loc_unit01)=='h06N' then
        call KillUnit(loc_unit01)
    endif
    if units001[GetPlayerId(players003[1])]!=null and units001[GetPlayerId(players003[2])]!=null and units001[GetPlayerId(players003[3])]!=null and units001[GetPlayerId(players003[4])]!=null and units001[GetPlayerId(players003[5])]!=null and units001[GetPlayerId(players004[1])]!=null and units001[GetPlayerId(players004[2])]!=null and units001[GetPlayerId(players004[3])]!=null and units001[GetPlayerId(players004[4])]!=null and units001[GetPlayerId(players004[5])]!=null then
        call Func0035(GetTriggeringTrigger())
    endif
    set loc_unit01=null
    set loc_player01=null
    return false
endfunction

// 35372 ~ 35380
function Func1425 takes nothing returns boolean
    set boolean108=true
    call Func0035(GetTriggeringTrigger())
    call DestroyMultiboard(multiboard004)
    call Func1060()
    call Func1106()
    call Func0526()
    return false
endfunction

// 35382 ~ 35386
function Func1426 takes nothing returns boolean
    call Func0035(GetTriggeringTrigger())
    call PlaySoundBJ(sound032)
    return false
endfunction

// 35388 ~ 35442
function Func1427 takes nothing returns boolean
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01
    local integer loc_integer02
    local string loc_string01
    local unit loc_unit01
    local real loc_real01
    local real loc_real02
    local integer loc_integer03
    local real loc_real03
    local real loc_real04=GetRectCenterX(rect011)
    local real loc_real05=GetRectCenterY(rect011)
    local real loc_real06=GetRectCenterX(rect004)
    local real loc_real07=GetRectCenterY(rect004)
    set integer440=3
    set boolean092=true
    call Func0035(GetTriggeringTrigger())
    set loc_integer03=0
    loop
        exitwhen loc_integer03==5
        set loc_real01=loc_real04-300+loc_integer03*150
        set loc_real02=loc_real05
        set loc_unit01=CreateUnit(players003[0],integers077[integers126[loc_integer03]],loc_real01,loc_real02,270)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SELL)
        call PanCameraToTimedForPlayer(players003[loc_integer03+1],loc_real04,loc_real05,0)
        call CreateUnit(players003[loc_integer03+1],'n00C',loc_real04,loc_real05,bj_UNIT_FACING)
        call SetPlayerState(players003[loc_integer03+1],PLAYER_STATE_RESOURCE_GOLD,integers122[GetPlayerId(players003[loc_integer03+1])]-250)
        set loc_integer03=loc_integer03+1
    endloop
    set loc_integer03=0
    loop
        exitwhen loc_integer03==5
        set loc_real01=loc_real06-300+loc_integer03*150
        set loc_real02=loc_real07
        set loc_unit01=CreateUnit(players004[0],integers077[integers127[loc_integer03]],loc_real01,loc_real02,270)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SELL)
        call PanCameraToTimedForPlayer(players004[loc_integer03+1],loc_real06,loc_real07,0)
        call CreateUnit(players004[loc_integer03+1],'n00C',loc_real06,loc_real07,bj_UNIT_FACING)
        call SetPlayerState(players004[loc_integer03+1],PLAYER_STATE_RESOURCE_GOLD,integers122[GetPlayerId(players004[loc_integer03+1])]-250)
        set loc_integer03=loc_integer03+1
    endloop
    call TriggerAddCondition(loc_trigger01,Condition(function Func1424))
    call SuspendTimeOfDay(false)
    call EnableTrigger(trigger052)
    call EnableTrigger(trigger050)
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,10,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1425))
    set integer027=90
    call Func1407()
    call Func0072()
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 35444 ~ 35453
function Func1428 takes integer loc_integer01,integer loc_integer02 returns nothing
    call Func0068(integers070[loc_integer02])
    if loc_integer01==1 then
        set integers126[integer445]=loc_integer02
        set integer445=integer445+1
    else
        set integers127[integer446]=loc_integer02
        set integer446=integer446+1
    endif
endfunction

// 35455 ~ 35464
function Func1429 takes integer loc_integer01 returns nothing
    local integer loc_integer02=Func0076()
    loop
        if booleans001[loc_integer02]==false then
            set booleans001[loc_integer02]=true
            call Func1428(loc_integer01,loc_integer02)
            return
        endif
    endloop
endfunction

// 35466 ~ 35476
function Func1430 takes integer loc_integer01,integer loc_integer02 returns nothing
    call Func0415("Ban"+I2S(GetPlayerId(GetOwningPlayer(GetSoldUnit()))),integers070[loc_integer02])
    call Func0068(integers070[loc_integer02])
    if loc_integer01==1 then
        set integers124[integer443]=loc_integer02
        set integer443=integer443+1
    else
        set integers125[integer444]=loc_integer02
        set integer444=integer444+1
    endif
endfunction
