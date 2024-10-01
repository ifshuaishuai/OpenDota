
// 66654 ~ 66657
function Func3115 takes nothing returns nothing
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIfb\\AIfbSpecialArt.mdl",GetTriggerUnit(),"weapon"))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIfb\\AIfbSpecialArt.mdl",GetTriggerUnit(),"hand"))
endfunction

// 66659 ~ 66668
function Func3116 takes nothing returns boolean
    if GetSpellAbilityId()=='AHtb' then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CAST then
            call Func3115()
        elseif Func0028(GetSpellTargetUnit())==false then
            call Func3114()
        endif
    endif
    return false
endfunction

// 66670 ~ 66676
function Func3117 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3116))
    set loc_trigger01=null
endfunction
