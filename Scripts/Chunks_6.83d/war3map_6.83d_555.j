
// 64833 ~ 64848
function Func3012 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH or GetUnitAbilityLevel(loc_unit01,'B0C2')==0 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call SetUnitTimeScale(loc_unit01,1)
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4280)),(2))
    else
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AbsorbMana\\AbsorbManaBirthMissile.mdl",loc_unit01,"origin"))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 64850 ~ 64863
function Func3013 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SetUnitTimeScale(loc_unit01,0)
    call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4280)),(1))
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3012))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4306))))==1)==true then
        call Func0115(unit339,loc_unit01,1,30+10*GetUnitAbilityLevel(unit339,'A081'))
    endif
    set loc_trigger01=null
endfunction

// 64865 ~ 64870
function Func3014 takes nothing returns boolean
    if GetUnitAbilityLevel(GetFilterUnit(),'B0C2')>0 and((LoadInteger(hashtable001,(GetHandleId((GetFilterUnit()))),((4280))))==1)==false then
        call Func3013(GetFilterUnit())
    endif
    return false
endfunction

// 64872 ~ 64884
function Func3015 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local group loc_group01=Func0030()
    set unit339=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),450,Condition(function Func3014))
    call Func0029(loc_group01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    return false
endfunction

// 64886 ~ 64895
function Func3016 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3015))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 64897 ~ 64902
function Func3017 takes nothing returns boolean
    if GetLearnedSkill()=='A081' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A081')==1 then
        call Func3016()
    endif
    return false
endfunction

// 64904 ~ 64909
function Func3018 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3017))
    set loc_trigger01=null
endfunction
