
// 58732 ~ 58747
function Func2659 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if Func0194(loc_unit01)==false or GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call UnitRemoveAbility(loc_unit02,'A2WV')
        call UnitRemoveAbility(loc_unit02,'A2WY')
        call UnitRemoveAbility(loc_unit02,'A2WW')
        call UnitRemoveAbility(loc_unit02,'A2WX')
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 58749 ~ 58782
function Func2660 takes nothing returns boolean
    local trigger loc_trigger01
    local integer loc_integer01
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetKillingUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'ACac')
    set loc_unit02=Func0733(loc_unit02)
    if IsUnitType(loc_unit02,UNIT_TYPE_HERO)==true then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2659))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        if loc_integer02==1 then
            call Func0193(loc_unit02,'A2WV')
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A2WV',false)
        elseif loc_integer02==2 then
            call Func0193(loc_unit02,'A2WY')
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A2WY',false)
        elseif loc_integer02==3 then
            call Func0193(loc_unit02,'A2WW')
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A2WW',false)
        elseif loc_integer02==4 then
            call Func0193(loc_unit02,'A2WX')
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A2WX',false)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 58784 ~ 58792
function Func2661 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2660))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 58794 ~ 58799
function Func2662 takes nothing returns boolean
    if GetLearnedSkill()=='ACac' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'ACac')==1 then
        call Func2661()
    endif
    return false
endfunction

// 58801 ~ 58806
function Func2663 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call TriggerAddCondition(loc_trigger01,Condition(function Func2662))
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    set loc_trigger01=null
endfunction
