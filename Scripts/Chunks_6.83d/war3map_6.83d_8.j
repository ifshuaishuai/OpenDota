
// 4164 ~ 4166
function Func0135 takes nothing returns nothing
    call KillDestructable(GetEnumDestructable())
endfunction

// 4168 ~ 4172
function Func0136 takes unit loc_unit01 returns nothing
    call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(38),(false))
    call FlushChildHashtable(hashtable001,(GetHandleId(loc_unit01)))
    call RemoveUnit(loc_unit01)
endfunction

// 4174 ~ 4179
function Func0137 takes unit loc_unit01,integer loc_integer01,integer loc_integer02 returns nothing
    if GetUnitAbilityLevel(loc_unit01,loc_integer01)==0 then
        call UnitAddAbility(loc_unit01,loc_integer01)
    endif
    call SetUnitAbilityLevel(loc_unit01,loc_integer01,loc_integer02)
endfunction

// 4181 ~ 4187
function Func0138 takes integer loc_integer01,integer loc_integer02 returns integer
    if(loc_integer01<loc_integer02)then
        return loc_integer01
    else
        return loc_integer02
    endif
endfunction

// 4189 ~ 4195
function Func0139 takes integer loc_integer01,integer loc_integer02 returns integer
    if(loc_integer01<loc_integer02)then
        return loc_integer02
    else
        return loc_integer01
    endif
endfunction

// 4197 ~ 4199
function Func0140 takes integer loc_integer01,integer loc_integer02,integer loc_integer03 returns integer
    return Func0139(Func0138(loc_integer01,loc_integer03),loc_integer02)
endfunction

// 4201 ~ 4207
function Func0141 takes real loc_real01,real loc_real02 returns real
    if(loc_real01<loc_real02)then
        return loc_real01
    else
        return loc_real02
    endif
endfunction

// 4209 ~ 4215
function Func0142 takes real loc_real01,real loc_real02 returns real
    if(loc_real01<loc_real02)then
        return loc_real02
    else
        return loc_real01
    endif
endfunction
