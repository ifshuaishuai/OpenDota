
// 50912 ~ 50918
function Func2183 takes nothing returns nothing
    local real loc_real01=Func0147(GetTriggerUnit(),GetEnumUnit())
    if loc_real01>650 then
    else
        call GroupAddUnit(group002,GetEnumUnit())
    endif
endfunction

// 50920 ~ 50954
function Func2184 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    local unit loc_unit02
    set unit124=loc_unit01
    set unit289=loc_unit01
    set group002=Func0030()
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),900,Condition(function Func0303))
    call ForGroup(loc_group01,function Func2183)
    call Func0029(loc_group01)
    set loc_group01=group002
    call ForGroup(loc_group01,function Func2178)
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(loc_group01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.5,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2182))
    set unit289=loc_unit01
    set loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),175+25,Condition(function Func0303))
    set loc_unit02=GroupPickRandomUnit(loc_group01)
    call Func0029(loc_group01)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Spells\\NightElf\\Starfall\\StarfallCaster.mdl",loc_unit01,"origin")))
    call TriggerRegisterTimerEvent(loc_trigger01,1,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2180))
    set loc_trigger01=null
    set loc_group01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 50956 ~ 50961
function Func2185 takes nothing returns boolean
    if GetSpellAbilityId()=='A0KV' then
        call Func2184()
    endif
    return false
endfunction

// 50963 ~ 50968
function Func2186 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2185))
    set loc_trigger01=null
endfunction
