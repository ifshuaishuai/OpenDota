
// 78791 ~ 78810
function Func3808 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(191)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(192)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'S00U')
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real03,loc_real04,0)
    call Func0193(loc_unit02,'S00U')
    call SetUnitAbilityLevel(loc_unit02,'S00U',loc_integer02)
    call IssuePointOrderById(loc_unit02,852224,loc_real01,loc_real02)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
    return false
endfunction

// 78812 ~ 78825
function Func3809 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.3,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3808))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetSpellTargetX())*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetSpellTargetY())*1.0))
    call SaveReal(hashtable001,(loc_integer01),(191),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(192),((GetUnitY(loc_unit01))*1.0))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 78827 ~ 78832
function Func3810 takes nothing returns boolean
    if GetSpellAbilityId()=='S00U' and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true then
        call Func3809()
    endif
    return false
endfunction

// 78834 ~ 78842
function Func3811 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3810))
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterEnterRectSimple(loc_trigger01,GetWorldBounds())
    call TriggerAddCondition(loc_trigger01,Condition(function Func3807))
    set loc_trigger01=null
endfunction
