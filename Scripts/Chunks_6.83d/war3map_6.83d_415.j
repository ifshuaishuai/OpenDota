
// 55230 ~ 55242
function Func2452 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetOwningPlayer(GetTriggerUnit()))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(334)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(333)))
    if loc_unit01!=null and boolean003==false then
        call UnitAddItem(loc_unit02,UnitRemoveItemFromSlot(loc_unit01,0))
        call UnitAddItem(loc_unit02,UnitRemoveItemFromSlot(loc_unit01,1))
        call UnitAddItem(loc_unit02,UnitRemoveItemFromSlot(loc_unit01,2))
        call UnitAddItem(loc_unit02,UnitRemoveItemFromSlot(loc_unit01,3))
        call UnitAddItem(loc_unit02,UnitRemoveItemFromSlot(loc_unit01,4))
        call UnitAddItem(loc_unit02,UnitRemoveItemFromSlot(loc_unit01,5))
    endif
endfunction

// 55244 ~ 55285
function Func2453 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local location loc_location01=GetUnitLoc(loc_unit01)
    local boolexpr loc_boolexpr01=Condition(function Func2451)
    local group loc_group01=Func0030()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0A5')
    local integer loc_integer02=GetHandleId(loc_player01)
    local integer loc_integer03
    local unit loc_unit02
    local real loc_real01
    call GroupEnumUnitsOfPlayer(loc_group01,GetOwningPlayer(loc_unit01),loc_boolexpr01)
    call DestroyBoolExpr(loc_boolexpr01)
    if(loc_integer01==1)then
        call Func2449()
    endif
    set loc_integer03=CountUnitsInGroup(loc_group01)
    if(loc_integer03==1)then
        set loc_unit02=FirstOfGroup(loc_group01)
        set loc_real01=GetUnitLifePercent(loc_unit02)
        set loc_location01=GetUnitLoc(loc_unit02)
        call ShowUnit(loc_unit02,false)
        call KillUnit(loc_unit02)
        if(loc_integer01==2)then
            call CreateNUnitsAtLoc(1,'n018',GetOwningPlayer(GetTriggerUnit()),loc_location01,bj_UNIT_FACING)
            call AddSpecialEffectTargetUnitBJ("chest",bj_lastCreatedUnit,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl")
            call Func2445(bj_lastCreatedUnit)
        elseif(loc_integer01==3)then
            call CreateNUnitsAtLoc(1,'n01C',GetOwningPlayer(GetTriggerUnit()),loc_location01,bj_UNIT_FACING)
            call AddSpecialEffectTargetUnitBJ("chest",bj_lastCreatedUnit,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl")
            call Func2445(bj_lastCreatedUnit)
        elseif(loc_integer01==4)then
            call CreateNUnitsAtLoc(1,'n01G',GetOwningPlayer(GetTriggerUnit()),loc_location01,bj_UNIT_FACING)
            call AddSpecialEffectTargetUnitBJ("chest",bj_lastCreatedUnit,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl")
            call Func2445(bj_lastCreatedUnit)
        endif
        call SetUnitLifePercentBJ(bj_lastCreatedUnit,loc_real01)
        call SaveUnitHandle(hashtable001,(loc_integer02),(333),(bj_lastCreatedUnit))
        call Func2452()
    endif
    call Func0029(loc_group01)
endfunction

// 55287 ~ 55292
function Func2454 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2450))
    call TriggerAddAction(loc_trigger01,function Func2453)
endfunction
