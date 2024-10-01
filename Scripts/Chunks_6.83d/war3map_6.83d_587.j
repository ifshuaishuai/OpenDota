
// 67174 ~ 67178
function Func3153 takes nothing returns nothing
    local unit loc_unit01=CreateUnit(GetOwningPlayer(GetEnumUnit()),'e00E',real002,real004,0)
    call Func0193(loc_unit01,('A0NC'))
    call IssueTargetOrder(loc_unit01,"ensnare",GetEnumUnit())
endfunction

// 67180 ~ 67189
function Func3154 takes unit loc_unit01,real loc_real01,real loc_real02 returns nothing
    local boolexpr loc_boolexpr01=Condition(function Func3152)
    local group loc_group01=Func0030()
    set unit002=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,(245),loc_boolexpr01)
    set real002=loc_real01
    set real004=loc_real02
    call ForGroup(loc_group01,function Func3153)
    call Func0029(loc_group01)
endfunction

// 67191 ~ 67214
function Func3155 takes nothing returns nothing
    local timer loc_timer01=GetExpiredTimer()
    local integer loc_integer01=GetHandleId(loc_timer01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(47)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(48)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real04=GetUnitX(loc_unit01)
    local real loc_real05=GetUnitY(loc_unit01)
    local real loc_real06=GetUnitX(loc_unit01)+30*Cos(loc_real03)
    local real loc_real07=GetUnitY(loc_unit01)+30*Sin(loc_real03)
    if(loc_real06-loc_real01)*(loc_real06-loc_real01)+(loc_real07-loc_real02)*(loc_real07-loc_real02)<1200 then
        call SetUnitX(loc_unit01,loc_real01)
        call SetUnitY(loc_unit01,loc_real02)
        call Func3154(loc_unit01,loc_real01,loc_real02)
        call PauseTimer(loc_timer01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call KillUnit(loc_unit01)
        call DestroyTimer(loc_timer01)
    else
        call SetUnitX(loc_unit01,loc_real06)
        call SetUnitY(loc_unit01,loc_real07)
    endif
endfunction

// 67216 ~ 67234
function Func3156 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=Func0126(GetLocationX(loc_location01))
    local real loc_real02=Func0129(GetLocationY(loc_location01))
    local real loc_real03=Func0126(GetUnitX(loc_unit01))
    local real loc_real04=Func0129(GetUnitY(loc_unit01))
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),('h00C'),loc_real03,loc_real04,0)
    local real loc_real05=Atan2(loc_real02-loc_real04,loc_real01-loc_real03)
    local timer loc_timer01=CreateTimer()
    local integer loc_integer01=GetHandleId(loc_timer01)
    call SetUnitScale(loc_unit02,2,2,2)
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(47),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(48),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real05)*1.0))
    call TimerStart(loc_timer01,0.035,true,function Func3155)
    call RemoveLocation(loc_location01)
endfunction

// 67236 ~ 67241
function Func3157 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddAction(loc_trigger01,function Func3156)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3151))
endfunction
