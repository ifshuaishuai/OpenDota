
// 73395 ~ 73406
function Func3495 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    call SetUnitVertexColor(loc_unit01,255,255,255,255)
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 73408 ~ 73444
function Func3496 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2TD')
    local trigger loc_trigger01
    local integer loc_integer02
    if IsUnitAlly(loc_unit02,GetOwningPlayer(loc_unit02))==true then
        call UnitAddAbility(loc_unit03,'A2ZK')
        call SetUnitAbilityLevel(loc_unit03,'A2ZK',loc_integer01)
    else
        call UnitAddAbility(loc_unit03,'A0CE')
        call SetUnitAbilityLevel(loc_unit03,'A0CE',loc_integer01)
    endif
    call IssueTargetOrder(loc_unit03,"banish",loc_unit02)
    if GetUnitTypeId(loc_unit02)=='n0FJ' or GetUnitTypeId(loc_unit02)=='n0FI' or GetUnitTypeId(loc_unit02)=='n0F6' or GetUnitTypeId(loc_unit02)=='n0FH' then
        set loc_trigger01=CreateTrigger()
        set loc_integer02=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,1.5+0.5*loc_integer01,false)
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3495))
        call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
        call SetUnitVertexColor(loc_unit02,50,255,50,150)
        call SaveEffectHandle(hashtable001,(loc_integer02),(32),(AddSpecialEffect("Abilities\\Spells\\Undead\\Cripple\\CrippleTarget.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02))))
        set loc_trigger01=null
    endif
    set loc_trigger01=CreateTrigger()
    set loc_integer02=GetHandleId(loc_trigger01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerRegisterTimerEvent(loc_trigger01,1.5+0.5*loc_integer01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3494))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 73446 ~ 73459
function Func3497 takes nothing returns boolean
    if GetSpellAbilityId()=='A2TD' then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CAST then
            if(IsUnitType(GetSpellTargetUnit(),UNIT_TYPE_STRUCTURE)==false and Func0098(GetSpellTargetUnit())==false)or GetUnitTypeId(GetSpellTargetUnit())=='n0FJ' or GetUnitTypeId(GetSpellTargetUnit())=='n0FI' or GetUnitTypeId(GetSpellTargetUnit())=='n0F6' or GetUnitTypeId(GetSpellTargetUnit())=='n0FH' then
            else
                call Func0123(GetTriggerUnit())
                call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n0K9'))
            endif
        else
            call Func3496()
        endif
    endif
    return false
endfunction

// 73461 ~ 73467
function Func3498 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3497))
    set loc_trigger01=null
endfunction
