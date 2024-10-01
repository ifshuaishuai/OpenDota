
// 92991 ~ 93033
function Func4491 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2O2')
    local integer loc_integer03=GetHeroAgi(loc_unit01,true)
    local real loc_real01=loc_integer03*(0.12+0.06*loc_integer02)
    local integer loc_integer04=R2I(loc_real01/2.0+0.5)
    local integer loc_integer05=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(442)))
    if loc_real02<(TimerGetElapsed(timer001))then
        set loc_integer05=2
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer05))
        call UnitRemoveAbility(loc_unit02,'A2O3')
    endif
    if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT and GetSpellAbilityId()=='A2O2' then
        set loc_integer05=1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer05))
        call SaveReal(hashtable001,(loc_integer01),(442),(((TimerGetElapsed(timer001))+30)*1.0))
        call UnitRemoveAbility(loc_unit02,'A2NY')
        call UnitRemoveAbility(loc_unit02,'A2O3')
    endif
    if Func0194(loc_unit01)==true then
        call UnitRemoveAbility(loc_unit02,'A2NY')
        call UnitRemoveAbility(loc_unit02,'A2O3')
    else
        if GetUnitAbilityLevel(loc_unit02,'A2NY')==0 then
            call Func0193(loc_unit02,'A2NY')
            if loc_integer05==1 then
                call Func0193(loc_unit02,'A2O3')
            else
            endif
        endif
        call SetUnitAbilityLevel(loc_unit02,'A2NY',loc_integer04)
        call SetUnitAbilityLevel(loc_unit02,'A2O3',loc_integer04)
        call SetUnitX(loc_unit02,GetUnitX(loc_unit01))
        call SetUnitY(loc_unit02,GetUnitY(loc_unit01))
    endif
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 93035 ~ 93049
function Func4492 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e01V',0,0,0)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4491))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(34),(2))
    call Func0193(loc_unit02,'A2NY')
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 93051 ~ 93056
function Func4493 takes nothing returns boolean
    if GetLearnedSkill()=='A2O2' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A2O2')==1 then
        call Func4492()
    endif
    return false
endfunction

// 93058 ~ 93065
function Func4494 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4493))
    call Func0132('A2NY')
    call Func0132('A2O3')
    set loc_trigger01=null
endfunction
