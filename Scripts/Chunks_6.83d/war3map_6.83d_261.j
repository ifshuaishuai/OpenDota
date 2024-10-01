
// 45618 ~ 45628
function Func1842 takes unit loc_unit01,integer loc_integer01 returns boolean
    local unit loc_unit02=Func1839(loc_unit01,loc_integer01)
    local boolean loc_boolean01=true
    if Func0194(loc_unit02)or(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(156)))==1 then
        set loc_boolean01=false
    endif
    call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(156),(1))
    call SetUnitVertexColor(loc_unit02,25,25,25,175)
    set loc_unit02=null
    return loc_boolean01
endfunction

// 45630 ~ 45635
function Func1843 takes nothing returns nothing
    if GetUnitState(GetEnumUnit(),UNIT_STATE_MANA)>0 and IsUnitInGroup(GetEnumUnit(),group002)==false and((LoadInteger(hashtable001,(GetHandleId((GetEnumUnit()))),((4260))))==1)==false and Func1842(GetEnumUnit(),integer464)then
        call SaveInteger(hashtable001,(GetHandleId((GetEnumUnit()))),((4260)),(1))
        call GroupAddUnit(group003,GetEnumUnit())
    endif
endfunction

// 45637 ~ 45667
function Func1844 takes trigger loc_trigger01,unit loc_unit01,real loc_real01,real loc_real02,real loc_real03,integer loc_integer01 returns nothing
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local real loc_real04=200
    local rect loc_rect01=Rect(loc_real01-loc_real03,loc_real02-loc_real03,loc_real01+loc_real03,loc_real02+loc_real03)
    local rect loc_rect02=Rect(loc_real01-loc_real03-loc_real04,loc_real02-loc_real03-loc_real04,loc_real01+loc_real03+loc_real04,loc_real02+loc_real03+loc_real04)
    local group loc_group01=Func0030()
    local group loc_group02=Func0030()
    local group loc_group03=Func0030()
    set unit124=loc_unit01
    call GroupEnumUnitsInRect(loc_group01,loc_rect01,Condition(function Func0313))
    call GroupEnumUnitsInRect(loc_group02,loc_rect02,Condition(function Func0313))
    set group002=loc_group01
    set group003=loc_group03
    set real009=loc_real01
    set real010=loc_real02
    set real011=loc_real03
    set integer464=loc_integer02
    call ForGroup(loc_group02,function Func1843)
    set integer022=loc_integer01
    call ForGroup(loc_group03,function Func1841)
    call Func0029(loc_group01)
    call Func0029(loc_group02)
    call Func0029(loc_group03)
    call RemoveRect(loc_rect01)
    call RemoveRect(loc_rect02)
    set loc_group01=null
    set loc_group02=null
    set loc_group03=null
    set loc_rect01=null
    set loc_rect02=null
endfunction
