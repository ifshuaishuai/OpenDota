
// 71065 ~ 71067
function Func3360 takes nothing returns nothing
    call UnitDamageTarget(GetTriggerUnit(),GetEnumUnit(),25+75*GetUnitAbilityLevel(GetTriggerUnit(),GetSpellAbilityId()),true,false,ATTACK_TYPE_NORMAL,DAMAGE_TYPE_DEATH,WEAPON_TYPE_WHOKNOWS)
endfunction

// 71069 ~ 71105
function Func3361 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02
    local group loc_group01=Func0030()
    local boolexpr loc_boolexpr01=Condition(function Func3359)
    local real loc_real01=GetUnitFacing(loc_unit01)
    local real loc_real02
    local real loc_real03
    if GetSpellAbilityId()==('A0EY')then
        set loc_real02=GetUnitX(loc_unit01)+200*Cos(loc_real01*bj_DEGTORAD)
        set loc_real03=GetUnitY(loc_unit01)+200*Sin(loc_real01*bj_DEGTORAD)
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e006',loc_real02,loc_real03,0)
        call UnitApplyTimedLife(loc_unit02,'BTLF',2)
        call GroupEnumUnitsInRange(loc_group01,loc_real02,loc_real03,(275),loc_boolexpr01)
        call ForGroup(loc_group01,function Func3360)
        call GroupClear(loc_group01)
    endif
    if GetSpellAbilityId()==('A0FH')then
        set loc_real02=GetUnitX(loc_unit01)+450*Cos(loc_real01*bj_DEGTORAD)
        set loc_real03=GetUnitY(loc_unit01)+450*Sin(loc_real01*bj_DEGTORAD)
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e006',loc_real02,loc_real03,0)
        call UnitApplyTimedLife(loc_unit02,'BTLF',2)
        call GroupEnumUnitsInRange(loc_group01,loc_real02,loc_real03,(275),loc_boolexpr01)
        call ForGroup(loc_group01,function Func3360)
        call GroupClear(loc_group01)
    endif
    if GetSpellAbilityId()==('A0F0')then
        set loc_real02=GetUnitX(loc_unit01)+700*Cos(loc_real01*bj_DEGTORAD)
        set loc_real03=GetUnitY(loc_unit01)+700*Sin(loc_real01*bj_DEGTORAD)
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e006',loc_real02,loc_real03,0)
        call UnitApplyTimedLife(loc_unit02,'BTLF',2)
        call GroupEnumUnitsInRange(loc_group01,loc_real02,loc_real03,(275),loc_boolexpr01)
        call ForGroup(loc_group01,function Func3360)
        call GroupClear(loc_group01)
    endif
    call Func0029(loc_group01)
endfunction

// 71107 ~ 71112
function Func3362 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddAction(loc_trigger01,function Func3361)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3358))
endfunction
