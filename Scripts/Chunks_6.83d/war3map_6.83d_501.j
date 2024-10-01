
// 61540 ~ 61562
function Func2824 takes nothing returns nothing
    local unit loc_unit01=unit326
    local unit loc_unit02=GetEnumUnit()
    local unit loc_unit03
    local group loc_group01
    if GetUnitCurrentOrder(loc_unit02)==0 then
        set loc_group01=Func0030()
        set unit124=loc_unit02
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),825,Condition(function Func0305))
        set loc_unit03=FirstOfGroup(loc_group01)
        if loc_unit03!=null then
            call GroupRemoveUnit(loc_group01,loc_unit03)
        endif
        if FirstOfGroup(loc_group01)==null and loc_unit03==loc_unit01 then
            call IssueTargetOrder(loc_unit02,"attack",loc_unit03)
        endif
        call Func0029(loc_group01)
        set loc_unit03=null
        set loc_group01=null
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 61564 ~ 61572
function Func2825 takes unit loc_unit01 returns nothing
    local group loc_group01=Func0030()
    set unit124=loc_unit01
    set unit326=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),1000,Condition(function Func0363))
    call ForGroup(loc_group01,function Func2824)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction
