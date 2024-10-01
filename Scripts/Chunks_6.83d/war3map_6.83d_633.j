
// 70783 ~ 70804
function Func3340 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(680)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A08P')
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl",loc_unit02,"origin"))
    if loc_integer02>0 then
        set boolean150=true
        call Func0115(loc_unit01,loc_unit02,1,loc_real01*(GetUnitState(loc_unit02,UNIT_STATE_MAX_LIFE)-GetUnitState(loc_unit02,UNIT_STATE_LIFE)))
        set boolean150=false
    else
        call Func0115(loc_unit01,loc_unit02,1,loc_real01*(GetUnitState(loc_unit02,UNIT_STATE_MAX_LIFE)-GetUnitState(loc_unit02,UNIT_STATE_LIFE)))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 70806 ~ 70836
function Func3341 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A067')
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A08P')
    local real loc_real01
    if loc_integer02==1 then
        set loc_real01=0.4
    elseif loc_integer02==2 or loc_integer03==1 then
        set loc_real01=0.6
    elseif loc_integer02==3 or loc_integer03==2 then
        set loc_real01=0.9
    elseif loc_integer03==3 then
        set loc_real01=1.2
    endif
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveReal(hashtable001,(loc_integer01),(680),((loc_real01)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,1.5,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3340))
    call Func0044(loc_unit02,4333,1.5)
    if loc_integer03>0 then
        call Func0044(loc_unit02,4418,1.51)
    endif
    set unit351=loc_unit01
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 70838 ~ 70843
function Func3342 takes nothing returns boolean
    if(GetSpellAbilityId()=='A067' or GetSpellAbilityId()=='A08P')and Func0028(GetSpellTargetUnit())==false then
        call Func3341()
    endif
    return false
endfunction

// 70845 ~ 70850
function Func3343 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3342))
    set loc_trigger01=null
endfunction
