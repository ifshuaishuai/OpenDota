
// 44498 ~ 44500
function Func1762 takes nothing returns boolean
    return GetSpellAbilityId()==('A0GP')or GetSpellAbilityId()==('A0FW')
endfunction

// 44502 ~ 44515
function Func1763 takes integer loc_integer01,integer loc_integer02 returns integer
    if loc_integer02==0 then
        return 1
    else
        if loc_integer01==1 then
            return loc_integer02+1
        elseif loc_integer01==2 then
            return loc_integer02+6
        elseif loc_integer01==3 then
            return loc_integer02+12
        endif
    endif
    return 1
endfunction

// 44517 ~ 44519
function Func1764 takes nothing returns boolean
    return GetUnitTypeId(GetFilterUnit())=='e00X'
endfunction
