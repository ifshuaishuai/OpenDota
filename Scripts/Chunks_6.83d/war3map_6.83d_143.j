
// 30549 ~ 30562
function Func1238 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(26)))
    if GetUnitTypeId(loc_unit01)!='ncop' then
        call UnitResetCooldown(loc_unit01)
        call SetUnitManaPercentBJ(loc_unit01,100)
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 30564 ~ 30571
function Func1239 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1238))
    call SaveUnitHandle(hashtable001,(loc_integer01),(26),(GetTriggerUnit()))
    set loc_trigger01=null
endfunction

// 30573 ~ 30588
function Func1240 takes nothing returns nothing
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=Func0063(force001)+Func0063(force002)
    local integer loc_integer02=Func0138(loc_integer01,loc_integer01/2+1)
    local integer loc_integer03=GetHandleId(loc_trigger01)
    set boolean136=true
    if boolean104==false then
        set boolean098=true
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,60.00," ")
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,90.00,GetObjectName('n077'))
        call DisplayTimedTextToForce(bj_FORCE_ALL_PLAYERS,90.00,GetObjectName('n078'))
        set loc_trigger01=CreateTrigger()
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
        call TriggerAddAction(loc_trigger01,function Func1239)
    endif
endfunction
