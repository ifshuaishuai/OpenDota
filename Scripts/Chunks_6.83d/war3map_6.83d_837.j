
// 87545 ~ 87558
function Func4190 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEvalCount(GetTriggeringTrigger())>30 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call Func0373(loc_unit01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 87560 ~ 87607
function Func4191 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A29V')
    if loc_integer02>60 then
        call UnitRemoveAbility(loc_unit01,'B0EV')
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamage()>100 and IsUnitType(GetEventDamageSource(),UNIT_TYPE_STRUCTURE)==false then
            call Func0145(loc_unit01,GetEventDamage())
            set loc_unit02=units001[GetPlayerId(GetOwningPlayer(GetEventDamageSource()))]
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
            call Func0373(loc_unit01)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            if Func0194(loc_unit02)==false then
                call UnitShareVision(loc_unit02,GetOwningPlayer(loc_unit01),true)
                call Func0193(loc_unit01,'A29W')
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A29W',true)
                call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A29V',false)
                set loc_trigger01=CreateTrigger()
                set loc_integer01=GetHandleId(loc_trigger01)
                call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
                call TriggerRegisterTimerEvent(loc_trigger01,4,false)
                call TriggerAddCondition(loc_trigger01,Condition(function Func4189))
                call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
                call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
                call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget("war3mapImported\\RetaliationTarget.mdx",loc_unit01,"origin")))
                call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget("war3mapImported\\RetaliationTarget.mdx",loc_unit02,"origin")))
                set loc_trigger01=CreateTrigger()
                set loc_integer01=GetHandleId(loc_trigger01)
                call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
                call TriggerAddCondition(loc_trigger01,Condition(function Func4190))
                call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
            endif
        endif
    else
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02+1))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 87609 ~ 87621
function Func4192 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4191))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(34),(0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\RetaliationShield.mdx",loc_unit01,"chest")))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 87623 ~ 87628
function Func4193 takes nothing returns boolean
    if GetSpellAbilityId()=='A29V' then
        call Func4192()
    endif
    return false
endfunction

// 87630 ~ 87635
function Func4194 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4193))
    set loc_trigger01=null
endfunction
