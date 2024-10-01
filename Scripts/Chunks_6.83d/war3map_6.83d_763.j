
// 79772 ~ 79776
function Func3869 takes nothing returns boolean
    if GetSpellAbilityId()=='A1N8' then
    endif
    return false
endfunction

// 79778 ~ 79800
function Func3870 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=0
    local integer loc_integer02=0
    local player loc_player01
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3863))
    loop
        exitwhen loc_integer01>12
        set reals030[loc_integer01]=9999
        set reals031[loc_integer01]=9999
        set loc_integer01=loc_integer01+1
    endloop
    loop
        exitwhen loc_integer02>5
        set loc_player01=players003[loc_integer02]
        call SetPlayerAbilityAvailable(loc_player01,'A1LD',false)
        set loc_player01=players004[loc_integer02]
        call SetPlayerAbilityAvailable(loc_player01,'A1LD',false)
        set loc_integer02=loc_integer02+1
    endloop
    set loc_trigger01=null
endfunction

// 79802 ~ 79833
function Func3871 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(822)))
    if loc_real01+0.5<(TimerGetElapsed(timer001))or GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if Func0275(GetEnumUnit())then
            return false
        endif
        if GetUnitAbilityLevel(loc_unit01,'A1HZ')>0 then
            call UnitRemoveAbility(loc_unit01,'A1HZ')
            call UnitRemoveAbility(loc_unit01,'B0C5')
        endif
        if GetUnitAbilityLevel(loc_unit01,'A1I4')>0 then
            call UnitRemoveAbility(loc_unit01,'A1I4')
            call UnitRemoveAbility(loc_unit01,'B0C5')
        endif
        if GetUnitAbilityLevel(loc_unit01,'A1I3')>0 then
            call UnitRemoveAbility(loc_unit01,'A1I3')
            call UnitRemoveAbility(loc_unit01,'B0C5')
        endif
        if GetUnitAbilityLevel(loc_unit01,'A1I6')>0 then
            call UnitRemoveAbility(loc_unit01,'A1I6')
            call UnitRemoveAbility(loc_unit01,'B0C5')
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 79835 ~ 79843
function Func3872 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerRegisterDeathEvent(loc_trigger01,GetEnumUnit())
    call TriggerAddCondition(loc_trigger01,Condition(function Func3871))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(GetEnumUnit()))
    set loc_trigger01=null
endfunction
