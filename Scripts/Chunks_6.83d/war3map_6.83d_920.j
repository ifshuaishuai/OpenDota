
// 93762 ~ 93782
function Func4535 takes unit loc_unit01 returns nothing
    local unit loc_unit02=units001[GetPlayerId(GetOwningPlayer(loc_unit01))]
    local integer loc_integer01=GetHandleId(loc_unit02)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(279)))
    local integer loc_integer03=1
    local integer loc_integer04=1
    local unit loc_unit03
    loop
        exitwhen loc_integer03>loc_integer02
        set loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(1400+loc_integer03)))
        if Func0194(loc_unit03)==false then
            call SaveUnitHandle(hashtable001,(loc_integer01),(1400+loc_integer04),(loc_unit03))
            set loc_integer04=loc_integer04+1
        endif
        set loc_integer03=loc_integer03+1
    endloop
    set loc_integer02=loc_integer02-1
    call SaveInteger(hashtable001,(loc_integer01),(279),(loc_integer02))
    set loc_unit03=null
    set loc_unit02=null
endfunction

// 93784 ~ 93789
function Func4536 takes nothing returns boolean
    if GetUnitTypeId(GetTriggerUnit())=='o01X' then
        call Func4535(GetTriggerUnit())
    endif
    return false
endfunction
