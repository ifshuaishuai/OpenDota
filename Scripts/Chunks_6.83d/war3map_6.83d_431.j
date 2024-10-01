
// 56623 ~ 56625
function Func2531 takes nothing returns boolean
    return GetOwningPlayer(GetFilterUnit())==player022 and GetUnitTypeId(GetFilterUnit())==integer489 and Func0194(GetFilterUnit())==false
endfunction

// 56627 ~ 56635
function Func2532 takes player loc_player01,integer loc_integer01,real loc_real01,real loc_real02 returns nothing
    local group loc_group01=Func0030()
    set player022=loc_player01
    set integer489=loc_integer01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,716,Condition(function Func2531))
    call ForGroup(loc_group01,function Func2526)
    call Func0029(loc_group01)
    set loc_group01=null
endfunction

// 56637 ~ 56711
function Func2533 takes nothing returns nothing
    local real loc_real01=GetUnitX(GetTriggerUnit())
    local real loc_real02=GetUnitY(GetTriggerUnit())
    local group loc_group01
    call DisableTrigger(trigger067)
    set boolean063=true
    if(GetSpellAbilityId()=='A0AM')then
        call Func0163("Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl",loc_real01,loc_real02,5)
        call Func0186(GetOwningPlayer(GetTriggerUnit()),3,loc_real01,loc_real02,500)
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,450,Condition(function Func2525))
        call ForGroup(loc_group01,function Func2527)
        call RemoveUnit(GetTriggerUnit())
        call Func0029(loc_group01)
    endif
    if(GetSpellAbilityId()=='A0A3')then
        call Func0163("Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl",loc_real01,loc_real02,5)
        call Func0186(GetOwningPlayer(GetTriggerUnit()),3,loc_real01,loc_real02,500)
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,450,Condition(function Func2525))
        call ForGroup(loc_group01,function Func2528)
        call RemoveUnit(GetTriggerUnit())
        call Func0029(loc_group01)
    endif
    if(GetSpellAbilityId()=='A0A4')then
        call Func0163("Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl",loc_real01,loc_real02,5)
        call Func0186(GetOwningPlayer(GetTriggerUnit()),3,loc_real01,loc_real02,500)
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,450,Condition(function Func2525))
        call ForGroup(loc_group01,function Func2529)
        call RemoveUnit(GetTriggerUnit())
        call Func0029(loc_group01)
    endif
    if(GetSpellAbilityId()=='A1FZ')then
        call Func0163("Abilities\\Spells\\Human\\FlameStrike\\FlameStrike1.mdl",loc_real01,loc_real02,5)
        call Func0186(GetOwningPlayer(GetTriggerUnit()),3,loc_real01,loc_real02,500)
        set loc_group01=Func0030()
        call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,450,Condition(function Func2525))
        call ForGroup(loc_group01,function Func2530)
        call RemoveUnit(GetTriggerUnit())
        call Func0029(loc_group01)
    endif
    if(GetSpellAbilityId()=='A02T')then
        set loc_group01=Func0030()
        set bj_groupEnumTypeId='o018'
        call GroupEnumUnitsOfPlayer(loc_group01,GetOwningPlayer(GetTriggerUnit()),filterGetUnitsOfPlayerAndTypeId)
        call ForGroup(loc_group01,function Func2526)
        call Func0029(loc_group01)
        set loc_group01=Func0030()
        set bj_groupEnumTypeId='o002'
        call GroupEnumUnitsOfPlayer(loc_group01,GetOwningPlayer(GetTriggerUnit()),filterGetUnitsOfPlayerAndTypeId)
        call ForGroup(loc_group01,function Func2526)
        call Func0029(loc_group01)
        set loc_group01=Func0030()
        set bj_groupEnumTypeId='o00B'
        call GroupEnumUnitsOfPlayer(loc_group01,GetOwningPlayer(GetTriggerUnit()),filterGetUnitsOfPlayerAndTypeId)
        call ForGroup(loc_group01,function Func2526)
        call Func0029(loc_group01)
        set loc_group01=Func0030()
        set bj_groupEnumTypeId='o01B'
        call GroupEnumUnitsOfPlayer(loc_group01,GetOwningPlayer(GetTriggerUnit()),filterGetUnitsOfPlayerAndTypeId)
        call ForGroup(loc_group01,function Func2526)
        call Func0029(loc_group01)
    endif
    if(GetSpellAbilityId()=='A1WF')then
        set loc_real01=GetSpellTargetX()
        set loc_real02=GetSpellTargetY()
        call Func2532(GetOwningPlayer(GetTriggerUnit()),'o018',loc_real01,loc_real02)
        call Func2532(GetOwningPlayer(GetTriggerUnit()),'o002',loc_real01,loc_real02)
        call Func2532(GetOwningPlayer(GetTriggerUnit()),'o00B',loc_real01,loc_real02)
        call Func2532(GetOwningPlayer(GetTriggerUnit()),'o01B',loc_real01,loc_real02)
    endif
    set boolean063=false
    call EnableTrigger(trigger067)
endfunction
