
// 29697 ~ 29707
function Func1194 takes destructable loc_destructable01 returns boolean
    local real loc_real01=GetDestructableX(loc_destructable01)
    local real loc_real02=GetDestructableY(loc_destructable01)
    local group loc_group01=Func0030()
    local boolean loc_boolean01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,250,Condition(function Func0349))
    set loc_boolean01=FirstOfGroup(loc_group01)!=null
    call Func0029(loc_group01)
    set loc_group01=null
    return loc_boolean01
endfunction

// 29709 ~ 29718
function Func1195 takes nothing returns nothing
    if Func0097(GetEnumDestructable())and GetDestructableLife(GetEnumDestructable())<1 and GetDestructableTypeId(GetEnumDestructable())!='B002' and GetDestructableTypeId(GetEnumDestructable())!='B003' then
        if Func1194(GetEnumDestructable())==false then
            call DestructableRestoreLife(GetEnumDestructable(),GetDestructableMaxLife(GetEnumDestructable()),false)
            if integers050[GetPlayerId(GetLocalPlayer())]==1 and GetDestructableTypeId(GetEnumDestructable())=='ATtr' then
                call SetDestructableAnimation(GetEnumDestructable(),"stand alternate")
            endif
        endif
    endif
endfunction

// 29720 ~ 29722
function Func1196 takes nothing returns nothing
    call EnumDestructablesInRectAll(bj_mapInitialPlayableArea,function Func1195)
endfunction
