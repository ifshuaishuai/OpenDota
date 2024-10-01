
// 48590 ~ 48598
function Func2046 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    local real loc_real01=Func0149(GetUnitX(loc_unit01),GetUnitY(loc_unit01),real290,real291)
    if loc_real01<real289 and IsUnitVisible(loc_unit01,GetOwningPlayer(unit284))==true then
        set unit283=GetEnumUnit()
        set real289=loc_real01
    endif
    set loc_unit01=null
endfunction

// 48600 ~ 48634
function Func2047 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(GetTriggerUnit(),'A1W8')
    local integer loc_integer02='A07X'
    local group loc_group01
    local unit loc_unit03
    if loc_integer01==0 then
        set loc_integer01=GetUnitAbilityLevel(GetTriggerUnit(),'A1W9')
        set loc_integer02='A0AL'
    endif
    if loc_unit02==null then
        set unit283=null
        set unit284=loc_unit01
        set real289=999999
        set real290=GetSpellTargetX()
        set real291=GetSpellTargetY()
        set unit124=loc_unit01
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,0,0,9999,Condition(function Func0305))
        call ForGroup(loc_group01,function Func2046)
        call Func0029(loc_group01)
        set loc_unit02=unit283
        set loc_group01=null
    endif
    if loc_unit02!=null then
        set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
        call Func0193(loc_unit03,loc_integer02)
        call SetUnitAbilityLevel(loc_unit03,loc_integer02,loc_integer01)
        call IssueTargetOrder(loc_unit03,"chainlightning",loc_unit02)
        set loc_unit03=null
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 48636 ~ 48641
function Func2048 takes nothing returns boolean
    if GetSpellAbilityId()=='A1W8' or GetSpellAbilityId()=='A1W9' then
        call Func2047()
    endif
    return false
endfunction

// 48643 ~ 48648
function Func2049 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2048))
    set loc_trigger01=null
endfunction
