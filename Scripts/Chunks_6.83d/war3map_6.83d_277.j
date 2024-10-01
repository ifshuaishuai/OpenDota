
// 46906 ~ 46913
function Func1917 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2AI')
    if GetUnitTypeId(loc_unit01)=='Hlgr' then
        call SetUnitAbilityLevel(loc_unit01,'A0AR',loc_integer01)
    else
        call SetUnitAbilityLevel(loc_unit01,'A0AR',loc_integer01+4)
    endif
endfunction

// 46915 ~ 46923
function Func1918 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2AI')
    if loc_integer01==1 then
        call Func0193(loc_unit01,'A0AR')
    endif
    call Func1917(loc_unit01)
    set loc_unit01=null
endfunction

// 46925 ~ 46930
function Func1919 takes nothing returns boolean
    if GetLearnedSkill()=='A2AI' and IsUnitIllusion(GetTriggerUnit())==false then
        call Func1918()
    endif
    return false
endfunction
