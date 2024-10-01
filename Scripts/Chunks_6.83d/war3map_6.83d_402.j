
// 54547 ~ 54570
function Func2406 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e003',loc_real01,loc_real02,0)
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0RG')
    local real loc_real03=(83+17*loc_integer01)*0.01
    call SetUnitVertexColor(loc_unit02,255,255,255,150)
    call UnitApplyTimedLife(loc_unit02,'BTLF',6)
    call SetUnitScale(loc_unit02,loc_real03,loc_real03,loc_real03)
    if Func0057(GetOwningPlayer(loc_unit01))then
        call Func0193(loc_unit02,'A019')
        call SetUnitAbilityLevel(loc_unit02,'A019',loc_integer01)
    else
        call Func0193(loc_unit02,'A0E7')
        call SetUnitAbilityLevel(loc_unit02,'A0E7',loc_integer01)
    endif
    call IssuePointOrder(loc_unit02,"cloudoffog",loc_real01,loc_real02)
    call RemoveLocation(loc_location01)
    set loc_unit01=null
    set loc_location01=null
    set loc_unit02=null
endfunction

// 54572 ~ 54578
function Func2407 takes nothing returns boolean
    if GetSpellAbilityId()=='A0RG' then
        call Func1642()
        call Func2406()
    endif
    return false
endfunction

// 54580 ~ 54584
function Func2408 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2407))
endfunction
