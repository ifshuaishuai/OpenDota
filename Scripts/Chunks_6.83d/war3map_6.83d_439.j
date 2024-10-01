
// 57135 ~ 57137
function Func2558 takes nothing returns boolean
    return(GetSpellAbilityId()=='A049' or GetSpellAbilityId()=='A2WB')and Func0028(GetSpellTargetUnit())==false
endfunction

// 57139 ~ 57141
function Func2559 takes nothing returns nothing
    call UnitDamageTarget(GetTriggerUnit(),GetSpellTargetUnit(),GetUnitAbilityLevel(GetTriggerUnit(),GetSpellAbilityId())*80,true,false,ATTACK_TYPE_HERO,DAMAGE_TYPE_MAGIC,WEAPON_TYPE_WHOKNOWS)
endfunction

// 57143 ~ 57148
function Func2560 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2558))
    call TriggerAddAction(loc_trigger01,function Func2559)
endfunction

// 57150 ~ 57152
function Func2561 takes nothing returns boolean
    return(Func0098(GetFilterUnit())==false and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))and IsHeroUnitId(GetUnitTypeId(GetFilterUnit()))
endfunction
