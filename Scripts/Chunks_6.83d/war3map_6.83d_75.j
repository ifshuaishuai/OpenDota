
// 21256 ~ 21265
function Func0818 takes nothing returns nothing
    if((LoadInteger(hashtable001,(GetHandleId((GetEnumUnit()))),((4258))))==1)==true then
        call Func0120(GetOwningPlayer(GetEnumUnit()),GetObjectName('n02M')+" "+GetUnitName(GetEnumUnit())+" "+GetObjectName('n02S'))
    else
        if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
            call Func0044(GetEnumUnit(),4258,25)
        endif
        call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)+250)
    endif
endfunction

// 21267 ~ 21275
function Func0819 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),775,Condition(function Func0331))
    call ForGroup(loc_group01,function Func0818)
    call Func0029(loc_group01)
    set loc_unit01=null
    set loc_group01=null
endfunction

// 21277 ~ 21281
function Func0820 takes nothing returns nothing
    if GetSpellAbilityId()=='A0CK' then
        call Func0819()
    endif
endfunction
