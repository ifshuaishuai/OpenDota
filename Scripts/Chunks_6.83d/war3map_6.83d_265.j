
// 46106 ~ 46126
function Func1864 takes unit loc_unit01 returns nothing
    local group loc_group01=Func0030()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local unit loc_unit02
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0Z4')
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,300,Condition(function Func0314))
    set loc_unit02=GroupPickRandomUnit(loc_group01)
    call Func0029(loc_group01)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\FlakCannons\\FlakTarget.mdl",loc_unit01,"origin"))
    if loc_unit02!=null then
        call Func0193(loc_unit03,'A0Z7')
        call SetUnitAbilityLevel(loc_unit03,'A0Z7',loc_integer01)
        call IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit02)
    endif
    set loc_group01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 46128 ~ 46142
function Func1865 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetTriggerEvalCount(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    if loc_integer02>15 or GetTriggerEventId()==EVENT_UNIT_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call Func1864(loc_unit01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 46144 ~ 46155
function Func1866 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call TriggerRegisterTimerEvent(loc_trigger01,.7,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1865))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call TriggerEvaluate(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 46157 ~ 46162
function Func1867 takes nothing returns boolean
    if GetSpellAbilityId()=='A0Z4' then
        call Func1866()
    endif
    return false
endfunction

// 46164 ~ 46169
function Func1868 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1867))
    set loc_trigger01=null
endfunction
