
// 60789 ~ 60792
function Func2791 takes nothing returns nothing
    call SetPlayerAbilityAvailable(GetOwningPlayer(GetEnumUnit()),'A2IC',false)
    call Func0246(GetEnumUnit(),'A2IC',1,integer499,'B0FV')
endfunction

// 60798 ~ 60800
function Func2792 takes nothing returns boolean
    return Func0028(GetSpellTargetUnit())==false and(GetSpellAbilityId()==('A0E2')or GetSpellAbilityId()=='A1MR')
endfunction

// 60802 ~ 60847
function Func2793 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local real loc_real01=GetUnitState(loc_unit02,UNIT_STATE_LIFE)
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,('A0E2'))
    local unit loc_unit03
    local boolean loc_boolean01=false
    local group loc_group01
    local integer loc_integer02=250
    local integer loc_integer03=325
    local integer loc_integer04=400
    set integer499=6
    if loc_integer01==0 then
        set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1MR')
        set loc_boolean01=true
        set loc_integer02=300
        set loc_integer03=425
        set loc_integer04=550
        set integer499=10
    endif
    if(loc_real01<=loc_integer02 and loc_integer01==1)or(loc_real01<=loc_integer03 and loc_integer01==2)or(loc_real01<=loc_integer04 and loc_integer01==3)then
        if IsUnitType(loc_unit02,UNIT_TYPE_HERO)then
            if loc_boolean01 then
                call UnitRemoveAbility(loc_unit01,'A1MR')
                call UnitAddAbility(loc_unit01,'A1MR')
                call SetUnitAbilityLevel(loc_unit01,'A1MR',loc_integer01)
            else
                call UnitRemoveAbility(loc_unit01,'A0E2')
                call UnitAddAbility(loc_unit01,'A0E2')
                call SetUnitAbilityLevel(loc_unit01,'A0E2',loc_integer01)
            endif
        endif
        call PlaySoundOnUnitBJ(sound005,100,loc_unit02)
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile.mdl",loc_unit02,"overhead"))
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',0,0,0)
        call UnitRemoveBuffs(loc_unit02,true,true)
        call UnitRemoveAbility(loc_unit02,'Aetl')
        call UnitDamageTarget(loc_unit03,loc_unit02,100000000.00,true,false,ATTACK_TYPE_MELEE,DAMAGE_TYPE_NORMAL,WEAPON_TYPE_WHOKNOWS)
        call DestroyEffect(AddSpecialEffectTarget("war3mapImported\\AxeUltiMSFX_01.mdx",loc_unit01,"origin"))
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),925,Condition(function Func0333))
        call ForGroup(loc_group01,function Func2791)
        call Func0029(loc_group01)
        set loc_group01=null
    endif
endfunction

// 60849 ~ 60854
function Func2794 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2792))
    call TriggerAddAction(loc_trigger01,function Func2793)
endfunction

// 60856 ~ 60858
function Func2795 takes nothing returns boolean
    return GetSpellAbilityId()=='A0GK' and Func0028(GetSpellTargetUnit())==false
endfunction

// 60860 ~ 60866
function Func2796 takes nothing returns nothing
    call UnitDamageTargetBJ(GetTriggerUnit(),GetSpellTargetUnit(),20+70*GetUnitAbilityLevel(GetTriggerUnit(),'A0GK'),ATTACK_TYPE_HERO,DAMAGE_TYPE_MAGIC)
    if GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)>1 then
        call SetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE,GetUnitState(GetTriggerUnit(),UNIT_STATE_LIFE)+20+70*GetUnitAbilityLevel(GetTriggerUnit(),'A0GK'))
    endif
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Items\\AIil\\AIilTarget.mdl",GetSpellTargetUnit(),"origin"))
endfunction
