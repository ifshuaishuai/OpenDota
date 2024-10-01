
// 46549 ~ 46555
function Func1897 takes nothing returns nothing
    local unit loc_unit01=CreateUnit(GetOwningPlayer(unit278),'e00E',GetUnitX(GetEnumUnit()),GetUnitY(GetEnumUnit()),0)
    call Func0193(loc_unit01,'A0S5')
    call IssueTargetOrder(loc_unit01,"slow",GetEnumUnit())
    call Func0115(unit278,GetEnumUnit(),1,real281)
    set loc_unit01=null
endfunction

// 46557 ~ 46571
function Func1898 takes unit loc_unit01,unit loc_unit02 returns nothing
    local integer loc_integer01=GetHandleId(loc_unit01)
    local group loc_group01=Func0030()
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(200))))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(201))))
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4264)),(2))
    set unit124=loc_unit01
    set unit278=loc_unit01
    set real281=GetUnitAbilityLevel(loc_unit01,'A0QW')*20+10
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),300,Condition(function Func0305))
    call ForGroup(loc_group01,function Func1897)
    call Func0029(loc_group01)
    call DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl",GetUnitX(loc_unit02),GetUnitY(loc_unit02)))
    set loc_group01=null
endfunction

// 46573 ~ 46600
function Func1899 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer02)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local trigger loc_trigger02=(LoadTriggerHandle(hashtable001,(loc_integer01),(202)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit02 and((LoadInteger(hashtable001,(GetHandleId((loc_unit02))),((4264))))==1)==true then
            call DisableTrigger(loc_trigger01)
            call Func1898(loc_unit02,loc_unit01)
            call Func0021(loc_integer02)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call FlushChildHashtable(hashtable001,(GetHandleId(loc_trigger02)))
            call Func0035(loc_trigger02)
        endif
    else
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger02=null
    return false
endfunction

// 46602 ~ 46616
function Func1900 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetAttacker()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerRegisterTimerEvent(loc_trigger01,2.5,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1899))
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit01)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
    call SaveTriggerHandle(hashtable001,(loc_integer01),(202),(GetTriggeringTrigger()))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 46618 ~ 46623
function Func1901 takes nothing returns boolean
    if GetAttacker()==(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(2)))and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitAlly(GetAttacker(),GetOwningPlayer(GetTriggerUnit()))==false then
        call Func1900()
    endif
    return false
endfunction

// 46625 ~ 46639
function Func1902 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetHandleId(loc_unit01)
    local string loc_string01=""
    if IsUnitAlly(loc_unit01,GetLocalPlayer())or Func0107(GetLocalPlayer())then
        set loc_string01="Abilities\\Weapons\\FarseerMissile\\FarseerMissile.mdl"
    endif
    call SaveEffectHandle(hashtable001,(loc_integer01),(200),(AddSpecialEffectTarget(loc_string01,loc_unit01,"right hand")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(201),(AddSpecialEffectTarget(loc_string01,loc_unit01,"left hand")))
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1901))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2),(loc_unit01))
    set loc_trigger01=null
endfunction

// 46641 ~ 46647
function Func1903 takes nothing returns boolean
    if(GetSpellAbilityId()=='A14O' or GetSpellAbilityId()=='A14P' or GetSpellAbilityId()=='A14R')and((LoadInteger(hashtable001,(GetHandleId((GetTriggerUnit()))),((4264))))==1)==false then
        call SaveInteger(hashtable001,(GetHandleId((GetTriggerUnit()))),((4264)),(1))
        call Func1902()
    endif
    return false
endfunction

// 46649 ~ 46656
function Func1904 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1903))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 46658 ~ 46663
function Func1905 takes nothing returns boolean
    if GetLearnedSkill()=='A0QW' and GetUnitAbilityLevel(GetTriggerUnit(),'A0QW')==1 and IsUnitIllusion(GetTriggerUnit())==false then
        call Func1904()
    endif
    return false
endfunction

// 46665 ~ 46670
function Func1906 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1905))
    set loc_trigger01=null
endfunction
