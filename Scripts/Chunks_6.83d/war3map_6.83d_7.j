
// 4136 ~ 4142
function Func0132 takes integer loc_integer01 returns nothing
    local unit loc_unit01=CreateUnit(Player(15),'H00Y',0,0,270)
    call UnitAddAbility(loc_unit01,loc_integer01)
    call UnitRemoveAbility(loc_unit01,loc_integer01)
    call RemoveUnit(loc_unit01)
    set loc_unit01=null
endfunction

// 4144 ~ 4153
function Func0133 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(37)))
    call Func0132(loc_integer02)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    return false
endfunction

// 4155 ~ 4162
function Func0134 takes integer loc_integer01,real loc_real01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call SaveInteger(hashtable001,(loc_integer02),(37),(loc_integer01))
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0133))
    set loc_trigger01=null
endfunction
