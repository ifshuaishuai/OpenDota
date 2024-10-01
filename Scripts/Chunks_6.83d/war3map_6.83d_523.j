
// 62961 ~ 62973
function Func2898 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call Func0193(loc_unit02,'A2X7')
    call IssueTargetOrderById(loc_unit02,852274,loc_unit01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 62975 ~ 62988
function Func2899 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01
    local integer loc_integer01
    if GetRandomInt(0,1)==0 then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,0.65,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2898))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    endif
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 62990 ~ 62995
function Func2900 takes nothing returns boolean
    if GetSpellAbilityId()=='A03O' then
        call Func2899()
    endif
    return false
endfunction

// 62997 ~ 63002
function Func2901 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2900))
    set loc_trigger01=null
endfunction
