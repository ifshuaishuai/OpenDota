
// 45336 ~ 45338
function Func1827 takes nothing returns boolean
    return IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitType(GetFilterUnit(),UNIT_TYPE_HERO)==true and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>1
endfunction

// 45340 ~ 45372
function Func1828 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0LT')
    local group loc_group01=Func0030()
    local unit loc_unit02
    if loc_integer01==0 then
        set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1CS')
    endif
    call GroupEnumUnitsInRect(loc_group01,bj_mapInitialPlayableArea,Condition(function Func1827))
    loop
        set loc_unit02=FirstOfGroup(loc_group01)
        exitwhen loc_unit02==null
        if(IsUnitAlly(loc_unit02,GetOwningPlayer(loc_unit01))==true)then
            call SetWidgetLife(loc_unit02,(GetUnitStateSwap(UNIT_STATE_LIFE,loc_unit02)+100+(100*loc_integer01)))
            call DestroyEffect(AddSpecialEffectTargetUnitBJ("chest",loc_unit02,"Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl"))
        endif
        call GroupRemoveUnit(loc_group01,loc_unit02)
    endloop
    call Func0029(loc_group01)
    set loc_group01=Func0030()
    set bj_groupEnumOwningPlayer=GetOwningPlayer(loc_unit01)
    call GroupEnumUnitsInRect(loc_group01,GetWorldBounds(),filterGetUnitsInRectOfPlayer)
    loop
        set loc_unit02=FirstOfGroup(loc_group01)
        exitwhen loc_unit02==null
        if(IsUnitType(loc_unit02,UNIT_TYPE_HERO)==false and GetUnitTypeId(loc_unit02)!='n00C')then
            call SetUnitLifePercentBJ(loc_unit02,100)
            call DestroyEffect(AddSpecialEffectTargetUnitBJ("chest",loc_unit02,"Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl"))
        endif
        call GroupRemoveUnit(loc_group01,loc_unit02)
    endloop
    call Func0029(loc_group01)
endfunction

// 45374 ~ 45379
function Func1829 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1826))
    call TriggerAddAction(loc_trigger01,function Func1828)
endfunction
