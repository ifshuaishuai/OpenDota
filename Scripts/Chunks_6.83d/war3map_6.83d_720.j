
// 76445 ~ 76465
function Func3681 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(715)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or loc_real01<(TimerGetElapsed(timer001))then
        call UnitRemoveAbility(loc_unit01,'A228')
        call UnitRemoveAbility(loc_unit01,'A2Y7')
        call UnitRemoveAbility(loc_unit01,'A2Y6')
        call UnitRemoveAbility(loc_unit01,'A2Y5')
        call UnitRemoveAbility(loc_unit01,'B0HA')
        call UnitRemoveAbility(loc_unit01,'B0E8')
        call UnitRemoveAbility(loc_unit01,'B0HB')
        call UnitRemoveAbility(loc_unit01,'B0H9')
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 76467 ~ 76486
function Func3682 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(unit368,'A226')
    if loc_integer02==1 then
        call Func0193(loc_unit01,'A228')
    elseif loc_integer02==2 then
        call Func0193(loc_unit01,'A2Y7')
    elseif loc_integer02==3 then
        call Func0193(loc_unit01,'A2Y6')
    elseif loc_integer02==4 then
        call Func0193(loc_unit01,'A2Y5')
    endif
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerRegisterTimerEvent(loc_trigger01,6,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3681))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(715),((5.9+(TimerGetElapsed(timer001)))*1.0))
    set loc_trigger01=null
endfunction

// 76488 ~ 76501
function Func3683 takes nothing returns nothing
    if GetUnitTypeId(GetEnumUnit())=='n00L' then
        return
    endif
    if Func0275(GetEnumUnit())==false then
        call Func3682(GetEnumUnit())
    endif
    call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),'A228',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),'A2Y7',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),'A2Y6',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),'A2Y5',false)
    call Func0115(unit368,GetEnumUnit(),2,25+50*integer524)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\CrushingWave\\CrushingWaveDamage.mdl",GetEnumUnit(),"chest"))
endfunction

// 76503 ~ 76515
function Func3684 takes nothing returns nothing
    local group loc_group01=Func0030()
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A226')
    set unit124=loc_unit01
    set integer524=loc_integer01
    set unit368=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),375+25,Condition(function Func0318))
    call ForGroup(loc_group01,function Func3683)
    call Func0029(loc_group01)
    set loc_group01=null
    set loc_unit01=null
endfunction
