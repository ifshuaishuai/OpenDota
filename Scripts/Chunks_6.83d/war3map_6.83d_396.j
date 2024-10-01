
// 54081 ~ 54085
function Func2381 takes nothing returns boolean
    call Func0035(GetTriggeringTrigger())
    call VolumeGroupReset()
    return false
endfunction

// 54087 ~ 54110
function Func2382 takes nothing returns nothing
    local location loc_location01=GetUnitLoc(GetTriggerUnit())
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetUnitAbilityLevel(GetTriggerUnit(),'A0L3')
    if loc_integer01==0 then
        set loc_integer01=GetUnitAbilityLevel(GetTriggerUnit(),'A2QC')
        call Func2376()
    endif
    call TriggerRegisterTimerEvent(loc_trigger01,loc_integer01+2,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2381))
    call CreateNUnitsAtLoc(1,'e00E',GetOwningPlayer(GetTriggerUnit()),loc_location01,bj_UNIT_FACING)
    call ShowUnitHide(bj_lastCreatedUnit)
    call UnitApplyTimedLifeBJ(5.00,'BTLF',bj_lastCreatedUnit)
    call UnitAddAbility(bj_lastCreatedUnit,'A0L2')
    call SetUnitAbilityLevelSwapped('A0L2',bj_lastCreatedUnit,loc_integer01)
    call IssuePointOrderLoc(bj_lastCreatedUnit,"silence",loc_location01)
    call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_UNITSOUNDS,.0)
    call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_COMBAT,.0)
    call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_SPELLS,.0)
    call VolumeGroupSetVolume(SOUND_VOLUMEGROUP_MUSIC,.0)
    call RemoveLocation(loc_location01)
    set loc_trigger01=null
    set loc_location01=null
endfunction

// 54112 ~ 54117
function Func2383 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2380))
    call TriggerAddAction(loc_trigger01,function Func2382)
endfunction
