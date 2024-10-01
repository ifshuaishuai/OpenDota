
// 63089 ~ 63091
function Func2909 takes integer loc_integer01 returns boolean
    return loc_integer01=='A06X' or loc_integer01=='A0AQ' or loc_integer01=='A14O' or loc_integer01=='A0NE' or loc_integer01=='A14O' or loc_integer01=='A1C0' or loc_integer01=='A0SB'
endfunction

// 63093 ~ 63095
function Func2910 takes nothing returns boolean
    return(GetLearnedSkill()=='A0IF')and(IsUnitIllusion(GetTriggerUnit())==false)
endfunction

// 63097 ~ 63099
function Func2911 takes nothing returns boolean
    return GetUnitAbilityLevel(GetTriggerUnit(),'B06X')>0 and(Func0081(GetSpellAbilityId())or GetSpellAbilityId()=='A0OI')and Func2909(GetSpellAbilityId())==false and Func0471(GetSpellAbilityId())==false
endfunction
