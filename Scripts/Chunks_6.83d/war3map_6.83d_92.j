
// 21980 ~ 21993
function Func0866 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if GetTriggerEvalCount(loc_trigger01)>loc_integer02/0.1 or GetTriggerEventId()==EVENT_UNIT_DEATH or((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4256))))==1)then
        call UnitRemoveAbility(loc_unit01,'Aetl')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 21995 ~ 22009
function Func0867 takes unit loc_unit01,integer loc_integer01 returns nothing
    local unit loc_unit02=loc_unit01
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call UnitAddAbility(loc_unit02,'Aetl')
    call UnitMakeAbilityPermanent(loc_unit02,true,'Aetl')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'Aetl',false)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0866))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer02),(34),(loc_integer01))
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 22011 ~ 22013
function Func0868 takes nothing returns nothing
    call Func0867(GetEnumUnit(),3)
endfunction
