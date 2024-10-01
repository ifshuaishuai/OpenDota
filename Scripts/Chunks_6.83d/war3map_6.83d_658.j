
// 72250 ~ 72251
function Func3433 takes nothing returns nothing
endfunction

// 72253 ~ 72271
function Func3434 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local group loc_group01=Func0030()
    set unit124=loc_unit01
    set real354=GetUnitAbilityLevel(loc_unit01,'A01I')*10+10
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),475,Condition(function Func0332))
    call ForGroup(loc_group01,function Func3433)
    call Func0029(loc_group01)
    if GetTriggerEvalCount(loc_trigger01)==5 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit02=null
    return false
endfunction

// 72273 ~ 72290
function Func3435 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A01I')
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3434))
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call Func0193(loc_unit02,'A262')
    call SetUnitAbilityLevel(loc_unit02,'A262',loc_integer02)
    call IssuePointOrder(loc_unit02,"rainoffire",loc_real01,loc_real02)
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 72292 ~ 72297
function Func3436 takes nothing returns boolean
    if GetSpellAbilityId()=='A01I' then
        call Func3435()
    endif
    return false
endfunction

// 72299 ~ 72304
function Func3437 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3436))
    set loc_trigger01=null
endfunction
