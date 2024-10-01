
// 94081 ~ 94083
function Func4548 takes nothing returns nothing
    call Func0115(unit429,GetEnumUnit(),1,real419)
endfunction

// 94085 ~ 94123
function Func4549 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local group loc_group01
    local boolean loc_boolean01=false
    if GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if Func4520(GetSpellAbilityId())and GetSpellTargetUnit()==loc_unit03 then
            set loc_boolean01=true
        endif
    endif
    if loc_boolean01==true or GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT then
        set loc_group01=Func0030()
        call SetUnitX(loc_unit02,GetUnitX(loc_unit03))
        call SetUnitY(loc_unit02,GetUnitY(loc_unit03))
        call KillUnit(loc_unit03)
        call SetUnitInvulnerable(loc_unit02,false)
        call PauseUnit(loc_unit02,false)
        call ShowUnit(loc_unit02,true)
        call ClearSelectionForPlayer(GetOwningPlayer(loc_unit02))
        call SelectUnitAddForPlayer(loc_unit02,GetOwningPlayer(loc_unit02))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        set unit124=loc_unit01
        set unit429=loc_unit01
        set real419=300
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),300+25,Condition(function Func0305))
        call ForGroup(loc_group01,function Func4548)
        call Func0029(loc_group01)
    endif
    set loc_group01=null
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction

// 94125 ~ 94153
function Func4550 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2S9')
    local trigger loc_trigger01
    local integer loc_integer02
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'o020',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local integer loc_integer03=(LoadInteger(hashtable001,(GetHandleId(GetTriggerUnit())),(800)))
    if(IsUnitEnemy(loc_unit02,GetOwningPlayer(loc_unit01)))==false or Func0028(GetSpellTargetUnit())==false then
        set loc_trigger01=CreateTrigger()
        set loc_integer02=GetHandleId(loc_trigger01)
        call SelectUnitRemoveForPlayer(loc_unit02,GetOwningPlayer(loc_unit02))
        call SetUnitInvulnerable(loc_unit02,true)
        call PauseUnit(loc_unit02,true)
        call ShowUnit(loc_unit02,false)
        call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
        call SaveUnitHandle(hashtable001,(loc_integer02),(19),(loc_unit03))
        call TriggerRegisterTimerEvent(loc_trigger01,3,false)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4549))
    endif
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'o021',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call UnitApplyTimedLife(loc_unit03,'BTLF',3)
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_trigger01=null
endfunction

// 94155 ~ 94160
function Func4551 takes nothing returns boolean
    if GetSpellAbilityId()=='A2S9' then
        call Func4550()
    endif
    return false
endfunction
