
// 21337 ~ 21348
function Func0825 takes nothing returns nothing
    if((LoadInteger(hashtable001,(GetHandleId((GetEnumUnit()))),((4278))))==1)==true then
        call Func0120(GetOwningPlayer(GetEnumUnit()),GetObjectName('n02M'))
    else
        if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
            call Func0044(GetEnumUnit(),4278,50)
        endif
        if GetUnitAbilityLevel(GetEnumUnit(),'B0BT')==0 and GetUnitAbilityLevel(GetEnumUnit(),'B0BU')==0 then
            call IssueTargetOrder(unit249,"antimagicshell",GetEnumUnit())
        endif
    endif
endfunction

// 21350 ~ 21360
function Func0826 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    set unit249=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call UnitAddAbility(unit249,'A1EV')
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),925,Condition(function Func0336))
    call ForGroup(loc_group01,function Func0825)
    call Func0029(loc_group01)
    set loc_unit01=null
    set loc_group01=null
endfunction

// 21362 ~ 21366
function Func0827 takes nothing returns nothing
    if GetSpellAbilityId()=='A1EW' then
        call Func0826()
    endif
endfunction
