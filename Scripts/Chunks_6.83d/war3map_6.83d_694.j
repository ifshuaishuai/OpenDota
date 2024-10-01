
// 74725 ~ 74727
function Func3575 takes nothing returns boolean
    return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(unit002))and IsUnitInGroup(GetFilterUnit(),group001)==false and GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>1 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false
endfunction

// 74729 ~ 74773
function Func3576 takes nothing returns nothing
    local timer loc_timer01=GetExpiredTimer()
    local integer loc_integer01=GetHandleId(loc_timer01)
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(133)))
    local group loc_group02=Func0030()
    local boolexpr loc_boolexpr01=Condition(function Func3575)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit03=Func0022(loc_integer02)
    local real loc_real01=GetUnitX(loc_unit03)
    local real loc_real02=GetUnitY(loc_unit03)
    local real loc_real03=GetUnitX(loc_unit02)
    local real loc_real04=GetUnitY(loc_unit02)
    local real loc_real05=Atan2(loc_real02-loc_real04,loc_real01-loc_real03)
    local real loc_real06=Func0126(GetUnitX(loc_unit02)+30*Cos(loc_real05))
    local real loc_real07=Func0129(GetUnitY(loc_unit02)+30*Sin(loc_real05))
    local unit loc_unit04
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,('A0HW'))
    if(LoadBoolean(hashtable001,(loc_integer01),(384)))then
        call SaveBoolean(hashtable001,(loc_integer01),(384),(false))
        set loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),('h002'),loc_real03,loc_real04,0)
        call SetUnitAbilityLevel(loc_unit04,('A0I2'),loc_integer03)
        call SetUnitAbilityLevel(loc_unit04,('A0HY'),loc_integer03)
        call UnitApplyTimedLife(loc_unit04,'BTLF',12)
    else
        call SaveBoolean(hashtable001,(loc_integer01),(384),(true))
    endif
    call SetUnitX(loc_unit02,loc_real06)
    call SetUnitY(loc_unit02,loc_real07)
    call SetUnitFacing(loc_unit02,loc_real05*bj_RADTODEG)
    set group001=loc_group01
    set unit002=loc_unit01
    set real002=50*GetUnitAbilityLevel(loc_unit01,('A0HW'))
    call GroupEnumUnitsInRange(loc_group02,loc_real06,loc_real07,150,loc_boolexpr01)
    call ForGroup(loc_group02,function Func3574)
    call Func0029(loc_group02)
    if(loc_real06-loc_real01)*(loc_real06-loc_real01)+(loc_real07-loc_real02)*(loc_real07-loc_real02)<1600 then
        call PauseTimer(loc_timer01)
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call KillUnit(loc_unit02)
        call Func0029(loc_group01)
    endif
endfunction

// 74775 ~ 74815
function Func3577 takes nothing returns nothing
    local timer loc_timer01=GetExpiredTimer()
    local integer loc_integer01=GetHandleId(loc_timer01)
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(133)))
    local group loc_group02=Func0030()
    local boolexpr loc_boolexpr01=Condition(function Func3575)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(47)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(48)))
    local real loc_real03=GetUnitX(loc_unit02)
    local real loc_real04=GetUnitY(loc_unit02)
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real06=Func0126(GetUnitX(loc_unit02)+30*Cos(loc_real05))
    local real loc_real07=Func0129(GetUnitY(loc_unit02)+30*Sin(loc_real05))
    local unit loc_unit03
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,('A0HW'))
    if(LoadBoolean(hashtable001,(loc_integer01),(384)))then
        call SaveBoolean(hashtable001,(loc_integer01),(384),(false))
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),('h002'),loc_real03,loc_real04,0)
        call SetUnitAbilityLevel(loc_unit03,('A0I2'),loc_integer02)
        call SetUnitAbilityLevel(loc_unit03,('A0HY'),loc_integer02)
        call UnitApplyTimedLife(loc_unit03,'BTLF',12)
    else
        call SaveBoolean(hashtable001,(loc_integer01),(384),(true))
    endif
    call SetUnitX(loc_unit02,loc_real06)
    call SetUnitY(loc_unit02,loc_real07)
    set group001=loc_group01
    set unit002=loc_unit01
    set real002=50*GetUnitAbilityLevel(loc_unit01,('A0HW'))
    call GroupEnumUnitsInRange(loc_group02,loc_real06,loc_real07,150,loc_boolexpr01)
    call ForGroup(loc_group02,function Func3574)
    call Func0029(loc_group02)
    if(loc_real06-loc_real01)*(loc_real06-loc_real01)+(loc_real07-loc_real02)*(loc_real07-loc_real02)<1600 then
        call PauseTimer(loc_timer01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call KillUnit(loc_unit02)
        call Func0029(loc_group01)
    endif
endfunction
