
// 80822 ~ 80853
function Func3918 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if loc_integer03>(4.0)/0.03 or GetTriggerEventId()==EVENT_WIDGET_DEATH then
        if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4420))))==1)==false then
            call UnitSetUsesAltIcon(loc_unit01,false)
        endif
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4421)),(2))
        call UnitAddAbility(loc_unit01,'A2VV')
        call UnitRemoveAbility(loc_unit01,'A2VV')
        call KillUnit(loc_unit02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
        if GetTriggerUnit()==loc_unit01 then
            call IssueImmediateOrder(GetAttacker(),"stop")
        endif
    else
        set loc_integer03=loc_integer03+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
        call SetUnitX(loc_unit02,GetUnitX(loc_unit01))
        call SetUnitY(loc_unit02,GetUnitY(loc_unit01))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 80855 ~ 80886
function Func3919 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1IN')
    local real loc_real01=4.0
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h0B1',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    if IsPlayerAlly(GetLocalPlayer(),GetOwningPlayer(loc_unit01))==false and Func0107(GetLocalPlayer())==false then
        call UnitSetUsesAltIcon(loc_unit01,true)
    endif
    call Func0243(loc_unit01,'A1HW',1,loc_real01)
    call Func0243(loc_unit01,'A1HX',1,loc_real01)
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4421)),(1))
    call UnitAddAbility(loc_unit01,'A2VU')
    call UnitRemoveAbility(loc_unit01,'A2VU')
    if GetUnitTypeId(loc_unit01)!='E02X' then
        call UnitAddAbility(loc_unit01,'Aloc')
        call UnitRemoveAbility(loc_unit01,'Aloc')
    endif
    call ShowUnit(loc_unit01,false)
    call ShowUnit(loc_unit01,true)
    call SelectUnitAddForPlayer(loc_unit01,GetOwningPlayer(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.03,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3918))
    call SaveUnitHandle(hashtable001,(loc_integer02),(19),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveInteger(hashtable001,(loc_integer02),(34),(0))
    set loc_unit01=null
endfunction

// 80888 ~ 80893
function Func3920 takes nothing returns boolean
    if GetSpellAbilityId()=='A1IN' then
        call Func3919()
    endif
    return false
endfunction

// 80895 ~ 80900
function Func3921 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3920))
    set loc_trigger01=null
endfunction
