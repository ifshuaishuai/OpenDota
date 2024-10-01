
// 74524 ~ 74526
function Func3555 takes nothing returns nothing
    call Func0115(unit363,GetEnumUnit(),2,50*integer522)
endfunction

// 74528 ~ 74549
function Func3556 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    local group loc_group01=Func0030()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A29K')
    call Func0193(loc_unit02,'A0M9')
    call SetUnitAbilityLevel(loc_unit02,'A0M9',loc_integer01)
    call IssueImmediateOrder(loc_unit02,"thunderclap")
    call Func0193(loc_unit02,'A01W')
    call SetUnitAbilityLevel(loc_unit02,'A01W',loc_integer01)
    call IssueImmediateOrder(loc_unit02,"stomp")
    set unit363=loc_unit01
    set integer522=loc_integer01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,350+25,Condition(function Func0298))
    call ForGroup(loc_group01,function Func3555)
    call Func0029(loc_group01)
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
endfunction

// 74551 ~ 74556
function Func3557 takes nothing returns boolean
    if GetSpellAbilityId()=='A29K' then
        call Func3556()
    endif
    return false
endfunction

// 74558 ~ 74563
function Func3558 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3557))
    set loc_trigger01=null
endfunction
