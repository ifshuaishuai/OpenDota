
// 63030 ~ 63045
function Func2905 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
    call UnitRemoveAbility(loc_unit01,'A1R0')
    call UnitRemoveAbility(loc_unit01,'B0D5')
    call Func0420(loc_unit01,0)
    call Func0422(loc_unit01,0)
    call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 63047 ~ 63073
function Func2906 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A04Q')
    local real loc_real01=GetUnitState(loc_unit02,UNIT_STATE_LIFE)
    local real loc_real02=GetUnitState(loc_unit01,UNIT_STATE_LIFE)
    local integer loc_integer03=R2I((0.035+0.015*loc_integer02)*loc_real01)
    local integer loc_integer04=R2I((0.35+0.15*loc_integer02)*loc_real01)
    call Func0420(loc_unit01,loc_integer03)
    call Func0422(loc_unit01,loc_integer04)
    call Func0193(loc_unit01,'A1R0')
    call SetUnitState(loc_unit02,UNIT_STATE_LIFE,1)
    call Func0115(loc_unit01,loc_unit02,2,20)
    call Func0115(loc_unit01,loc_unit02,1,20)
    call Func0115(loc_unit01,loc_unit02,3,20)
    call SetUnitState(loc_unit01,UNIT_STATE_LIFE,loc_real02+loc_integer04)
    call DestroyEffect(AddSpecialEffectTarget("Objects\\Spawnmodels\\Human\\HumanBlood\\BloodElfSpellThiefBlood.mdl",loc_unit02,"chest"))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterTimerEvent(loc_trigger01,35,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2905))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 63075 ~ 63080
function Func2907 takes nothing returns boolean
    if GetSpellAbilityId()=='A04Q' and GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)>0.5 and Func0096(GetSpellTargetUnit())==false then
        call Func2906()
    endif
    return false
endfunction

// 63082 ~ 63087
function Func2908 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2907))
    set loc_trigger01=null
endfunction
