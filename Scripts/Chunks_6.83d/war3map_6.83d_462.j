
// 58714 ~ 58716
function Func2656 takes nothing returns nothing
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareMissile.mdl",GetTriggerUnit(),"weapon"))
endfunction

// 58718 ~ 58723
function Func2657 takes nothing returns boolean
    if GetSpellAbilityId()=='A02A' then
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareMissile.mdl",GetTriggerUnit(),"weapon"))
    endif
    return false
endfunction

// 58725 ~ 58730
function Func2658 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerAddCondition(loc_trigger01,Condition(function Func2657))
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    set loc_trigger01=null
endfunction
