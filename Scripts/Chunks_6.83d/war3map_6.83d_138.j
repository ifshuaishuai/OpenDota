
// 29724 ~ 29734
function Func1197 takes nothing returns boolean
    if GetUnitTypeId(GetTriggerUnit())=='n00L' then
        if IsUnitIllusion(GetAttacker())==true then
            call KillUnit(GetAttacker())
        elseif IsUnitInRegion(region009,GetAttacker())==false then
            call Func0120(GetOwningPlayer(GetAttacker()),GetObjectName('n035'))
            call IssueImmediateOrder(GetAttacker(),"stop")
        endif
    endif
    return false
endfunction

// 29736 ~ 29738
function Func1198 takes nothing returns boolean
    return GetUnitTypeId(GetEnteringUnit())=='e00E' or GetUnitTypeId(GetEnteringUnit())=='e022'
endfunction

// 29740 ~ 29745
function Func1199 takes nothing returns nothing
    call ShowUnitHide(GetEnteringUnit())
    call SetUnitPathing(GetEnteringUnit(),false)
    call SetUnitInvulnerable(GetEnteringUnit(),true)
    call UnitApplyTimedLifeBJ(20.00,'BTLF',GetEnteringUnit())
endfunction

// 29747 ~ 29761
function Func1200 takes nothing returns boolean
    if(GetUnitTypeId(GetDyingUnit())=='e00R')then
        return true
    endif
    if(GetUnitTypeId(GetDyingUnit())=='e011')then
        return true
    endif
    if(GetUnitTypeId(GetDyingUnit())=='e00S')then
        return true
    endif
    if(GetUnitTypeId(GetDyingUnit())=='e019')then
        return true
    endif
    return false
endfunction

// 29763 ~ 29771
function Func1201 takes nothing returns boolean
    if(not(GetDyingUnit()==unit151))then
        return false
    endif
    if(not(Func0194(unit152)==true))then
        return false
    endif
    return true
endfunction

// 29773 ~ 29781
function Func1202 takes nothing returns boolean
    if(not(GetDyingUnit()==unit152))then
        return false
    endif
    if(not(Func0194(unit151)==true))then
        return false
    endif
    return true
endfunction
