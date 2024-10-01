
// 91961 ~ 91998
function Func4441 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2F5')
    local integer loc_integer03
    local integer loc_integer04
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    if IsUnitAlly(loc_unit02,GetOwningPlayer(loc_unit01))==true then
        set loc_integer04='B0F8'
        if loc_integer02==1 then
            set loc_integer03='A2FG'
        elseif loc_integer02==2 then
            set loc_integer03='A2FF'
        elseif loc_integer02==3 then
            set loc_integer03='A2FH'
        endif
        call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_LIFE)+100+50*loc_integer02)
    else
        set loc_integer04='B0F9'
        if loc_integer02==1 then
            set loc_integer03='A2FD'
        elseif loc_integer02==2 then
            set loc_integer03='A2FC'
        elseif loc_integer02==3 then
            set loc_integer03='A2FE'
        endif
        call Func0115(loc_unit01,loc_unit02,1,100+50*loc_integer02)
    endif
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),loc_integer03,false)
    call Func0246(loc_unit02,loc_integer03,1,4,loc_integer04)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 92000 ~ 92018
function Func4442 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetEnumUnit()
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call Func0373(loc_unit02)
    call Func0371(loc_unit02,0,0)
    call UnitAddAbility(loc_unit03,'A2FI')
    call IssueTargetOrder(loc_unit03,"cyclone",loc_unit02)
    call TriggerRegisterTimerEvent(loc_trigger01,4,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4441))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 92020 ~ 92031
function Func4443 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local group loc_group01=Func0030()
    call Func0186(GetOwningPlayer(loc_unit01),4,loc_real01,loc_real02,300)
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,400+25,Condition(function Func0287))
    call ForGroup(loc_group01,function Func4442)
    call Func0029(loc_group01)
    set loc_unit01=null
    set loc_group01=null
endfunction

// 92033 ~ 92038
function Func4444 takes nothing returns boolean
    if GetSpellAbilityId()=='A2F5' then
        call Func4443()
    endif
    return false
endfunction

// 92040 ~ 92045
function Func4445 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4444))
    set loc_trigger01=null
endfunction
