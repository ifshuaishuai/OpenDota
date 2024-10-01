
// 56713 ~ 56746
function Func2534 takes nothing returns nothing
    local integer loc_integer01=GetUnitTypeId(GetTriggerUnit())
    local real loc_real01=GetUnitX(GetTriggerUnit())
    local real loc_real02=GetUnitY(GetTriggerUnit())
    local group loc_group01
    if loc_integer01=='o018' then
        call Func0163("Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl",loc_real01,loc_real02,5)
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,450,Condition(function Func2525))
        call ForGroup(loc_group01,function Func2527)
        call Func0029(loc_group01)
    endif
    if loc_integer01=='o002' then
        call Func0163("Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl",loc_real01,loc_real02,5)
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,450,Condition(function Func2525))
        call ForGroup(loc_group01,function Func2528)
        call Func0029(loc_group01)
    endif
    if loc_integer01=='o00B' then
        call Func0163("Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl",loc_real01,loc_real02,5)
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,450,Condition(function Func2525))
        call ForGroup(loc_group01,function Func2529)
        call Func0029(loc_group01)
    endif
    if loc_integer01=='o01B' then
        call Func0163("Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl",loc_real01,loc_real02,5)
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,450,Condition(function Func2525))
        call ForGroup(loc_group01,function Func2530)
        call Func0029(loc_group01)
    endif
endfunction

// 56748 ~ 56754
function Func2535 takes nothing returns boolean
    local integer loc_integer01=GetUnitTypeId(GetTriggerUnit())
    if loc_integer01=='o018' or loc_integer01=='o002' or loc_integer01=='o00B' or loc_integer01=='o01B' then
        call Func2534()
    endif
    return false
endfunction

// 56756 ~ 56765
function Func2536 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddAction(loc_trigger01,function Func2533)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2524))
    call Func0249("Units\\Creeps\\GoblinSapper\\GoblinSapperYesAttack1.wav")
    set trigger067=CreateTrigger()
    call Func0176(trigger067,EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(trigger067,Condition(function Func2535))
endfunction
