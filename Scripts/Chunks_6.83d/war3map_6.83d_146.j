
// 30721 ~ 30723
function Func1249 takes unit loc_unit01 returns boolean
    return(GetOwningPlayer(loc_unit01)==players003[0])or(GetOwningPlayer(loc_unit01)==players004[0])
endfunction

// 30725 ~ 30728
function Func1250 takes nothing returns nothing
    call SetUnitUserData(GetEnumUnit(),0)
    call IssuePointOrderLoc(GetEnumUnit(),"attack",(locations001[GetUnitAbilityLevel((GetEnumUnit()),integer012)]))
endfunction

// 30730 ~ 30734
function Func1251 takes nothing returns nothing
    call IssueTargetOrder(GetEnumUnit(),"attack",unit255)
    call GroupAddUnit(group006,GetEnumUnit())
    call SetUnitUserData(GetEnumUnit(),integer431)
endfunction

// 30736 ~ 30745
function Func1252 takes nothing returns boolean
    local integer loc_integer01=GetUnitTypeId(GetFilterUnit())
    if loc_integer01=='ebal' or loc_integer01=='e026' or loc_integer01=='umtw' or loc_integer01=='u00R' then
        return false
    endif
    if IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(unit255))and(GetOwningPlayer(GetFilterUnit())==players003[0]or GetOwningPlayer(GetFilterUnit())==players004[0])and GetUnitUserData(GetFilterUnit())==0 then
        return true
    endif
    return false
endfunction

// 30747 ~ 30753
function Func1253 takes nothing returns nothing
    if GetUnitCurrentOrder(GetEnumUnit())==0 and IsUnitInRange(GetEnumUnit(),unit255,GetUnitAcquireRange(GetEnumUnit()))==false then
        call GroupRemoveUnit(group006,GetEnumUnit())
        call SetUnitUserData(GetEnumUnit(),0)
        call IssuePointOrderLoc(GetEnumUnit(),"attack",(locations001[GetUnitAbilityLevel((GetEnumUnit()),integer012)]))
    endif
endfunction
