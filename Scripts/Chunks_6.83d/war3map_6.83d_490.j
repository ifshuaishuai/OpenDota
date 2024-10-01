
// 60701 ~ 60704
function Func2783 takes nothing returns nothing
    set integer022=integer022+1
    call SaveEffectHandle(hashtable001,(integer025),(2700+integer022),(AddSpecialEffectTarget("Abilities\\Weapons\\LavaSpawnMissile\\LavaSpawnBirthMissile.mdl",GetEnumUnit(),"chest")))
endfunction

// 60706 ~ 60734
function Func2784 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0I6')
    local group loc_group01=Func0030()
    call Func0193(loc_unit01,'A0I5')
    call SetUnitAbilityLevel(loc_unit01,'A0I5',loc_integer02)
    set unit124=loc_unit01
    set unit323=loc_unit01
    set integer022=0
    set integer025=loc_integer01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),325,Condition(function Func2779))
    call ForGroup(loc_group01,function Func2783)
    call ForGroup(loc_group01,function Func2781)
    call SaveInteger(hashtable001,(loc_integer01),(365),(integer022))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveGroupHandle(hashtable001,(loc_integer01),(220),(loc_group01))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveInteger(hashtable001,(loc_integer01),(34),(0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.2,true)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2782))
    set loc_trigger01=null
    set loc_group01=null
    set loc_unit01=null
endfunction

// 60736 ~ 60741
function Func2785 takes nothing returns boolean
    if GetSpellAbilityId()=='A0I6' then
        call Func2784()
    endif
    return false
endfunction

// 60743 ~ 60748
function Func2786 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2785))
    set loc_trigger01=null
endfunction
