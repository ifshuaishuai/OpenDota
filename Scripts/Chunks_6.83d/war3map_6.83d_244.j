
// 44594 ~ 44596
function Func1769 takes nothing returns boolean
    return GetLearnedSkill()==('A0FV')and GetUnitAbilityLevel(GetTriggerUnit(),('A0FV'))==1 and IsUnitIllusion(GetTriggerUnit())==false
endfunction

// 44598 ~ 44610
function Func1770 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,('A0FV'))
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00X',0,0,0)
    local trigger loc_trigger01=CreateTrigger()
    call Func0193(loc_unit02,('A0EF'))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(316),(loc_unit02))
    call SetUnitInvulnerable(loc_unit02,true)
    call Func0193(loc_unit02,'Aloc')
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1762))
    call TriggerAddAction(loc_trigger01,function Func1768)
endfunction

// 44612 ~ 44618
function Func1771 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1769))
    call TriggerAddAction(loc_trigger01,function Func1770)
    call Func0132(('A0EF'))
endfunction

// 44620 ~ 44622
function Func1772 takes nothing returns boolean
    return GetSpellAbilityId()=='A0GP'
endfunction

// 44624 ~ 44626
function Func1773 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and GetUnitAbilityLevel(GetFilterUnit(),'A04R')!=1
endfunction

// 44628 ~ 44635
function Func1774 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetEnumUnit())
    local integer loc_integer02=(LoadInteger(hashtable001,(integer462),(loc_integer01)))
    local integer loc_integer03=GetUnitAbilityLevel(unit002,'A0GP')
    local real loc_real01=Func0141(real002+loc_integer02*(28+2*loc_integer03),400)
    call UnitDamageTarget(unit002,GetEnumUnit(),loc_real01,false,true,ATTACK_TYPE_HERO,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
    call SaveInteger(hashtable001,(integer462),(loc_integer01),(loc_integer02+1))
endfunction
