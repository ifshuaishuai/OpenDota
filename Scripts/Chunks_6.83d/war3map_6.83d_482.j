
// 60082 ~ 60091
function Func2749 takes nothing returns nothing
    local timer loc_timer01=GetExpiredTimer()
    local integer loc_integer01=GetHandleId(loc_timer01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(20)))
    call UnitDamageTarget(loc_unit01,loc_unit01,loc_real01,false,true,ATTACK_TYPE_HERO,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call PauseTimer(loc_timer01)
    call DestroyTimer(loc_timer01)
endfunction

// 60093 ~ 60109
function Func2750 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local real loc_real01=50+50*GetUnitAbilityLevel(loc_unit01,('A0I3'))
    local real loc_real02=50+25*GetUnitAbilityLevel(loc_unit01,('A0I3'))
    local timer loc_timer01=CreateTimer()
    local integer loc_integer01=GetHandleId(loc_timer01)
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\AnimateDead\\AnimateDeadTarget.mdl",loc_unit02,"origin"))
    if IsUnitAlly(loc_unit02,GetOwningPlayer(loc_unit01))and GetUnitState(loc_unit02,UNIT_STATE_LIFE)>1.00 then
        call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_LIFE)+loc_real01)
    else
        call UnitDamageTarget(loc_unit01,loc_unit02,loc_real01,false,true,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
    endif
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(20),((loc_real02)*1.0))
    call TimerStart(loc_timer01,0,false,function Func2749)
endfunction

// 60111 ~ 60116
function Func2751 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2748))
    call TriggerAddAction(loc_trigger01,function Func2750)
endfunction
