
// 92682 ~ 92743
function Func4477 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2M1')
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(758)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local group loc_group01
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or loc_integer04>120 or Func0098(loc_unit02)then
        call UnitRemoveAbility(loc_unit02,'A2LW')
        call UnitRemoveAbility(loc_unit02,'A2LY')
        call UnitRemoveAbility(loc_unit02,'B0G2')
        call UnitRemoveAbility(loc_unit02,'B0G3')
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_integer04=loc_integer04+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer04))
        set unit124=loc_unit01
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),225+25,Condition(function Func0305))
        call GroupRemoveUnit(loc_group01,loc_unit02)
        if FirstOfGroup(loc_group01)==null then
            if loc_integer03=='A2LW' then
                if GetUnitAbilityLevel(loc_unit02,'A2LW')==0 then
                    call Func0193(loc_unit02,'A2LW')
                    call UnitMakeAbilityPermanent(loc_unit02,true,'A2LU')
                    call UnitMakeAbilityPermanent(loc_unit02,true,'A2ME')
                endif
            else
                if GetUnitAbilityLevel(loc_unit02,'A2LY')==0 then
                    call Func0193(loc_unit02,'A2LY')
                    call UnitMakeAbilityPermanent(loc_unit02,true,'A2LT')
                    call UnitMakeAbilityPermanent(loc_unit02,true,'A2ME')
                endif
            endif
            if ModuloInteger(loc_integer04,10)==0 then
                call Func0115(loc_unit01,loc_unit02,1,loc_integer02*15*0.5)
            endif
        else
            if loc_integer03=='A2LW' then
                if GetUnitAbilityLevel(loc_unit02,'A2LW')>0 then
                    call UnitRemoveAbility(loc_unit02,'A2LW')
                    call UnitRemoveAbility(loc_unit02,'B0G2')
                endif
            else
                if GetUnitAbilityLevel(loc_unit02,'A2LY')>0 then
                    call UnitRemoveAbility(loc_unit02,'A2LY')
                    call UnitRemoveAbility(loc_unit02,'B0G3')
                endif
            endif
        endif
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 92745 ~ 92767
function Func4478 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02='A2LW'
    if GetUnitTypeId(loc_unit01)=='N0MM' then
        set loc_integer02='A2LY'
    endif
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A2LW',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A2LY',false)
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4477))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(758),(loc_integer02))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\Flux3.mdx",loc_unit02,"origin")))
    call TriggerEvaluate(loc_trigger01)
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 92769 ~ 92774
function Func4479 takes nothing returns boolean
    if GetSpellAbilityId()=='A2M1' and Func0028(GetSpellTargetUnit())==false then
        call Func4478()
    endif
    return false
endfunction

// 92776 ~ 92781
function Func4480 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4479))
    set loc_trigger01=null
endfunction
