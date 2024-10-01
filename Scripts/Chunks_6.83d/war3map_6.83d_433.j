
// 56767 ~ 56778
function Func2537 takes nothing returns nothing
    local real loc_real01=Func0147(unit310,GetEnumUnit())
    local real loc_real02=real315
    local real loc_real03=225
    if IsUnitType(GetEnumUnit(),UNIT_TYPE_STRUCTURE)==true then
        set loc_real03=440
    endif
    if loc_real01>loc_real03 then
        set loc_real02=loc_real02/2
    endif
    call Func0115(unit310,GetEnumUnit(),2,loc_real02)
endfunction

// 56780 ~ 56796
function Func2538 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(347)))
    local group loc_group01=Func0030()
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    set unit124=loc_unit01
    set unit310=loc_unit01
    set real315=225+75*loc_integer02
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),500+25,Condition(function Func0321))
    call ForGroup(loc_group01,function Func2537)
    call Func0029(loc_group01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    return false
endfunction

// 56798 ~ 56803
function Func2539 takes nothing returns boolean
    if GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>0.5 and(GetUnitTypeId(GetFilterUnit())=='n00O' or GetUnitTypeId(GetFilterUnit())=='n00P' or GetUnitTypeId(GetFilterUnit())=='n00Q' or GetUnitTypeId(GetFilterUnit())=='n00N')then
        set integer490=integer490+1
    endif
    return false
endfunction

// 56805 ~ 56815
function Func2540 takes nothing returns boolean
    local group loc_group01=Func0030()
    set integer490=0
    call GroupEnumUnitsOfPlayer(loc_group01,GetTriggerPlayer(),Condition(function Func2539))
    if integer490>0 then
        call DisplayTimedTextToPlayer(GetTriggerPlayer(),0,real003,10.00,GetObjectName('n0FC')+": "+I2S(integer490))
    endif
    call Func0029(loc_group01)
    set loc_group01=null
    return false
endfunction

// 56817 ~ 56835
function Func2541 takes nothing returns boolean
    if((GetUnitTypeId(GetTriggerUnit())=='n00O'))then
        return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='n00P'))then
        return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='n00Q'))then
        return true
    endif
    if((GetUnitTypeId(GetTriggerUnit())=='n00N'))then
        return true
    endif
    if GetUnitTypeId(GetTriggerUnit())=='o018' or GetUnitTypeId(GetTriggerUnit())=='o002' or GetUnitTypeId(GetTriggerUnit())=='o00B' or GetUnitTypeId(GetTriggerUnit())=='o01B' then
        if booleans024[GetPlayerId(GetOwningPlayer(GetTriggerUnit()))]then
        endif
    endif
    return false
endfunction

// 56837 ~ 56853
function Func2542 takes nothing returns boolean
    if GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(GetTriggerUnit())then
        if((GetUnitTypeId(GetFilterUnit())=='n00O'))then
            return true
        endif
        if((GetUnitTypeId(GetFilterUnit())=='n00P'))then
            return true
        endif
        if((GetUnitTypeId(GetFilterUnit())=='n00Q'))then
            return true
        endif
        if((GetUnitTypeId(GetFilterUnit())=='n00N'))then
            return true
        endif
    endif
    return false
endfunction
