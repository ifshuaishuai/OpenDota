
// 84347 ~ 84360
function Func4058 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=1
    loop
        exitwhen loc_integer02>15
        call SaveReal(hashtable001,(loc_integer01),(7400+loc_integer02-1),(((LoadReal(hashtable001,(loc_integer01),(7400+loc_integer02))))*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7500+loc_integer02-1),(((LoadReal(hashtable001,(loc_integer01),(7500+loc_integer02))))*1.0))
        set loc_integer02=loc_integer02+1
    endloop
    call SaveReal(hashtable001,(loc_integer01),(7400+15),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7500+15),((GetUnitY(loc_unit01))*1.0))
    set loc_unit01=null
endfunction

// 84362 ~ 84369
function Func4059 takes nothing returns boolean
    local group loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,0,0,99999,Condition(function Func0349))
    call ForGroup(loc_group01,function Func4058)
    call Func0029(loc_group01)
    set loc_group01=null
    return false
endfunction

// 84371 ~ 84379
function Func4060 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4056))
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterTimerEvent(loc_trigger01,0.25,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4059))
    set loc_trigger01=null
endfunction
