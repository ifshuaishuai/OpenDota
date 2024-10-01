
// 49743 ~ 49745
function Func2111 takes nothing returns nothing
    call Func0115(unit287,GetEnumUnit(),1,(60.0+20.0*integer476)*0.25)
endfunction

// 49747 ~ 49769
function Func2112 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local group loc_group01
    if loc_integer02==20 or GetTriggerEventId()==EVENT_UNIT_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set unit124=loc_unit01
        set unit287=loc_unit01
        set integer476=GetUnitAbilityLevel(loc_unit01,'A05G')
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),275,Condition(function Func0305))
        call ForGroup(loc_group01,function Func2111)
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 49771 ~ 49780
function Func2113 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.25,true)
    call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2112))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(GetTriggerUnit()))
    call TriggerEvaluate(loc_trigger01)
    call Func0044(GetTriggerUnit(),4252,5)
endfunction

// 49782 ~ 49787
function Func2114 takes nothing returns boolean
    if GetSpellAbilityId()=='A05G' then
        call Func2113()
    endif
    return false
endfunction

// 49789 ~ 49794
function Func2115 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2114))
    set loc_trigger01=null
endfunction
