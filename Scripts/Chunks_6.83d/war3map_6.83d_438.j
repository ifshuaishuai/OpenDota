
// 57096 ~ 57119
function Func2555 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local integer loc_integer01=0
    local real loc_real03=0
    local real loc_real04=0
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0BQ')
    call Func0193(loc_unit02,'A05F')
    call SetUnitAbilityLevel(loc_unit02,'A05F',loc_integer02)
    loop
        exitwhen loc_integer01>40
        exitwhen IssuePointOrder(loc_unit02,"stampede",loc_real01+loc_real04*Cos(loc_real03),loc_real02+loc_real04*Sin(loc_real03))
        set loc_integer01=loc_integer01+1
        set loc_real03=loc_real03+0.4
        set loc_real04=loc_real04+10
    endloop
    call RemoveLocation(loc_location01)
    set loc_unit01=null
    set loc_unit02=null
    set loc_location01=null
endfunction

// 57121 ~ 57126
function Func2556 takes nothing returns boolean
    if GetSpellAbilityId()=='A0BQ' then
        call Func2555()
    endif
    return false
endfunction

// 57128 ~ 57133
function Func2557 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2556))
    set loc_trigger01=null
endfunction
