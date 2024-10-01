
// 55314 ~ 55331
function Func2459 takes nothing returns boolean
    if Func0194(GetFilterUnit())then
        return false
    endif
    if((GetUnitTypeId(GetFilterUnit())=='n01G'))then
        return true
    endif
    if((GetUnitTypeId(GetFilterUnit())=='n01C'))then
        return true
    endif
    if((GetUnitTypeId(GetFilterUnit())=='n018'))then
        return true
    endif
    if((GetUnitTypeId(GetFilterUnit())=='n004'))then
        return true
    endif
    return false
endfunction

// 55333 ~ 55383
function Func2460 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local location loc_location01=GetUnitLoc(loc_unit01)
    local boolexpr loc_boolexpr01=Condition(function Func2459)
    local group loc_group01=Func0030()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0A5')
    local integer loc_integer02=GetHandleId(loc_player01)
    local boolean loc_boolean01
    local unit loc_unit02
    call GroupEnumUnitsOfPlayer(loc_group01,GetOwningPlayer(loc_unit01),loc_boolexpr01)
    set loc_boolean01=CountUnitsInGroup(loc_group01)==0
    if(loc_integer01==1 and loc_boolean01)then
        call CreateNUnitsAtLoc(1,'n004',GetOwningPlayer(GetTriggerUnit()),loc_location01,bj_UNIT_FACING)
        call SaveUnitHandle(hashtable001,(loc_integer02),(333),(bj_lastCreatedUnit))
        call Func2452()
        call AddSpecialEffectTargetUnitBJ("chest",bj_lastCreatedUnit,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl")
        call Func2445(bj_lastCreatedUnit)
    elseif(loc_integer01==2 and loc_boolean01)then
        call CreateNUnitsAtLoc(1,'n018',GetOwningPlayer(GetTriggerUnit()),loc_location01,bj_UNIT_FACING)
        call SaveUnitHandle(hashtable001,(loc_integer02),(333),(bj_lastCreatedUnit))
        call Func2452()
        call AddSpecialEffectTargetUnitBJ("chest",bj_lastCreatedUnit,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl")
        call Func2445(bj_lastCreatedUnit)
    elseif(loc_integer01==3 and loc_boolean01)then
        call CreateNUnitsAtLoc(1,'n01C',GetOwningPlayer(GetTriggerUnit()),loc_location01,bj_UNIT_FACING)
        call SaveUnitHandle(hashtable001,(loc_integer02),(333),(bj_lastCreatedUnit))
        call Func2452()
        call AddSpecialEffectTargetUnitBJ("chest",bj_lastCreatedUnit,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl")
        call Func2445(bj_lastCreatedUnit)
    elseif(loc_integer01==4 and loc_boolean01)then
        call CreateNUnitsAtLoc(1,'n01G',GetOwningPlayer(GetTriggerUnit()),loc_location01,bj_UNIT_FACING)
        call SaveUnitHandle(hashtable001,(loc_integer02),(333),(bj_lastCreatedUnit))
        call Func2452()
        call AddSpecialEffectTargetUnitBJ("chest",bj_lastCreatedUnit,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl")
        call Func2445(bj_lastCreatedUnit)
    elseif loc_boolean01==false then
        set loc_unit02=FirstOfGroup(loc_group01)
        call AddSpecialEffectTargetUnitBJ("chest",loc_unit02,"Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl")
        call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_MAX_LIFE))
        call SetUnitPosition(loc_unit02,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
        set loc_unit02=null
    endif
    call SetUnitAbilityLevel(bj_lastCreatedUnit,'A09Y',loc_integer01)
    call Func0029(loc_group01)
    call RemoveLocation(loc_location01)
    set loc_unit01=null
    set loc_player01=null
    set loc_location01=null
    set loc_group01=null
endfunction

// 55385 ~ 55405
function Func2461 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local player loc_player01=GetOwningPlayer(loc_unit01)
    local location loc_location01=GetUnitLoc(loc_unit01)
    local boolexpr loc_boolexpr01=Condition(function Func2459)
    local group loc_group01=Func0030()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0A5')
    local integer loc_integer02=GetHandleId(loc_player01)
    local boolean loc_boolean01
    local unit loc_unit02
    call GroupEnumUnitsOfPlayer(loc_group01,GetOwningPlayer(loc_unit01),loc_boolexpr01)
    if CountUnitsInGroup(loc_group01)!=0 then
        set loc_unit02=FirstOfGroup(loc_group01)
        if loc_unit02!=null and((LoadInteger(hashtable001,(GetHandleId((loc_unit02))),((4327))))==1)==true then
            call Func0123(loc_unit01)
            call Func0120(loc_player01,GetObjectName('n0MN'))
        endif
    endif
    call Func0029(loc_group01)
    call RemoveLocation(loc_location01)
endfunction

// 55407 ~ 55416
function Func2462 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2458))
    call TriggerAddAction(loc_trigger01,function Func2460)
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2458))
    call TriggerAddAction(loc_trigger01,function Func2461)
endfunction
