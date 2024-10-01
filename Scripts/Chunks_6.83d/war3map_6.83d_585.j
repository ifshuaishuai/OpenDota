
// 67117 ~ 67119
function Func3148 takes nothing returns nothing
    call SetUnitAnimationByIndex((LoadUnitHandle(hashtable001,(GetHandleId(GetExpiredTimer())),(221))),2)
endfunction

// 67121 ~ 67126
function Func3149 takes nothing returns nothing
    local timer loc_timer01=CreateTimer()
    call SetUnitAnimationByIndex(GetTriggerUnit(),2)
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_timer01)),(221),(GetTriggerUnit()))
    call TimerStart(loc_timer01,1,false,function Func3148)
endfunction

// 67128 ~ 67144
function Func3150 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=1
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CHANNEL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3147))
    call TriggerAddAction(loc_trigger01,function Func3149)
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3141))
    call TriggerAddAction(loc_trigger01,function Func3146)
    loop
        exitwhen loc_integer01>5
        call SetPlayerAbilityAvailable(players003[loc_integer01],'A2QA',false)
        call SetPlayerAbilityAvailable(players004[loc_integer01],'A2QA',false)
        set loc_integer01=loc_integer01+1
    endloop
endfunction
