
// 11322 ~ 11326
function Func0489 takes nothing returns boolean
    call Func0035(GetTriggeringTrigger())
    set boolean074=false
    return false
endfunction

// 11328 ~ 11397
function Func0490 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetHandleId(GetOwningPlayer(loc_unit01))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(699)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(700)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(701)))
    local unit loc_unit05=(LoadUnitHandle(hashtable001,(loc_integer01),(702)))
    local unit loc_unit06=(LoadUnitHandle(hashtable001,(loc_integer01),(703)))
    local unit loc_unit07
    local real loc_real01=GetUnitX(loc_unit02)
    local real loc_real02=GetUnitY(loc_unit02)
    local trigger loc_trigger01
    if boolean074==false then
        if Func0056(GetOwningPlayer(loc_unit02))then
            set loc_real01=GetRectCenterX(rect011)
            set loc_real02=GetRectCenterY(rect011)
        else
            set loc_real01=GetRectCenterX(rect004)
            set loc_real02=GetRectCenterY(rect004)
        endif
    else
        set loc_trigger01=CreateTrigger()
        call TriggerRegisterTimerEvent(loc_trigger01,2,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func0489))
    endif
    set loc_unit07=loc_unit02
    if loc_unit07!=null and loc_unit01!=loc_unit07 then
        call ReviveHero(loc_unit07,loc_real01,loc_real02,false)
        call SetUnitX(loc_unit07,loc_real01)
        call SetUnitY(loc_unit07,loc_real02)
        call Func0483(loc_unit07)
        call SetUnitPathing(loc_unit07,true)
        call SetUnitState(loc_unit07,UNIT_STATE_MANA,10000)
    endif
    set loc_unit07=loc_unit03
    if loc_unit07!=null and loc_unit01!=loc_unit07 then
        call ReviveHero(loc_unit07,loc_real01,loc_real02,false)
        call SetUnitX(loc_unit07,loc_real01)
        call SetUnitY(loc_unit07,loc_real02)
        call Func0483(loc_unit07)
        call SetUnitPathing(loc_unit07,true)
        call SetUnitState(loc_unit07,UNIT_STATE_MANA,10000)
    endif
    set loc_unit07=loc_unit04
    if loc_unit07!=null and loc_unit01!=loc_unit07 then
        call ReviveHero(loc_unit07,loc_real01,loc_real02,false)
        call SetUnitX(loc_unit07,loc_real01)
        call SetUnitY(loc_unit07,loc_real02)
        call Func0483(loc_unit07)
        call SetUnitPathing(loc_unit07,true)
        call SetUnitState(loc_unit07,UNIT_STATE_MANA,10000)
    endif
    set loc_unit07=loc_unit05
    if loc_unit07!=null and loc_unit01!=loc_unit07 then
        call ReviveHero(loc_unit07,loc_real01,loc_real02,false)
        call SetUnitX(loc_unit07,loc_real01)
        call SetUnitY(loc_unit07,loc_real02)
        call Func0483(loc_unit07)
        call SetUnitPathing(loc_unit07,true)
        call SetUnitState(loc_unit07,UNIT_STATE_MANA,10000)
    endif
    set loc_unit07=loc_unit06
    if loc_unit07!=null and loc_unit01!=loc_unit07 then
        call ReviveHero(loc_unit07,loc_real01,loc_real02,false)
        call SetUnitX(loc_unit07,loc_real01)
        call SetUnitY(loc_unit07,loc_real02)
        call Func0483(loc_unit07)
        call SetUnitPathing(loc_unit07,true)
        call SetUnitState(loc_unit07,UNIT_STATE_MANA,10000)
    endif
endfunction

// 11399 ~ 11439
function Func0491 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local real loc_real01
    local real loc_real02
    local integer loc_integer01
    set booleans017[GetPlayerId((loc_player01))]=false
    set booleans010[GetPlayerId(GetOwningPlayer((loc_unit01)))]=false
    if Func0056(GetOwningPlayer(loc_unit01))then
        set loc_real01=GetRectCenterX(rect011)
        set loc_real02=GetRectCenterY(rect011)
    else
        set loc_real01=GetRectCenterX(rect004)
        set loc_real02=GetRectCenterY(rect004)
    endif
    if boolean067 then
        set integers066[GetPlayerId(loc_player01)]=R2I(TimerGetRemaining(timers002[GetPlayerId(loc_player01)])*0.25)
        set reals004[GetPlayerId(loc_player01)]=(TimerGetElapsed(timer001))+TimerGetRemaining(timers002[GetPlayerId(loc_player01)])
    else
        set integers066[GetPlayerId(loc_player01)]=0
    endif
    call TimerStart(timers002[GetPlayerId(loc_player01)],0.0,false,null)
    if Func0486(loc_unit01)then
        call Func0490(loc_unit01)
    else
        call Func0485(loc_unit01,loc_player01,loc_real01,loc_real02,false)
    endif
    call SetUnitX(loc_unit01,loc_real01)
    call SetUnitY(loc_unit01,loc_real02)
    call Func0483(loc_unit01)
    call SetUnitPathing(loc_unit01,true)
    if Func0394(loc_unit01,integers089[integer235])!=null and GetUnitTypeId(loc_unit01)!='H00J' then
        set loc_integer01=(R2I(((GetItemCharges(Func0394(loc_unit01,integers089[integer235]))*0.67)*1.0)))
        if GetItemCharges(Func0394(loc_unit01,integers089[integer235]))==1 then
            set loc_integer01=0
        endif
        call SetItemCharges(Func0394(loc_unit01,integers089[integer235]),loc_integer01)
        call AddHeroXP(loc_unit01,GetHeroXP(units009[GetPlayerId(GetOwningPlayer(loc_unit01))]),true)
        call RemoveUnit(units009[GetPlayerId(GetOwningPlayer(loc_unit01))])
    endif
endfunction
