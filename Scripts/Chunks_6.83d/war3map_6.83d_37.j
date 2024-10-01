
// 14587 ~ 14593
function Func0593 takes nothing returns nothing
    if IsUnitType(GetEnumUnit(),UNIT_TYPE_MELEE_ATTACKER)==true then
        call AddHeroXP(GetEnumUnit(),integer024/integer022,true)
    else
        call AddHeroXP(GetEnumUnit(),integer023/integer022,true)
    endif
endfunction

// 14595 ~ 14609
function Func0594 takes nothing returns nothing
    local group loc_group01=Func0030()
    local integer loc_integer01
    local integer loc_integer02=20
    local integer loc_integer03=31
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(GetTriggerUnit()),GetUnitY(GetTriggerUnit()),1300+25,Condition(function Func0339))
    set loc_integer01=Func0209(loc_group01)
    set integer022=loc_integer01
    set integer023=loc_integer02
    set integer024=loc_integer03
    call ForGroup(loc_group01,function Func0593)
    call Func0029(loc_group01)
    call Func0592(GetDyingUnit(),GetOwningPlayer(GetKillingUnit()))
    set loc_group01=null
endfunction

// 14611 ~ 14620
function Func0595 takes nothing returns boolean
    if IsUnitAlly(GetKillingUnit(),GetOwningPlayer(GetTriggerUnit()))==true then
        call Func0594()
    else
        if boolean025 and Func0058(GetOwningPlayer(GetKillingUnit()))then
            call Func0591()
        endif
    endif
    return false
endfunction
