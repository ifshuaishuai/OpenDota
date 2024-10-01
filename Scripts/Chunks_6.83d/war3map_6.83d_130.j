
// 24913 ~ 24929
function Func1056 takes nothing returns nothing
    if GetUnitAbilityLevel(GetEnumUnit(),'A0P4')!=0 then
        call GroupRemoveUnit(group001,GetEnumUnit())
    endif
    if GetUnitTypeId(GetEnumUnit())=='o003' then
        call GroupRemoveUnit(group001,GetEnumUnit())
    endif
    if GetUnitTypeId(GetEnumUnit())=='o01X' then
        call GroupRemoveUnit(group001,GetEnumUnit())
    endif
    if Func0194(GetEnumUnit())==true then
        call GroupRemoveUnit(group001,GetEnumUnit())
    endif
    if Func0096(GetEnumUnit())==true then
        call GroupRemoveUnit(group001,GetEnumUnit())
    endif
endfunction

// 24931 ~ 24935
function Func1057 takes group loc_group01 returns boolean
    set group001=loc_group01
    call ForGroup(loc_group01,function Func1056)
    return FirstOfGroup(loc_group01)==null
endfunction

// 24937 ~ 25044
function Func1058 takes nothing returns boolean
    local group loc_group01
    local rect loc_rect01
    local rect loc_rect02
    if boolean123==false then
        return false
    endif
    set loc_rect01=rect034
    set loc_rect02=rect019
    set loc_group01=Func0030()
    call GroupEnumUnitsInRect(loc_group01,loc_rect01,Condition(function Func0011))
    if Func1057(loc_group01)then
        call Func1054(GetRectCenterX(loc_rect02),GetRectCenterY(loc_rect02))
    endif
    call Func0029(loc_group01)
    set loc_rect01=rect035
    set loc_rect02=rect020
    set loc_group01=Func0030()
    call GroupEnumUnitsInRect(loc_group01,loc_rect01,Condition(function Func0011))
    if Func1057(loc_group01)then
        call Func1055(GetRectCenterX(loc_rect02),GetRectCenterY(loc_rect02))
    endif
    call Func0029(loc_group01)
    set loc_rect01=rect036
    set loc_rect02=rect021
    set loc_group01=Func0030()
    call GroupEnumUnitsInRect(loc_group01,loc_rect01,Condition(function Func0011))
    if Func1057(loc_group01)then
        call Func1044(GetRectCenterX(loc_rect02),GetRectCenterY(loc_rect02))
    endif
    call Func0029(loc_group01)
    set loc_rect01=rect037
    set loc_rect02=rect022
    set loc_group01=Func0030()
    call GroupEnumUnitsInRect(loc_group01,loc_rect01,Condition(function Func0011))
    if Func1057(loc_group01)then
        call Func1046(GetRectCenterX(loc_rect02),GetRectCenterY(loc_rect02))
    endif
    call Func0029(loc_group01)
    set loc_rect01=rect038
    set loc_rect02=rect023
    set loc_group01=Func0030()
    call GroupEnumUnitsInRect(loc_group01,loc_rect01,Condition(function Func0011))
    if Func1057(loc_group01)then
        call Func1049(GetRectCenterX(loc_rect02),GetRectCenterY(loc_rect02))
    endif
    call Func0029(loc_group01)
    set loc_rect01=rect039
    set loc_rect02=rect024
    set loc_group01=Func0030()
    call GroupEnumUnitsInRect(loc_group01,loc_rect01,Condition(function Func0011))
    if Func1057(loc_group01)then
        call Func1048(GetRectCenterX(loc_rect02),GetRectCenterY(loc_rect02))
    endif
    call Func0029(loc_group01)
    set loc_rect01=rect040
    set loc_rect02=rect025
    set loc_group01=Func0030()
    call GroupEnumUnitsInRect(loc_group01,loc_rect01,Condition(function Func0011))
    if Func1057(loc_group01)then
        call Func1050(GetRectCenterX(loc_rect02),GetRectCenterY(loc_rect02))
    endif
    call Func0029(loc_group01)
    set loc_rect01=rect042
    set loc_rect02=rect026
    set loc_group01=Func0030()
    call GroupEnumUnitsInRect(loc_group01,loc_rect01,Condition(function Func0011))
    if Func1057(loc_group01)then
        call Func1051(GetRectCenterX(loc_rect02),GetRectCenterY(loc_rect02))
    endif
    call Func0029(loc_group01)
    set loc_rect01=rect041
    set loc_rect02=rect027
    set loc_group01=Func0030()
    call GroupEnumUnitsInRect(loc_group01,loc_rect01,Condition(function Func0011))
    if Func1057(loc_group01)then
        call Func1047(GetRectCenterX(loc_rect02),GetRectCenterY(loc_rect02))
    endif
    call Func0029(loc_group01)
    set loc_rect01=rect043
    set loc_rect02=rect028
    set loc_group01=Func0030()
    call GroupEnumUnitsInRect(loc_group01,loc_rect01,Condition(function Func0011))
    if Func1057(loc_group01)then
        call Func1052(GetRectCenterX(loc_rect02),GetRectCenterY(loc_rect02))
    endif
    call Func0029(loc_group01)
    set loc_rect01=rect046
    set loc_rect02=rect047
    set loc_group01=Func0030()
    call GroupEnumUnitsInRect(loc_group01,loc_rect01,Condition(function Func0011))
    if Func1057(loc_group01)then
        call Func1053(GetRectCenterX(loc_rect02),GetRectCenterY(loc_rect02))
    endif
    call Func0029(loc_group01)
    set loc_rect01=rect048
    set loc_rect02=rect049
    set loc_group01=Func0030()
    call GroupEnumUnitsInRect(loc_group01,loc_rect01,Condition(function Func0011))
    if Func1057(loc_group01)then
        call Func1045(GetRectCenterX(loc_rect02),GetRectCenterY(loc_rect02))
    endif
    call Func0029(loc_group01)
    set loc_rect01=null
    set loc_rect02=null
    set loc_group01=null
    return false
endfunction
