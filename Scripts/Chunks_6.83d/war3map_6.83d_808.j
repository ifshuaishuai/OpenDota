
// 84381 ~ 84386
function Func4061 takes nothing returns nothing
    if unit387!=GetEnumUnit()then
        call Func0115(unit388,GetEnumUnit(),1,integer533*20+20)
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\Bolt\\BoltImpact.mdl",GetEnumUnit(),"chest"))
    endif
endfunction

// 84388 ~ 84434
function Func4062 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local unit loc_unit04=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local group loc_group01
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    local unit loc_unit05=null
    call SetUnitX(loc_unit03,GetUnitX(loc_unit02))
    call SetUnitY(loc_unit03,GetUnitY(loc_unit02))
    call SetUnitX(loc_unit04,GetUnitX(loc_unit02))
    call SetUnitY(loc_unit04,GetUnitY(loc_unit02))
    if loc_integer03==1 or loc_integer03==100 or loc_integer03==200 or loc_integer03==300 then
        set loc_group01=Func0030()
        if Func0194(loc_unit02)then
            set loc_unit05=CreateUnit(GetOwningPlayer(loc_unit02),'e00C',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
            call UnitApplyTimedLife(loc_unit05,'BTLF',0.2)
            call IssueTargetOrder(loc_unit03,"chainlightning",loc_unit05)
        else
            call IssueTargetOrder(loc_unit03,"chainlightning",loc_unit02)
            call Func0115(loc_unit01,loc_unit02,1,loc_integer02*20+20)
        endif
        call Func0161("war3mapImported\\ThunderStorm_Groundeffect.mdx",loc_unit02,"origin",0.6)
        set unit124=loc_unit01
        set unit388=loc_unit01
        set unit387=loc_unit02
        set integer533=loc_integer02
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),240+25,Condition(function Func0305))
        call ForGroup(loc_group01,function Func4061)
        call Func0029(loc_group01)
        if GetTriggerEvalCount(loc_trigger01)==300 then
            call KillUnit(loc_unit03)
            call KillUnit(loc_unit04)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    set loc_unit04=null
    return false
endfunction

// 84436 ~ 84459
function Func4063 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1TV')
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local unit loc_unit04=CreateUnit(GetOwningPlayer(loc_unit01),'e02P',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call Func0193(loc_unit04,'Aloc')
    call Func0193(loc_unit03,'A1U7')
    call SetUnitAbilityLevel(loc_unit03,'A1U7',loc_integer02)
    call Func0193(loc_unit03,'Aloc')
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4062))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit03))
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit04))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit04=null
    set loc_trigger01=null
endfunction

// 84461 ~ 84466
function Func4064 takes nothing returns boolean
    if GetSpellAbilityId()=='A1TV' and Func0028(GetSpellTargetUnit())==false then
        call Func4063()
    endif
    return false
endfunction

// 84468 ~ 84473
function Func4065 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4064))
    set loc_trigger01=null
endfunction
