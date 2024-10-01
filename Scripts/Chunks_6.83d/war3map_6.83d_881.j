
// 90966 ~ 90968
function Func4379 takes nothing returns boolean
    return GetUnitAbilityLevel(GetFilterUnit(),'B0G1')>0
endfunction

// 90970 ~ 90984
function Func4380 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    set unit412=loc_unit01
    set integer556=GetUnitAbilityLevel(loc_unit01,'A2L9')
    set integer555=0
    call GroupEnumUnitsInRange(loc_group01,0,0,9999,Condition(function Func4379))
    call ForGroup(loc_group01,function Func4376)
    call ForGroup(loc_group01,function Func4378)
    call Func0029(loc_group01)
    set loc_group01=null
    set loc_unit01=null
endfunction

// 90986 ~ 90991
function Func4381 takes nothing returns boolean
    if GetSpellAbilityId()=='A2L9' then
        call Func4380()
    endif
    return false
endfunction
