
// 86778 ~ 86789
function Func4158 takes nothing returns boolean
    if IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),GetLearnedSkill())==1 then
        if GetLearnedSkill()=='A27F' then
            call UnitRemoveAbility(GetTriggerUnit(),'A27I')
        elseif GetLearnedSkill()=='A27G' then
            call UnitRemoveAbility(GetTriggerUnit(),'A27K')
        elseif GetLearnedSkill()=='A27V' then
            call UnitRemoveAbility(GetTriggerUnit(),'A27J')
        endif
    endif
    return false
endfunction

// 86791 ~ 86795
function Func4159 takes integer loc_integer01,integer loc_integer02 returns nothing
    set integers175[integer541]=loc_integer01
    set integers176[integer541]=loc_integer02
    set integer541=integer541+1
endfunction

// 86797 ~ 86807
function Func4160 takes integer loc_integer01 returns integer
    local integer loc_integer02=0
    loop
        exitwhen loc_integer02==integer541
        if loc_integer01==integers175[loc_integer02]or loc_integer01==integers176[loc_integer02]then
            return loc_integer02
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return-1
endfunction

// 86809 ~ 86812
function Func4161 takes integer loc_integer01 returns nothing
    set integers174[integer540]=loc_integer01
    set integer540=integer540+1
endfunction

// 86814 ~ 86824
function Func4162 takes integer loc_integer01 returns boolean
    local integer loc_integer02=0
    loop
        exitwhen loc_integer02==integer540
        if loc_integer01==integers174[loc_integer02]then
            return true
        endif
        set loc_integer02=loc_integer02+1
    endloop
    return false
endfunction

// 86826 ~ 86832
function Func4163 takes nothing returns boolean
    if IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and Func4162(GetSpellAbilityId())==false then
        call SaveInteger(hashtable001,(GetHandleId(GetTriggerUnit())),(705),(GetSpellAbilityId()))
        call SaveInteger(hashtable001,(GetHandleId(GetTriggerUnit())),(712),(GetUnitAbilityLevel(GetTriggerUnit(),GetSpellAbilityId())))
    endif
    return false
endfunction

// 86834 ~ 86863
function Func4164 takes unit loc_unit01 returns nothing
    call UnitRemoveAbility(loc_unit01,'A13D')
    call UnitRemoveAbility(loc_unit01,'A2NI')
    call UnitRemoveAbility(loc_unit01,'A1QV')
    call UnitRemoveAbility(loc_unit01,'A1TU')
    call UnitRemoveAbility(loc_unit01,'A24A')
    call UnitRemoveAbility(loc_unit01,'A24B')
    call UnitRemoveAbility(loc_unit01,'A1NH')
    call UnitRemoveAbility(loc_unit01,'A20N')
    call UnitRemoveAbility(loc_unit01,'A1Z2')
    call UnitRemoveAbility(loc_unit01,'A1Z3')
    call UnitRemoveAbility(loc_unit01,'A205')
    call UnitRemoveAbility(loc_unit01,'A1VU')
    call UnitRemoveAbility(loc_unit01,'A0GC')
    call UnitRemoveAbility(loc_unit01,'A24E')
    call UnitRemoveAbility(loc_unit01,'A0RT')
    call UnitRemoveAbility(loc_unit01,'A1RA')
    call UnitRemoveAbility(loc_unit01,'A0HA')
    call UnitRemoveAbility(loc_unit01,'A0SA')
    call UnitRemoveAbility(loc_unit01,'A121')
    call UnitRemoveAbility(loc_unit01,'A1WF')
    call UnitRemoveAbility(loc_unit01,'A02T')
    call UnitRemoveAbility(loc_unit01,'A1S9')
    call UnitRemoveAbility(loc_unit01,'A21H')
    call UnitRemoveAbility(loc_unit01,'A1MN')
    call UnitRemoveAbility(loc_unit01,'A06K')
    call UnitRemoveAbility(loc_unit01,'A0NE')
    call UnitRemoveAbility(loc_unit01,'A0MP')
    call UnitRemoveAbility(loc_unit01,'A2MB')
endfunction
