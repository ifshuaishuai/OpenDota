
// 77689 ~ 77747
function Func3755 takes unit loc_unit01,integer loc_integer01,integer loc_integer02 returns nothing
    call UnitRemoveAbility(loc_unit01,'A1KR')
    call UnitRemoveAbility(loc_unit01,'A1KS')
    call UnitRemoveAbility(loc_unit01,'A1KQ')
    call UnitRemoveAbility(loc_unit01,'A1KP')
    call UnitRemoveAbility(loc_unit01,'A1K1')
    call UnitRemoveAbility(loc_unit01,'A1KW')
    call UnitRemoveAbility(loc_unit01,'A1KX')
    call UnitRemoveAbility(loc_unit01,'A1KY')
    call UnitRemoveAbility(loc_unit01,'A1L4')
    call UnitRemoveAbility(loc_unit01,'A1L3')
    call UnitRemoveAbility(loc_unit01,'A1L2')
    call UnitRemoveAbility(loc_unit01,'A1L1')
    call UnitRemoveAbility(loc_unit01,'A1L8')
    call UnitRemoveAbility(loc_unit01,'A1L7')
    call UnitRemoveAbility(loc_unit01,'A1L9')
    call UnitRemoveAbility(loc_unit01,'A1LB')
    if loc_integer01==1 then
        if loc_integer02==1 then
            call Func0193(loc_unit01,'A1KR')
        elseif loc_integer02==2 then
            call Func0193(loc_unit01,'A1KS')
        elseif loc_integer02==3 then
            call Func0193(loc_unit01,'A1KQ')
        elseif loc_integer02==4 then
            call Func0193(loc_unit01,'A1KP')
        endif
    elseif loc_integer01==2 then
        if loc_integer02==1 then
            call Func0193(loc_unit01,'A1K1')
        elseif loc_integer02==2 then
            call Func0193(loc_unit01,'A1KW')
        elseif loc_integer02==3 then
            call Func0193(loc_unit01,'A1KX')
        elseif loc_integer02==4 then
            call Func0193(loc_unit01,'A1KY')
        endif
    elseif loc_integer01==3 then
        if loc_integer02==1 then
            call Func0193(loc_unit01,'A1L4')
        elseif loc_integer02==2 then
            call Func0193(loc_unit01,'A1L3')
        elseif loc_integer02==3 then
            call Func0193(loc_unit01,'A1L2')
        elseif loc_integer02==4 then
            call Func0193(loc_unit01,'A1L1')
        endif
    elseif loc_integer01==4 then
        if loc_integer02==1 then
            call Func0193(loc_unit01,'A1L8')
        elseif loc_integer02==2 then
            call Func0193(loc_unit01,'A1L7')
        elseif loc_integer02==3 then
            call Func0193(loc_unit01,'A1L9')
        elseif loc_integer02==4 then
            call Func0193(loc_unit01,'A1LB')
        endif
    endif
endfunction

// 77749 ~ 77764
function Func3756 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(426)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer02),(2)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer02),(425)))
    local integer loc_integer04=GetUnitAbilityLevel(loc_unit01,'A0VX')
    set loc_integer03=Func0138(loc_integer03+1,4)
    call SaveInteger(hashtable001,(loc_integer02),(425),(loc_integer03))
    call Func3755(loc_unit01,loc_integer04,loc_integer03)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 77766 ~ 77787
function Func3757 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(425)))
    local integer loc_integer03=GetUnitAbilityLevel(GetTriggerUnit(),'A0VX')
    if GetEventDamage()>2 and GetEventDamageSource()!=GetTriggerUnit()and Func0058(GetOwningPlayer(GetEventDamageSource()))then
        if loc_integer02>0 then
        endif
        set loc_integer02=Func0139(loc_integer02-1,0)
        call SaveInteger(hashtable001,(loc_integer01),(425),(loc_integer02))
        call Func3755(loc_unit01,loc_integer03,loc_integer02)
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,6,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3756))
        call SaveInteger(hashtable001,(loc_integer01),(426),(GetHandleId(GetTriggeringTrigger())))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 77789 ~ 77805
function Func3758 takes nothing returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer02=GetUnitAbilityLevel(GetTriggerUnit(),'A0VX')
    if loc_integer02==1 then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3757))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveInteger(hashtable001,(loc_integer01),(425),(4))
    endif
    call Func3755(loc_unit01,loc_integer02,4)
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 77807 ~ 77812
function Func3759 takes nothing returns boolean
    if GetLearnedSkill()=='A0VX' and IsUnitIllusion(GetTriggerUnit())==false then
        call Func3758()
    endif
    return false
endfunction
