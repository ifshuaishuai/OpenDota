
// 59424 ~ 59433
function Func2709 takes nothing returns nothing
    local destructable loc_destructable01=GetEnumDestructable()
    local real loc_real01=Atan2(GetDestructableY(loc_destructable01)-GetUnitY(unit124),GetDestructableX(loc_destructable01)-GetUnitX(unit124))
    local real loc_real02=RAbsBJ((real009-loc_real01)*bj_RADTODEG)
    if(Func0097(loc_destructable01)or GetDestructableTypeId(loc_destructable01)=='B005')and GetDestructableLife(loc_destructable01)>1 and loc_real02<real322 and loc_real02<(real323-5)then
        set real322=loc_real02
        set destructable001=loc_destructable01
    endif
    set loc_destructable01=null
endfunction

// 59435 ~ 59446
function Func2710 takes unit loc_unit01,unit loc_unit02,real loc_real01 returns destructable
    local real loc_real02=GetUnitX(loc_unit01)
    local real loc_real03=GetUnitY(loc_unit01)
    local rect loc_rect01=Rect(loc_real02-real325,loc_real03-real325,loc_real02+real325,loc_real03+real325)
    set real322=9999
    set unit124=loc_unit01
    set destructable001=null
    call EnumDestructablesInRect(loc_rect01,Condition(function Func0011),function Func2709)
    call RemoveRect(loc_rect01)
    set loc_rect01=null
    return destructable001
endfunction

// 59448 ~ 59457
function Func2711 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local real loc_real01=Atan2(GetUnitY(loc_unit01)-GetUnitY(unit124),GetUnitX(loc_unit01)-GetUnitX(unit124))
    local real loc_real02=RAbsBJ((real009-loc_real01)*bj_RADTODEG)
    if loc_real02<real322 and loc_real02<real323 and loc_unit01!=unit125 then
        set real322=loc_real02
        set unit319=loc_unit01
    endif
    set loc_unit01=null
endfunction

// 59459 ~ 59471
function Func2712 takes unit loc_unit01,unit loc_unit02,real loc_real01 returns unit
    local group loc_group01=Func0030()
    set unit319=null
    set real322=9999
    set unit124=loc_unit01
    set real009=Atan2(GetUnitY(loc_unit02)-real327,GetUnitX(loc_unit02)-real326)
    set unit125=loc_unit02
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),real324,Condition(function Func0313))
    call ForGroup(loc_group01,function Func2711)
    call Func0029(loc_group01)
    set loc_group01=null
    return unit319
endfunction
