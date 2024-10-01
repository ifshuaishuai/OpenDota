
// 64740 ~ 64746
function Func3008 takes nothing returns nothing
    if GetUnitTypeId(GetEnumUnit())!='EC45' then
        call SaveInteger(hashtable001,(GetHandleId((GetEnumUnit()))),((4306)),(2))
        call PauseUnit(GetEnumUnit(),false)
        call SetUnitTimeScale(GetEnumUnit(),1)
    endif
endfunction

// 64748 ~ 64783
function Func3009 takes nothing returns nothing
    local timer loc_timer01=GetExpiredTimer()
    local integer loc_integer01=GetHandleId(loc_timer01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(220)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(28)))
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local boolexpr loc_boolexpr01=Condition(function Func3006)
    local group loc_group02=Func0030()
    local integer loc_integer04=35+loc_integer02*5
    if GetUnitAbilityLevel(loc_unit02,'A1D7')>0 then
        set loc_integer04=30+loc_integer02*10
    endif
    call ForGroup(loc_group01,function Func3008)
    set unit002=loc_unit02
    call GroupEnumUnitsInRange(loc_group02,loc_real01,loc_real02,450,loc_boolexpr01)
    call GroupClear(loc_group01)
    call GroupAddGroup(loc_group02,loc_group01)
    call ForGroup(loc_group02,function Func3007)
    call Func0029(loc_group02)
    set loc_integer03=loc_integer03+1
    call SaveInteger(hashtable001,(loc_integer01),(28),(loc_integer03))
    if loc_integer03>loc_integer04 then
        if boolean036==false then
            call ForGroup(loc_group01,function Func3008)
        endif
        call RemoveUnit(loc_unit01)
        call Func0029(loc_group01)
        call PauseTimer(loc_timer01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call DestroyTimer(loc_timer01)
    endif
endfunction

// 64785 ~ 64824
function Func3010 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,('A0J1'))
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),('u00L'),loc_real01,loc_real02,0)
    local timer loc_timer01=CreateTimer()
    local integer loc_integer02=GetHandleId(loc_timer01)
    local group loc_group01=Func0030()
    local group loc_group02
    local trigger loc_trigger01
    if loc_integer01==0 then
        set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1D7')
    endif
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_timer01)),(19),(loc_unit02))
    call TimerStart(loc_timer01,0.8,false,function Func3004)
    set loc_timer01=CreateTimer()
    set loc_integer02=GetHandleId(loc_timer01)
    call SaveUnitHandle(hashtable001,(loc_integer02),(19),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer02),(14),(loc_unit01))
    call SaveGroupHandle(hashtable001,(loc_integer02),(220),(loc_group01))
    call SaveInteger(hashtable001,(loc_integer02),(28),(0))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call TimerStart(loc_timer01,0.1,true,function Func3009)
    call RemoveLocation(loc_location01)
    set unit337=loc_unit02
    set unit338=loc_unit01
    set loc_group02=Func0030()
    call GroupEnumUnitsInRange(loc_group02,0,0,25000,Condition(function Func3001))
    call Func0029(loc_group02)
    set loc_trigger01=CreateTrigger()
    set loc_integer02=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(19),(loc_unit02))
    call TriggerRegisterEnterRectSimple(loc_trigger01,GetWorldBounds())
    call TriggerAddCondition(loc_trigger01,Condition(function Func3002))
    set loc_group02=null
    set loc_trigger01=null
endfunction

// 64826 ~ 64831
function Func3011 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3003))
    call TriggerAddAction(loc_trigger01,function Func3010)
endfunction
