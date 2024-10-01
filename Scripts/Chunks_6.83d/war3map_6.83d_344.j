
// 50978 ~ 50980
function Func2187 takes nothing returns boolean
    return GetSpellAbilityId()==('A0KU')
endfunction

// 50982 ~ 50984
function Func2188 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and IsUnitAlly(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))
endfunction

// 50986 ~ 50990
function Func2189 takes nothing returns nothing
    call Func0193(GetEnumUnit(),('A0KT'))
    call SetUnitAbilityLevel(GetEnumUnit(),('A0KT'),integer011)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Human\\Invisibility\\InvisibilityTarget.mdl",GetEnumUnit(),"chest"))
endfunction
