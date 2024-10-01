
// 69358 ~ 69367
function Func3264 takes nothing returns boolean
    local real loc_real01
    local real loc_real02
    if(IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))then
        set loc_real01=real347+GetRandomReal(20,70)*Cos(GetUnitFacing(GetTriggerUnit())*bj_DEGTORAD)
        set loc_real02=real348+GetRandomReal(20,70)*Sin(GetUnitFacing(GetTriggerUnit())*bj_DEGTORAD)
        call SetUnitPosition(GetFilterUnit(),loc_real01,loc_real02)
    endif
    return false
endfunction

// 69369 ~ 69385
function Func3265 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local group loc_group01=Func0030()
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A29L')
    set real347=GetUnitX(loc_unit01)+100*Cos(GetUnitFacing(loc_unit01)*bj_DEGTORAD)
    set real348=GetUnitY(loc_unit01)+100*Sin(GetUnitFacing(loc_unit01)*bj_DEGTORAD)
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,410+24,Condition(function Func3264))
    call Func0029(loc_group01)
    call Func0193(loc_unit02,'A06F')
    call SetUnitAbilityLevel(loc_unit02,'A06F',loc_integer01)
    call IssueImmediateOrder(loc_unit02,"stomp")
    set loc_unit01=null
    set loc_group01=null
endfunction

// 69387 ~ 69392
function Func3266 takes nothing returns boolean
    if GetSpellAbilityId()=='A29L' then
        call Func3265()
    endif
    return false
endfunction

// 69394 ~ 69399
function Func3267 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3266))
    set loc_trigger01=null
endfunction
