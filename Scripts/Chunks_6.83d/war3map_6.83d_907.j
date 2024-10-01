
// 92796 ~ 92807
function Func4482 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    call FlushChildHashtable(hashtable001,(GetHandleId(loc_unit01)))
    call ShowUnit(loc_unit01,false)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 92809 ~ 92838
function Func4483 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2M0')
    if GetTriggerEvalCount(loc_trigger01)==200 or GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call KillUnit(loc_unit02)
        call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Orc\\FeralSpirit\\feralspirittarget.mdl",GetUnitX(loc_unit02),GetUnitX(loc_unit02)))
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
        call TriggerRegisterTimerEvent(loc_trigger01,0,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4482))
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,3,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4481))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    else
        call SuspendHeroXP(loc_unit02,true)
        call UnitModifySkillPoints(loc_unit02,-25)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 92840 ~ 92925
function Func4484 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'N0MM',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2M0')
    local integer loc_integer03=0
    local item loc_item01
    local integer loc_integer04='I02M'
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\FeralSpirit\\feralspirittarget.mdl",loc_unit02,"chest"))
    if Func0056(GetOwningPlayer(loc_unit02))==false then
        set loc_integer04='I0PC'
    endif
    call SelectUnitAddForPlayer(loc_unit02,GetOwningPlayer(loc_unit01))
    call DisableTrigger(trigger057)
    loop
        exitwhen loc_integer03>5
        if UnitItemInSlot(loc_unit01,loc_integer03)!=null and GetItemTypeId(UnitItemInSlot(loc_unit01,loc_integer03))!=integers089[integer198]and GetItemTypeId(UnitItemInSlot(loc_unit01,loc_integer03))!=integers089[integer226]and GetItemTypeId(UnitItemInSlot(loc_unit01,loc_integer03))!=integers089[integer147]and GetItemTypeId(UnitItemInSlot(loc_unit01,loc_integer03))!=integers089[integer148]and GetItemTypeId(UnitItemInSlot(loc_unit01,loc_integer03))!=integers089[integer155]then
            set loc_item01=CreateItem(GetItemTypeId(UnitItemInSlot(loc_unit01,loc_integer03)),0,0)
            if GetItemCharges(UnitItemInSlot(loc_unit01,loc_integer03))>0 then
                call SetItemCharges(loc_item01,GetItemCharges(UnitItemInSlot(loc_unit01,loc_integer03)))
            endif
            call UnitAddItem(loc_unit02,loc_item01)
            call SetItemPlayer(loc_item01,GetOwningPlayer(loc_unit02),false)
            if GetItemTypeId(loc_item01)==integers089[integer212]or GetItemTypeId(loc_item01)==integers089[integer213]or GetItemTypeId(loc_item01)==integers089[integer083]then
                call SetItemDropOnDeath(loc_item01,false)
            endif
        else
            call UnitAddItem(loc_unit02,CreateItem(loc_integer04,0,0))
        endif
        set loc_integer03=loc_integer03+1
    endloop
    call EnableTrigger(trigger057)
    call SetHeroLevel(loc_unit02,GetHeroLevel(loc_unit01),false)
    set loc_integer03=1
    loop
        exitwhen loc_integer03>GetUnitAbilityLevel(loc_unit01,'Aamk')
        call SelectHeroSkill(loc_unit02,'Aamk')
        set loc_integer03=loc_integer03+1
    endloop
    set loc_integer03=1
    loop
        exitwhen loc_integer03>GetUnitAbilityLevel(loc_unit01,'A2LL')
        call SelectHeroSkill(loc_unit02,'A2LL')
        set loc_integer03=loc_integer03+1
    endloop
    set loc_integer03=1
    loop
        exitwhen loc_integer03>GetUnitAbilityLevel(loc_unit01,'A2LM')
        call SelectHeroSkill(loc_unit02,'A2LM')
        set loc_integer03=loc_integer03+1
    endloop
    set loc_integer03=1
    loop
        exitwhen loc_integer03>GetUnitAbilityLevel(loc_unit01,'A2M1')
        call SelectHeroSkill(loc_unit02,'A2M1')
        set loc_integer03=loc_integer03+1
    endloop
    set loc_integer03=1
    loop
        exitwhen loc_integer03>GetUnitAbilityLevel(loc_unit01,'A2B4')
        call SelectHeroSkill(loc_unit02,'A2B4')
        set loc_integer03=loc_integer03+1
    endloop
    set loc_integer03=1
    loop
        exitwhen loc_integer03>GetUnitAbilityLevel(loc_unit01,'A2M0')
        call SelectHeroSkill(loc_unit02,'A2M0')
        set loc_integer03=loc_integer03+1
    endloop
    call UnitRemoveAbility(loc_unit02,'A2M0')
    call UnitModifySkillPoints(loc_unit02,-25)
    call SuspendHeroXP(loc_unit02,true)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4483))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)*(1-(0.45-0.15*loc_integer02)))
    call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)*(1-(0.45-0.15*loc_integer02)))
    call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE))
    call SetUnitState(loc_unit02,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 92927 ~ 92932
function Func4485 takes nothing returns boolean
    if GetSpellAbilityId()=='A2M0' then
        call Func4484()
    endif
    return false
endfunction

// 92934 ~ 92939
function Func4486 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4485))
    set loc_trigger01=null
endfunction
