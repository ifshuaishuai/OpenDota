
// 87490 ~ 87493
function Func4186 takes nothing returns nothing
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl",GetTriggerUnit(),"origin"))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\ManaFlare\\ManaFlareBoltImpact.mdl",GetTriggerUnit(),"origin"))
endfunction

// 87495 ~ 87500
function Func4187 takes nothing returns boolean
    if GetUnitTypeId(GetTriggerUnit())=='H00S' then
        call Func4186()
    endif
    return false
endfunction

// 87502 ~ 87507
function Func4188 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4187))
    set loc_trigger01=null
endfunction
