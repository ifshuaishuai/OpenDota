
// 83815 ~ 83826
function Func4032 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call UnitRemoveAbility(loc_unit01,'A1SS')
    call UnitRemoveAbility(loc_unit01,'B0DE')
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 83828 ~ 83839
function Func4033 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call UnitRemoveAbility(loc_unit01,'A1T4')
    call UnitRemoveAbility(loc_unit01,'B0DG')
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 83841 ~ 83862
function Func4034 takes nothing returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    local integer loc_integer02=GetUnitAbilityLevel(unit385,'A1T5')
    local boolean loc_boolean01=false
    if loc_integer02==0 then
        set loc_integer02=GetUnitAbilityLevel(unit385,'A235')
        set loc_boolean01=true
    endif
    if Func0275(GetEnumUnit())==false then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,2,false)
        call TriggerRegisterUnitEvent(loc_trigger01,GetEnumUnit(),EVENT_UNIT_DEATH)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4032))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(GetEnumUnit()))
        call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),'A1SS',false)
        call Func0193(GetEnumUnit(),'A1SS')
    endif
    call Func0115(unit385,GetEnumUnit(),1,loc_integer02*50+200)
    set loc_trigger01=null
endfunction
