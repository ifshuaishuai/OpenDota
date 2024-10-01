
// 52067 ~ 52069
function Func2254 takes nothing returns boolean
    return IsUnitIllusion(GetFilterUnit())and Func0194(GetFilterUnit())==false
endfunction

// 52071 ~ 52086
function Func2255 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local group loc_group01=Func0030()
    local integer loc_integer01=0
    set group013=Func0030()
    set unit292=loc_unit01
    call GroupEnumUnitsOfPlayer(loc_group01,GetOwningPlayer(loc_unit01),Condition(function Func2254))
    call GroupAddUnit(loc_group01,loc_unit01)
    call ForGroup(loc_group01,function Func2253)
    call Func0029(loc_group01)
    call Func0029(group013)
    set loc_unit01=null
    set loc_group01=null
endfunction

// 52088 ~ 52093
function Func2256 takes nothing returns boolean
    if GetSpellAbilityId()=='A2KU' then
        call Func2255()
    endif
    return false
endfunction

// 52095 ~ 52100
function Func2257 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2256))
    set loc_trigger01=null
endfunction
