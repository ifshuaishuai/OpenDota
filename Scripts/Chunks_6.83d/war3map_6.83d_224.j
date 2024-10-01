
// 43120 ~ 43122
function Func1688 takes nothing returns nothing
    call Func0115(unit002,GetEnumUnit(),2,real002)
endfunction

// 43124 ~ 43150
function Func1689 takes nothing returns nothing
    local timer loc_timer01=GetExpiredTimer()
    local integer loc_integer01=GetHandleId(loc_timer01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(28)))
    local real loc_real01=GetUnitX(loc_unit02)
    local real loc_real02=GetUnitY(loc_unit02)
    local boolexpr loc_boolexpr01
    local group loc_group01
    if loc_integer02>16 then
        call KillUnit(loc_unit02)
        call PauseTimer(loc_timer01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call DestroyTimer(loc_timer01)
    else
        set unit002=loc_unit01
        set real002=8+GetUnitAbilityLevel(loc_unit01,('A0IL'))*4
        set loc_boolexpr01=Condition(function Func1687)
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,650,loc_boolexpr01)
        call ForGroup(loc_group01,function Func1688)
        call Func0029(loc_group01)
        set loc_integer02=loc_integer02+1
        call SaveInteger(hashtable001,(loc_integer01),(28),(loc_integer02))
    endif
endfunction

// 43152 ~ 43168
function Func1690 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e01E',loc_real01,loc_real02,0)
    local timer loc_timer01=CreateTimer()
    local integer loc_integer01=GetHandleId(loc_timer01)
    call RemoveLocation(loc_location01)
    call Func0193(loc_unit02,('A0J4'))
    call SetUnitAbilityLevel(loc_unit02,('A0J4'),GetUnitAbilityLevel(loc_unit01,('A0IL')))
    call Func0193(loc_unit02,'Aloc')
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(28),(0))
    call TimerStart(loc_timer01,1,true,function Func1689)
endfunction

// 43170 ~ 43176
function Func1691 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddAction(loc_trigger01,function Func1690)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1686))
    call Func0132(('A0J4'))
endfunction
