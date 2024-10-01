
// 62631 ~ 62647
function Func2878 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    if GetTriggerEventId()!=EVENT_PLAYER_UNIT_SPELL_EFFECT or(GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT and Func0374(GetSpellAbilityId())and GetSpellTargetUnit()==loc_unit01)then
        if Func0194(loc_unit01)==false then
            call UnitRemoveAbility(loc_unit01,'A0WR')
            call UnitRemoveAbility(loc_unit01,'B01E')
        endif
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 62649 ~ 62661
function Func2879 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call TriggerRegisterTimerEvent(loc_trigger01,14,false)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2878))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Items\\VampiricPotion\\VampPotionCaster.mdl",loc_unit01,"origin")))
    call Func0193(loc_unit01,'A0WR')
    call SetUnitAbilityLevel(loc_unit01,'A0WR',GetUnitAbilityLevel(loc_unit01,'A0WQ'))
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A0WR',false)
endfunction

// 62663 ~ 62668
function Func2880 takes nothing returns boolean
    if GetSpellAbilityId()=='A0WQ' then
        call Func2879()
    endif
    return false
endfunction

// 62670 ~ 62675
function Func2881 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2880))
    set loc_trigger01=null
endfunction
