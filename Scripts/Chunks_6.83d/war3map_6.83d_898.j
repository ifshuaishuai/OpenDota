
// 92086 ~ 92100
function Func4448 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(356),((GetUnitX(loc_unit02))*1.0))
        call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(357),((GetUnitY(loc_unit02))*1.0))
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 92102 ~ 92116
function Func4449 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(358),(((TimerGetElapsed(timer001)))*1.0))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(796),(GetSpellTargetUnit()))
    call DestroyEffect(AddSpecialEffect("war3mapImported\\CleanseTargetArea.mdx",GetUnitX(GetSpellTargetUnit()),GetUnitY(GetSpellTargetUnit())))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(GetSpellTargetUnit()))
    call TriggerRegisterTimerEvent(loc_trigger01,10,false)
    call TriggerRegisterDeathEvent(loc_trigger01,GetSpellTargetUnit())
    call TriggerAddCondition(loc_trigger01,Condition(function Func4448))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 92118 ~ 92132
function Func4450 takes nothing returns boolean
    if GetSpellAbilityId()=='A2QT' then
        if GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_CAST then
            call SaveBoolean(hashtable001,(GetHandleId(GetTriggerUnit())),(360),(false))
            call Func4449()
        elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_SPELL_EFFECT then
            if Func0028(GetSpellTargetUnit())==false then
                call SaveBoolean(hashtable001,(GetHandleId(GetTriggerUnit())),(360),(true))
            endif
        elseif(LoadBoolean(hashtable001,(GetHandleId(GetTriggerUnit())),(360)))==true then
            call Func4447()
        endif
    endif
    return false
endfunction

// 92134 ~ 92141
function Func4451 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_ENDCAST)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4450))
    set loc_trigger01=null
endfunction
