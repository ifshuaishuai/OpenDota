
// 91220 ~ 91245
function Func4396 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2LB')
    call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_LIFE)+0.1*(20+GetUnitState(loc_unit02,UNIT_STATE_MAX_LIFE)*(0.02+0.01*loc_integer02)))
    if GetTriggerEvalCount(loc_trigger01)>39 or(GetTriggerEvalCount(loc_trigger01)==1 and IsUnitHidden(loc_unit02))then
        call UnitRemoveAbility(loc_unit02,'A2LD')
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(609))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(610))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(611))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(612))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(613))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(614))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(615))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(616))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(617))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 91247 ~ 91276
function Func4397 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01
    local integer loc_integer01
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call UnitAddAbility(loc_unit03,'A2LG')
    if IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit02)==true then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call Func0193(loc_unit02,'A2LD')
        call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
        call TriggerRegisterTimerEvent(loc_trigger01,0,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4396))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        call SaveEffectHandle(hashtable001,(loc_integer01),(609),(AddSpecialEffectTarget("war3mapImported\\Cryofreeze5.mdx",loc_unit02,"hand right")))
        call SaveEffectHandle(hashtable001,(loc_integer01),(610),(AddSpecialEffectTarget("war3mapImported\\Cryofreeze5.mdx",loc_unit02,"hand left")))
        call SaveEffectHandle(hashtable001,(loc_integer01),(611),(AddSpecialEffectTarget("war3mapImported\\Cryofreeze5.mdx",loc_unit02,"foot right")))
        call SaveEffectHandle(hashtable001,(loc_integer01),(612),(AddSpecialEffectTarget("war3mapImported\\Cryofreeze5.mdx",loc_unit02,"foot left")))
        call SaveEffectHandle(hashtable001,(loc_integer01),(613),(AddSpecialEffectTarget("war3mapImported\\Cryofreeze5.mdx",loc_unit02,"foot right mount rear")))
        call SaveEffectHandle(hashtable001,(loc_integer01),(614),(AddSpecialEffectTarget("war3mapImported\\Cryofreeze5.mdx",loc_unit02,"foot left mount rear")))
        call SaveEffectHandle(hashtable001,(loc_integer01),(615),(AddSpecialEffectTarget("war3mapImported\\Cryofreeze5.mdx",loc_unit02,"head")))
        call SaveEffectHandle(hashtable001,(loc_integer01),(616),(AddSpecialEffectTarget("war3mapImported\\Cryofreeze5.mdx",loc_unit02,"chest")))
        call SaveEffectHandle(hashtable001,(loc_integer01),(617),(AddSpecialEffectTarget("war3mapImported\\Cryofreeze5.mdx",loc_unit02,"weapon")))
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 91278 ~ 91283
function Func4398 takes nothing returns boolean
    if GetSpellAbilityId()=='A2LB' then
        call Func4397()
    endif
    return false
endfunction

// 91285 ~ 91290
function Func4399 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4398))
    set loc_trigger01=null
endfunction
