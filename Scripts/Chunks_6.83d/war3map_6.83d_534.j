
// 63413 ~ 63415
function Func2933 takes nothing returns nothing
    call Func0115(unit332,GetEnumUnit(),1,real335)
endfunction

// 63417 ~ 63445
function Func2934 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local group loc_group01
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if GetTriggerEvalCount(loc_trigger01)>200 or GetTriggerEventId()==EVENT_UNIT_DEATH or(GetTriggerEvalCount(loc_trigger01)>1 and GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()=='A0QG' and GetSpellTargetUnit()==loc_unit01)then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(31))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_integer02=loc_integer02+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
        set loc_group01=Func0030()
        set unit124=loc_unit02
        set unit332=loc_unit02
        set real335=1.0+2.0*GetUnitAbilityLevel(loc_unit02,'A0QG')
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),275,Condition(function Func0305))
        call GroupRemoveUnit(loc_group01,loc_unit01)
        call ForGroup(loc_group01,function Func2933)
        call Func0029(loc_group01)
        set loc_unit01=null
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_group01=null
    return false
endfunction

// 63447 ~ 63461
function Func2935 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local effect loc_effect01=AddSpecialEffectTarget("war3mapImported\\NewSoulArmor.mdx",GetSpellTargetUnit(),"chest")
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call Func0184(sound015,GetUnitX(GetSpellTargetUnit()),GetUnitY(GetSpellTargetUnit()))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(GetTriggerUnit()))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(GetSpellTargetUnit()))
    call SaveEffectHandle(hashtable001,(loc_integer01),(31),(loc_effect01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,GetSpellTargetUnit(),EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2934))
    set loc_trigger01=null
    set loc_effect01=null
endfunction

// 63463 ~ 63468
function Func2936 takes nothing returns boolean
    if GetSpellAbilityId()=='A0QG' then
        call Func2935()
    endif
    return false
endfunction

// 63470 ~ 63475
function Func2937 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2936))
    set loc_trigger01=null
endfunction
