
// 76707 ~ 76712
function Func3698 takes unit loc_unit01,unit loc_unit02,integer loc_integer01 returns nothing
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call Func0193(loc_unit03,('A0NJ'))
    call SetUnitAbilityLevel(loc_unit03,('A0NJ'),loc_integer01)
    call IssueTargetOrder(loc_unit03,"slow",loc_unit02)
endfunction

// 76714 ~ 76792
function Func3699 takes nothing returns nothing
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,('A2X6'))
    local integer loc_integer03=GetTriggerExecCount(loc_trigger01)
    local real loc_real01=8+6*loc_integer02
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    if loc_integer02==1 then
        call Func0193(loc_unit02,('A0OW'))
        if loc_integer03==1 then
            call Func3698(loc_unit01,loc_unit02,1)
        endif
        if loc_integer03==2 then
            call Func3698(loc_unit01,loc_unit02,1)
        endif
        if loc_integer03>2 then
            call Func0115(loc_unit03,loc_unit02,2,loc_real01)
        endif
        if loc_integer03==8 then
            call UnitRemoveAbility(loc_unit02,('A0OW'))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    endif
    if loc_integer02==2 then
        call Func0193(loc_unit02,('A0OW'))
        if loc_integer03==1 then
            call Func3698(loc_unit01,loc_unit02,1)
        endif
        if loc_integer03==2 then
            call Func3698(loc_unit01,loc_unit02,2)
        endif
        if loc_integer03>2 then
            call Func0115(loc_unit03,loc_unit02,2,loc_real01)
        endif
        if loc_integer03==8 then
            call UnitRemoveAbility(loc_unit02,('A0OW'))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    endif
    if loc_integer02==3 then
        call Func0193(loc_unit02,('A0OW'))
        if loc_integer03==1 then
            call Func3698(loc_unit01,loc_unit02,2)
        endif
        if loc_integer03==2 then
            call Func3698(loc_unit01,loc_unit02,3)
        endif
        if loc_integer03>2 then
            call Func0115(loc_unit03,loc_unit02,2,loc_real01)
        endif
        if loc_integer03==8 then
            call UnitRemoveAbility(loc_unit02,('A0OW'))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    endif
    if loc_integer02==4 then
        call Func0193(loc_unit02,('A0OW'))
        if loc_integer03==1 then
            call Func3698(loc_unit01,loc_unit02,2)
        endif
        if loc_integer03==2 then
            call Func0365(loc_unit01,loc_unit02,1.0)
        endif
        if loc_integer03>2 then
            call Func0115(loc_unit03,loc_unit02,2,loc_real01)
        endif
        if loc_integer03==8 then
            call UnitRemoveAbility(loc_unit02,('A0OW'))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    endif
    set loc_unit03=null
endfunction

// 76794 ~ 76807
function Func3700 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=unit124
    local unit loc_unit02=unit125
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddAction(loc_trigger01,function Func3699)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit03))
    call Func3698(loc_unit01,loc_unit02,1)
    set loc_unit03=null
endfunction

// 76809 ~ 76813
function Func3701 takes nothing returns nothing
    local trigger loc_trigger01=Func0196(GetTriggerUnit(),GetSpellTargetUnit(),'h0EQ',"Func3700",1300,true)
    local integer loc_integer01=GetHandleId(loc_trigger01)
    set loc_trigger01=null
endfunction

// 76815 ~ 76822
function Func3702 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3697))
    call TriggerAddAction(loc_trigger01,function Func3701)
    call Func0132(('A0NJ'))
    call Func0132(('A0NK'))
endfunction
