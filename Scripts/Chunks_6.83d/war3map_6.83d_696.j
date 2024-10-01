
// 74937 ~ 74939
function Func3584 takes nothing returns boolean
    return IsUnitAlly(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>1 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false
endfunction

// 74941 ~ 74958
function Func3585 takes nothing returns nothing
    local unit loc_unit01=GetAttacker()
    local unit loc_unit02=GetTriggerUnit()
    local group loc_group01=Func0030()
    local boolexpr loc_boolexpr01=Condition(function Func3584)
    local integer loc_integer01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),325+25,loc_boolexpr01)
    call GroupRemoveUnit(loc_group01,loc_unit02)
    if FirstOfGroup(loc_group01)==null then
        set loc_integer01=GetHandleId(loc_unit01)
        if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4275))))==1)==false then
            call UnitDamageTarget(loc_unit01,loc_unit02,5+15*GetUnitAbilityLevel(loc_unit01,('A0FX')),true,true,ATTACK_TYPE_HERO,DAMAGE_TYPE_DIVINE,WEAPON_TYPE_WHOKNOWS)
            call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayTarget.mdl",loc_unit02,"overhead"))
            call Func0044(loc_unit01,4275,0.3)
        endif
    endif
    call Func0029(loc_group01)
endfunction

// 74960 ~ 74965
function Func3586 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3583))
    call TriggerAddAction(loc_trigger01,function Func3585)
endfunction
