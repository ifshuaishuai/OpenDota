
// 59939 ~ 59941
function Func2737 takes nothing returns boolean
    return GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false
endfunction

// 59943 ~ 59953
function Func2738 takes nothing returns nothing
    local location loc_location01=GetUnitLoc(GetTriggerUnit())
    local group loc_group01=Func0030()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local boolexpr loc_boolexpr01=Condition(function Func2737)
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,1225,loc_boolexpr01)
    call ForGroup(loc_group01,function Func2736)
    call RemoveLocation(loc_location01)
    call Func0029(loc_group01)
endfunction

// 59955 ~ 59960
function Func2739 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2735))
    call TriggerAddAction(loc_trigger01,function Func2738)
endfunction
