
// 92204 ~ 92230
function Func4456 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2SG')
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or loc_integer03>9 then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='A2T2' and GetSpellTargetUnit()==loc_unit02 then
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        set loc_integer03=loc_integer03+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
        call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_LIFE)+11*loc_integer02)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 92232 ~ 92258
function Func4457 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2SG')
    local real loc_real01=loc_integer02*90
    local real loc_real02=0.75
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4456))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\DarkMending.mdx",loc_unit02,"origin")))
    if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==false then
        set loc_real02=1.0
    endif
    if GetUnitState(loc_unit02,UNIT_STATE_LIFE)<=loc_real01*loc_real02 and IsUnitAlly(loc_unit02,GetOwningPlayer(loc_unit01))==true then
        set loc_real01=GetUnitState(loc_unit02,UNIT_STATE_LIFE)/0.75-10
    endif
    call Func0115(loc_unit01,loc_unit02,1,loc_real01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 92260 ~ 92267
function Func4458 takes nothing returns boolean
    if GetSpellAbilityId()=='A2SG' then
        if IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==false or Func0028(GetSpellTargetUnit())==false then
            call Func4457()
        endif
    endif
    return false
endfunction

// 92269 ~ 92274
function Func4459 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4458))
    set loc_trigger01=null
endfunction
