
// 87637 ~ 87640
function Func4195 takes nothing returns nothing
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\ImmolationRed\\ImmolationRedDamage.mdl",GetEnumUnit(),"chest"))
    call Func0115(unit404,GetEnumUnit(),1,(20+10*integer543)/5)
endfunction

// 87642 ~ 87671
function Func4196 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2HS')
    local group loc_group01
    if GetUnitAbilityLevel(loc_unit01,'B0FP')==0 and GetUnitAbilityLevel(loc_unit01,'B0FQ')==0 then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call UnitRemoveAbility(loc_unit01,'A2H7')
        call UnitRemoveAbility(loc_unit01,'B0FO')
        call UnitRemoveAbility(loc_unit01,'A2IX')
        call UnitRemoveAbility(loc_unit01,'A2IW')
        call UnitRemoveAbility(loc_unit01,'A2IV')
        call UnitRemoveAbility(loc_unit01,'A2IY')
    else
        set unit124=loc_unit01
        set unit404=loc_unit01
        set integer543=loc_integer02
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),400+25,Condition(function Func0305))
        call ForGroup(loc_group01,function Func4195)
        call Func0029(loc_group01)
    endif
    set loc_group01=null
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 87673 ~ 87694
function Func4197 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2HS')
    call UnitAddAbility(loc_unit02,'A2H5')
    call SetUnitAbilityLevel(loc_unit02,'A2H5',loc_integer02)
    call IssueTargetOrder(loc_unit02,"antimagicshell",loc_unit01)
    call TriggerRegisterTimerEvent(loc_trigger01,0.2,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4196))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\FlameGuard.mdx",loc_unit01,"origin")))
    if loc_integer02==1 then
    elseif loc_integer02==2 then
    elseif loc_integer02==3 then
    elseif loc_integer02==4 then
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 87696 ~ 87701
function Func4198 takes nothing returns boolean
    if GetSpellAbilityId()=='A2HS' then
        call Func4197()
    endif
    return false
endfunction

// 87703 ~ 87708
function Func4199 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4198))
    set loc_trigger01=null
endfunction
