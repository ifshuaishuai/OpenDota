
// 62270 ~ 62306
function Func2861 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A311')
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if boolean147 and(loc_unit02==GetEventDamageSource()or loc_unit02==GetTriggerUnit())then
            set boolean147=false
            call Func0115(GetEventDamageSource(),GetTriggerUnit(),3,GetEventDamage()*(20+5*loc_integer02)/100)
            set boolean147=true
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_DEATH then
        if GetKillingUnit()==loc_unit02 or GetTriggerUnit()==loc_unit02 then
            call SetUnitState(GetKillingUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_MAX_LIFE)*0.25+GetUnitState(GetKillingUnit(),UNIT_STATE_LIFE))
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl",GetKillingUnit(),"origin"))
        elseif GetOwningPlayer(GetKillingUnit())==GetOwningPlayer(loc_unit02)and GetUnitAbilityLevel(GetKillingUnit(),'A04R')>0 then
            call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_MAX_LIFE)*0.25+GetUnitState(loc_unit02,UNIT_STATE_LIFE))
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\VampiricAura\\VampiricAuraTarget.mdl",loc_unit02,"origin"))
        endif
        if GetTriggerUnit()==loc_unit02 then
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 62308 ~ 62337
function Func2862 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local group loc_group01=Func0030()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A311')
    local unit loc_unit04
    call TriggerRegisterTimerEvent(loc_trigger01,8+loc_integer02,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2861))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\TrollBerserk\\HeadhunterWEAPONSLeft.mdl",loc_unit02,"hand,right")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\TrollBerserk\\HeadhunterWEAPONSLeft.mdl",loc_unit02,"hand,left")))
    call GroupEnumUnitsInRange(loc_group01,0,0,99999,Condition(function Func0287))
    loop
        set loc_unit04=FirstOfGroup(loc_group01)
        exitwhen loc_unit04==null
        call GroupRemoveUnit(loc_group01,loc_unit04)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit04,EVENT_UNIT_DAMAGED)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit04,EVENT_UNIT_DEATH)
    endloop
    call Func0029(loc_group01)
    set loc_unit04=null
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
endfunction

// 62339 ~ 62346
function Func2863 takes nothing returns boolean
    if GetSpellAbilityId()=='A311' and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true then
        if IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==false or Func0028(GetSpellTargetUnit())==false then
            call Func2862()
        endif
    endif
    return false
endfunction
