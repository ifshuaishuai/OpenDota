
// 56965 ~ 56972
function Func2547 takes nothing returns nothing
    local real loc_real01=Func0147(unit311,GetEnumUnit())
    local real loc_real02=real316
    if loc_real01>225 then
        set loc_real02=real317
    endif
    call Func0115(unit311,GetEnumUnit(),2,loc_real02)
endfunction

// 56974 ~ 57002
function Func2548 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A06B')
    local real loc_real01
    local real loc_real02
    local group loc_group01=Func0030()
    if loc_integer01==1 then
        set loc_real01=500
        set loc_real02=260
    elseif loc_integer01==2 then
        set loc_real01=650
        set loc_real02=300
    elseif loc_integer01==3 then
        set loc_real01=850
        set loc_real02=340
    elseif loc_integer01==4 then
        set loc_real01=1150
        set loc_real02=380
    endif
    set real316=loc_real01
    set real317=loc_real02
    set unit124=loc_unit01
    set unit311=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),525,Condition(function Func0305))
    call ForGroup(loc_group01,function Func2547)
    call Func0029(loc_group01)
    set loc_group01=null
    set loc_unit01=null
endfunction

// 57004 ~ 57009
function Func2549 takes nothing returns boolean
    if GetSpellAbilityId()=='A06B' then
        call Func2548()
    endif
    return false
endfunction

// 57011 ~ 57016
function Func2550 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2549))
    set loc_trigger01=null
endfunction
