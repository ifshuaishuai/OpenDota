
// 65792 ~ 65797
function Func3076 takes nothing returns boolean
    if GetUnitTypeId(GetFilterUnit())=='n027' then
        return true
    endif
    return false
endfunction

// 65799 ~ 65805
function Func3077 takes player loc_player01 returns nothing
    local group loc_group01=Func0030()
    call GroupEnumUnitsOfPlayer(loc_group01,loc_player01,Condition(function Func3076))
    call ForGroup(loc_group01,function Func3075)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 65807 ~ 65837
function Func3078 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02
    local integer loc_integer01=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3001)))
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3002)))
    call Func3077(GetOwningPlayer(loc_unit01))
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'n027',GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitFacing(loc_unit01))
    call SetUnitColor(loc_unit02,GetPlayerColor(players003[0]))
    call AddSpecialEffectTarget("Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl",loc_unit02,"chest")
    call UnitApplyTimedLife(loc_unit02,'BTLF',10+10*loc_integer01)
    call SetUnitAbilityLevel(loc_unit02,'A0VV',loc_integer02)
    call Func3074(loc_unit02)
    if booleans024[GetPlayerId(GetOwningPlayer(loc_unit01))]then
        call SelectUnitAddForPlayer(loc_unit02,GetOwningPlayer(loc_unit01))
    endif
    if loc_integer01>3 and loc_integer02>3 then
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'n027',GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitFacing(loc_unit01))
        call SetUnitColor(loc_unit02,GetPlayerColor(players003[0]))
        call AddSpecialEffectTarget("Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl",loc_unit02,"chest")
        call UnitApplyTimedLife(loc_unit02,'BTLF',10+10*loc_integer01)
        call SetUnitAbilityLevel(loc_unit02,'A0VV',loc_integer02)
        call Func3074(loc_unit02)
        if booleans024[GetPlayerId(GetOwningPlayer(loc_unit01))]then
            call SelectUnitAddForPlayer(loc_unit02,GetOwningPlayer(loc_unit01))
        endif
    endif
    call SetPlayerTechResearched(GetOwningPlayer(loc_unit01),'R00G',loc_integer02)
    call SetPlayerTechResearched(GetOwningPlayer(loc_unit01),'R00H',loc_integer01)
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 65839 ~ 65844
function Func3079 takes nothing returns boolean
    if GetSpellAbilityId()=='A0VO' then
        call Func3078()
    endif
    return false
endfunction

// 65846 ~ 65853
function Func3080 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3079))
    call Func0134('A0VV',GetRandomReal(1,25))
    call Func0134('A0VW',GetRandomReal(1,25))
    set loc_trigger01=null
endfunction
