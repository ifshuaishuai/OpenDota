
// 53183 ~ 53197
function Func2326 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEventId()!=EVENT_WIDGET_DEATH then
        if GetUnitAbilityLevel(loc_unit01,'B021')>0 then
            call Func0193(loc_unit01,'A1GA')
        endif
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 53199 ~ 53224
function Func2327 takes nothing returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(GetSpellTargetUnit())))
    call SaveInteger(hashtable001,(loc_integer01),(5),(GetUnitAbilityLevel(GetTriggerUnit(),'A01Z')))
    call SaveInteger(hashtable001,(loc_integer01),(34),(0))
    call SaveReal(hashtable001,(loc_integer01),(442),(((TimerGetElapsed(timer001))+1.0)*1.0))
    call TriggerAddCondition(loc_trigger01,Condition(function Func2325))
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call Func0193(GetSpellTargetUnit(),'A23O')
    call SetPlayerAbilityAvailable(GetOwningPlayer(GetSpellTargetUnit()),'A23O',false)
    if GetTriggerUnit()==GetSpellTargetUnit()then
        call SaveBoolean(hashtable001,(loc_integer01),(329),(true))
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
        call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(GetTriggerUnit()))
        call TriggerAddCondition(loc_trigger01,Condition(function Func2326))
        call TriggerRegisterTimerEvent(loc_trigger01,2,false)
        call TriggerRegisterDeathEvent(loc_trigger01,GetTriggerUnit())
    endif
    set loc_trigger01=null
endfunction

// 53226 ~ 53231
function Func2328 takes nothing returns boolean
    if GetSpellAbilityId()=='A01Z' then
        call Func2327()
    endif
    return false
endfunction

// 53233 ~ 53238
function Func2329 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2328))
    set loc_trigger01=null
endfunction
