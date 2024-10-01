
// 59927 ~ 59929
function Func2735 takes nothing returns boolean
    return(GetSpellAbilityId()==('A2WQ')or GetSpellAbilityId()==('A020')or GetSpellAbilityId()==('A29G')or GetSpellAbilityId()==('A29H'))and GetUnitAbilityLevel(GetTriggerUnit(),('A0N5'))>0
endfunction

// 59931 ~ 59937
function Func2736 takes nothing returns nothing
    local real loc_real01=GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)
    local real loc_real02=0.03+0.02*GetUnitAbilityLevel(GetTriggerUnit(),('A0N5'))
    local real loc_real03=loc_real01*loc_real02
    call UnitDamageTarget(GetTriggerUnit(),GetEnumUnit(),loc_real03,true,true,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\ForkedLightning\\ForkedLightningTarget.mdl",GetEnumUnit(),"overhead"))
endfunction
