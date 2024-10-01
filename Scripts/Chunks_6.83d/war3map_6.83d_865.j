
// 89710 ~ 89716
function Func4308 takes nothing returns nothing
    if IsUnitType(GetEnumUnit(),UNIT_TYPE_HERO)==true then
        set integer547=integer547+1
    else
        set integer546=integer546+1
    endif
endfunction

// 89718 ~ 89735
function Func4309 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2JB')
    local group loc_group01=Func0030()
    call DestroyEffect(AddSpecialEffect("war3mapImported\\OverwhelmingOdds.mdx",loc_real01,loc_real02))
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,330+25,Condition(function Func0298))
    set integer546=0
    set integer547=0
    set integer548=loc_integer01
    call ForGroup(loc_group01,function Func4308)
    call ForGroup(loc_group01,function Func4307)
    call Func0029(loc_group01)
    call Func4306(loc_unit01,9*integer547+3*integer546)
    set loc_unit01=null
    set loc_group01=null
endfunction

// 89737 ~ 89742
function Func4310 takes nothing returns boolean
    if GetSpellAbilityId()=='A2JB' then
        call Func4309()
    endif
    return false
endfunction

// 89744 ~ 89750
function Func4311 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4310))
    call Func0132('A2JC')
    set loc_trigger01=null
endfunction
