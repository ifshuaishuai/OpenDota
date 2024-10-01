
// 72728 ~ 72730
function Func3454 takes nothing returns boolean
    return GetOwningPlayer(GetFilterUnit())==GetOwningPlayer(unit356)and GetUnitTypeId(GetFilterUnit())=='u01Y'
endfunction

// 72732 ~ 72776
function Func3455 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'u01Y',GetUnitX(loc_unit01)+100,GetUnitY(loc_unit01)+100,0)
    local group loc_group01
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2L6')
    local real loc_real01
    local unit loc_unit03
    local unit loc_unit04
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_SPELL_FINISH)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3453))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit02))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit02))*1.0))
    call UnitAddAbility(loc_unit02,'A2L4')
    call SetUnitAbilityLevel(loc_unit02,'A2L5',GetUnitAbilityLevel(loc_unit01,'A2L6'))
    call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(34),(((TimerGetElapsed(timer001)))*1.0))
    set unit356=loc_unit01
    set loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,0,0,99999,Condition(function Func3454))
    if CountUnitsInGroup(loc_group01)>loc_integer02+1 then
        set loc_unit04=FirstOfGroup(loc_group01)
        set loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit04)),(34)))
        set loc_unit03=loc_unit04
        call GroupRemoveUnit(loc_group01,loc_unit04)
        loop
            exitwhen loc_unit04==null
            if loc_real01>(LoadReal(hashtable001,(GetHandleId(loc_unit04)),(34)))then
                set loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit04)),(34)))
                set loc_unit03=loc_unit04
            endif
            set loc_unit04=FirstOfGroup(loc_group01)
            call GroupRemoveUnit(loc_group01,loc_unit04)
        endloop
        call KillUnit(loc_unit03)
    endif
    call Func0029(loc_group01)
    set loc_group01=null
    set loc_unit02=null
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 72778 ~ 72783
function Func3456 takes nothing returns boolean
    if GetSpellAbilityId()=='A2L6' then
        call Func3455()
    endif
    return false
endfunction

// 72785 ~ 72789
function Func3457 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3456))
endfunction
