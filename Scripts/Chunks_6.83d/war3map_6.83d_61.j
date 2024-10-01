
// 19387 ~ 19394
function Func0748 takes unit loc_unit01 returns boolean
    local item loc_item01=CreateItem('I0KK',GetUnitX(loc_unit01),GetUnitY(loc_unit01))
    local boolean loc_boolean01=UnitAddItem(loc_unit01,loc_item01)
    if loc_boolean01==false then
        call RemoveItem(loc_item01)
    endif
    return loc_boolean01
endfunction
