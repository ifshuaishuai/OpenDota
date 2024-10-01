
// 54586 ~ 54600
function Func2409 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local player loc_player01
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A00J')
    local real loc_real01=(loc_integer02+3)/4
    if(TimerGetElapsed(timer001))>(10-2*loc_integer02)+real309 then
        call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+loc_real01)
    endif
    set loc_player01=null
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 54602 ~ 54615
function Func2410 takes nothing returns boolean
    local unit loc_unit01=GetAttacker()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A00J')
    if loc_integer01>0 then
        set real309=(TimerGetElapsed(timer001))
        call UnitRemoveAbility(loc_unit01,integers156[loc_integer01])
        call UnitRemoveAbility(loc_unit01,'A00J')
        call Func0193(loc_unit01,integers156[loc_integer01])
        call Func0193(loc_unit01,'A00J')
        call SetUnitAbilityLevel(loc_unit01,'A00J',loc_integer01)
    endif
    set loc_unit01=null
    return false
endfunction
