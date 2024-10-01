
// 75995 ~ 76019
function Func3651 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(335)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call UnitRemoveAbility(loc_unit02,'A26W')
        call UnitRemoveAbility(loc_unit02,'B0EJ')
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if GetTriggerUnit()!=loc_unit01 then
            call KillUnit(loc_unit01)
        endif
    else
        call IssueTargetOrder(loc_unit01,"attack",loc_unit02)
        if Func0098(loc_unit02)then
            call UnitRemoveAbility(loc_unit02,'A26W')
            call UnitRemoveAbility(loc_unit02,'B0EJ')
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 76021 ~ 76051
function Func3652 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local unit loc_unit04
    if GetSummoningUnit()==loc_unit03 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        set loc_unit04=GetSummonedUnit()
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit04)
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
        call TriggerRegisterTimerEvent(loc_trigger01,0.2,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3651))
        call SaveUnitHandle(hashtable001,(loc_integer01),(335),(loc_unit04))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        call UnitAddAbility(loc_unit04,'Aloc')
        call SetUnitPosition(loc_unit04,GetUnitX(loc_unit02)+100,GetUnitY(loc_unit02)+100)
        call IssueTargetOrder(loc_unit04,"attack",loc_unit02)
        call SetUnitMoveSpeed(loc_unit04,522)
        call SetUnitVertexColorBJ(loc_unit04,100,100,100,60)
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
    set loc_unit03=null
    return false
endfunction

// 76053 ~ 76081
function Func3653 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2KZ')
    local integer loc_integer02
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    local trigger loc_trigger01
    local integer loc_integer03
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A26W',false)
    if Func0275(loc_unit02)==false then
        call Func0246(loc_unit02,'A26W',1,1.5+loc_integer01,'B0EJ')
    endif
    set loc_trigger01=CreateTrigger()
    set loc_integer03=GetHandleId(loc_trigger01)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3652))
    call SaveUnitHandle(hashtable001,(loc_integer03),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer03),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer03),(19),(loc_unit03))
    call Func0193(loc_unit03,'A24K')
    call SetUnitAbilityLevel(loc_unit03,'A24K',loc_integer01)
    call IssueTargetOrderById(loc_unit03,852274,loc_unit02)
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_trigger01=null
    call Func0184(sound068,GetUnitX(loc_unit02),GetUnitY(loc_unit02))
    set loc_unit01=null
endfunction

// 76083 ~ 76088
function Func3654 takes nothing returns boolean
    if GetSpellAbilityId()=='A2KZ' then
        call Func3653()
    endif
    return false
endfunction

// 76090 ~ 76095
function Func3655 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3654))
    set loc_trigger01=null
endfunction
