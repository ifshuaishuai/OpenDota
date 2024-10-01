
// 93237 ~ 93243
function Func4505 takes unit loc_unit01 returns nothing
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call UnitAddAbility(loc_unit02,'A2TG')
    call SetUnitAbilityLevel(loc_unit02,'A2TG',integer562)
    call IssueTargetOrder(loc_unit02,"soulburn",loc_unit01)
    set loc_unit02=null
endfunction

// 93245 ~ 93247
function Func4506 takes nothing returns nothing
    call Func4505(GetEnumUnit())
endfunction

// 93249 ~ 93258
function Func4507 takes unit loc_unit01 returns nothing
    local group loc_group01=Func0030()
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((809))))==1)==true then
        call GroupEnumUnitsInRange(loc_group01,0,0,99999,Condition(function Func4504))
    endif
    call GroupAddUnit(loc_group01,loc_unit01)
    call ForGroup(loc_group01,function Func4506)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction
