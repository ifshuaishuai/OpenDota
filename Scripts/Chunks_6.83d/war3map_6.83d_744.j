
// 78603 ~ 78605
function Func3796 takes nothing returns boolean
    return IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and GetUnitState(GetFilterUnit(),UNIT_STATE_LIFE)>1
endfunction

// 78607 ~ 78645
function Func3797 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local group loc_group01=Func0030()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,('A0J5'))
    local boolexpr loc_boolexpr01=Condition(function Func3796)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local integer loc_integer03=2
    local group loc_group02=Func0030()
    local unit array loc_units01
    local string loc_string01="Abilities\\Spells\\Undead\\Curse\\CurseTarget.mdl"
    call SaveUnitHandle(hashtable001,(loc_integer02),(14),(loc_unit01))
    call Func3793(loc_unit01,loc_unit02)
    call Func0161(loc_string01,loc_unit02,"overhead",25)
    set loc_units01[1]=loc_unit02
    call SaveUnitHandle(hashtable001,(loc_integer02),(246),(loc_units01[1]))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_units01[1],EVENT_UNIT_DAMAGED)
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02),700+25,loc_boolexpr01)
    call GroupRemoveUnit(loc_group01,loc_unit02)
    call GroupAddUnit(loc_group02,loc_unit02)
    call SaveGroupHandle(hashtable001,(loc_integer02),(220),(loc_group02))
    loop
        exitwhen loc_integer03>(2+loc_integer01)or FirstOfGroup(loc_group01)==null
        set loc_units01[loc_integer03]=Func0253(loc_group01,GetUnitX(loc_unit02),GetUnitY(loc_unit02))
        call Func3793(loc_units01[loc_integer03-1],loc_units01[loc_integer03])
        call TriggerRegisterUnitEvent(loc_trigger01,loc_units01[loc_integer03],EVENT_UNIT_DAMAGED)
        call GroupAddUnit(loc_group02,loc_units01[loc_integer03])
        call GroupRemoveUnit(loc_group01,loc_units01[loc_integer03])
        call Func0161(loc_string01,loc_units01[loc_integer03],"overhead",25)
        set loc_integer03=loc_integer03+1
    endloop
    call SaveInteger(hashtable001,(loc_integer02),(245),(loc_integer03-1))
    set integer011=GetUnitAbilityLevel(loc_unit01,('A0J5'))
    call ForGroup(loc_group02,function Func3791)
    call TriggerRegisterTimerEvent(loc_trigger01,25,false)
    call TriggerAddAction(loc_trigger01,function Func3795)
    call Func0029(loc_group01)
endfunction

// 78647 ~ 78653
function Func3798 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3790))
    call TriggerAddAction(loc_trigger01,function Func3797)
    call Func0132(('A0J9'))
endfunction
