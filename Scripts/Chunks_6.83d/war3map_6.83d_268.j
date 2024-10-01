
// 46280 ~ 46296
function Func1876 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e038',loc_real01,loc_real02,0)
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1E9')
    call Func0193(loc_unit02,'A01D')
    call SetUnitAbilityLevel(loc_unit02,'A01D',loc_integer01)
    call IssueTargetOrder(loc_unit02,"frostnova",loc_unit02)
    call RemoveLocation(loc_location01)
    call Func0193(loc_unit02,'Aloc')
    call UnitApplyTimedLife(loc_unit02,'BTLF',2)
    set loc_unit01=null
    set loc_unit02=null
    set loc_location01=null
endfunction

// 46298 ~ 46303
function Func1877 takes nothing returns boolean
    if GetSpellAbilityId()=='A1E9' then
        call Func1876()
    endif
    return false
endfunction

// 46305 ~ 46310
function Func1878 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1877))
    set loc_trigger01=null
endfunction
