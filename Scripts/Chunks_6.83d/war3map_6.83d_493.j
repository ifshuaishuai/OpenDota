
// 60868 ~ 60910
function Func2797 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer02)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local unit loc_unit03
    if GetUnitAbilityLevel(loc_unit01,'B02F')==0 then
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A04Y',true)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2O9',false)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED and GetTriggerUnit()==loc_unit01 then
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A04Y',true)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2O9',false)
        call UnitRemoveAbility(loc_unit01,'B02F')
        set loc_unit03=CreateUnit(loc_player01,'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
        call Func0193(loc_unit03,'A04Y')
        call SetUnitAbilityLevel(loc_unit03,'A04Y',loc_integer03)
        call IssueTargetOrder(loc_unit03,"sleep",GetAttacker())
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()!=EVENT_PLAYER_UNIT_ATTACKED then
        if GetUnitState(loc_unit01,UNIT_STATE_LIFE)>21 then
            call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)-20)
        else
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A04Y',true)
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A2O9',false)
            call UnitRemoveAbility(loc_unit01,'B02F')
            call Func0115(loc_unit02,loc_unit01,1,50)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    endif
    set loc_trigger01=null
    set loc_player01=null
    set loc_unit03=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 60912 ~ 60936
function Func2798 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    set loc_integer01=GetHandleId(loc_trigger01)
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit02)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SavePlayerHandle(hashtable001,(loc_integer01),(54),(GetOwningPlayer(loc_unit01)))
    call SaveInteger(hashtable001,(loc_integer01),(5),(GetUnitAbilityLevel(loc_unit01,'A04Y')))
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2797))
    if GetUnitAbilityLevel(loc_unit02,'A04Y')>0 then
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A04Y',false)
        call Func0193(loc_unit02,'A2O9')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A2O9',true)
    endif
    set boolean073=true
    call Func0115(loc_unit01,loc_unit02,2,0)
    set boolean073=false
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 60938 ~ 60943
function Func2799 takes nothing returns boolean
    if GetSpellAbilityId()=='A04Y' and Func0096(GetSpellTargetUnit())==false then
        call Func2798()
    endif
    return false
endfunction
