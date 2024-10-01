
// 76587 ~ 76589
function Func3693 takes nothing returns boolean
    return IsUnitInGroup(GetFilterUnit(),group001)==false and IsUnitAlly(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and Func0194(GetFilterUnit())==false and GetFilterUnit()!=unit369
endfunction

// 76591 ~ 76619
function Func3694 takes group loc_group01,unit loc_unit01,unit loc_unit02,unit loc_unit03 returns unit
    local group loc_group02=Func0030()
    local boolexpr loc_boolexpr01=Condition(function Func3693)
    local unit loc_unit04=null
    local unit loc_unit05
    set group001=loc_group01
    set unit002=loc_unit02
    call GroupEnumUnitsInRange(loc_group02,GetUnitX(loc_unit01),GetUnitY(loc_unit01),500,loc_boolexpr01)
    set loc_unit05=FirstOfGroup(loc_group02)
    set loc_unit04=loc_unit05
    loop
        exitwhen loc_unit05==null
        if GetUnitState(loc_unit05,UNIT_STATE_LIFE)!=GetUnitState(loc_unit05,UNIT_STATE_MAX_LIFE)then
            if loc_unit05!=loc_unit02 and IsUnitType(loc_unit05,UNIT_TYPE_HERO)==true and IsUnitType(loc_unit04,UNIT_TYPE_HERO)==false then
                set loc_unit04=loc_unit05
            elseif loc_unit05!=loc_unit02 and GetUnitState(loc_unit05,UNIT_STATE_LIFE)<GetUnitState(loc_unit04,UNIT_STATE_LIFE)and IsUnitType(loc_unit05,UNIT_TYPE_HERO)==true and IsUnitType(loc_unit04,UNIT_TYPE_HERO)==true then
                set loc_unit04=loc_unit05
            elseif loc_unit05!=loc_unit02 and IsUnitType(loc_unit04,UNIT_TYPE_HERO)==false and GetUnitState(loc_unit05,UNIT_STATE_LIFE)<GetUnitState(loc_unit04,UNIT_STATE_LIFE)then
                set loc_unit04=loc_unit05
            elseif loc_unit05==loc_unit02 then
                set loc_unit04=loc_unit05
            endif
        endif
        call GroupRemoveUnit(loc_group02,loc_unit05)
        set loc_unit05=FirstOfGroup(loc_group02)
    endloop
    call Func0029(loc_group02)
    return loc_unit04
endfunction

// 76621 ~ 76678
function Func3695 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local string loc_string01="Abilities\\Spells\\Undead\\ReplenishMana\\ReplenishManaCaster.mdl"
    local string loc_string02="origin"
    local unit array loc_units01
    local integer loc_integer01
    local integer loc_integer02=1
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,('A0OR'))
    local real loc_real01=60+loc_integer03*20
    local group loc_group01=Func0030()
    local integer loc_integer04
    local boolean loc_boolean01=false
    set unit369=loc_unit01
    if loc_integer03==1 then
        set loc_integer04=3
    elseif loc_integer03==2 then
        set loc_integer04=4
    elseif loc_integer03==3 then
        set loc_integer04=5
    elseif loc_integer03==4 then
        set loc_integer04=6
    endif
    call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+loc_real01)
    call Func3692(loc_unit01,loc_unit01,loc_real01)
    call GroupAddUnit(loc_group01,loc_unit01)
    call Func0161(loc_string01,loc_unit01,loc_string02,2)
    if loc_unit02==loc_unit01 then
        set loc_units01[loc_integer02]=Func3694(loc_group01,loc_unit01,loc_unit01,loc_unit02)
    else
        set loc_units01[loc_integer02]=loc_unit02
    endif
    if loc_units01[loc_integer02]==null then
        call Func0029(loc_group01)
        return
    endif
    call SetUnitState(loc_units01[loc_integer02],UNIT_STATE_LIFE,GetUnitState(loc_units01[loc_integer02],UNIT_STATE_LIFE)+loc_real01)
    call Func3692(loc_unit01,loc_units01[loc_integer02],loc_real01)
    call GroupAddUnit(loc_group01,loc_units01[loc_integer02])
    call Func0161(loc_string01,loc_units01[loc_integer02],loc_string02,2)
    call Func0171("SPLK",GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(loc_units01[loc_integer02]),GetUnitY(loc_units01[loc_integer02]),0.3,0.5,0.9,1,0.7)
    set loc_integer02=2
    loop
        exitwhen loc_integer02>loc_integer04 or loc_boolean01
        set loc_units01[loc_integer02]=Func3694(loc_group01,loc_units01[loc_integer02-1],loc_unit01,loc_unit02)
        if loc_units01[loc_integer02]==null then
            set loc_boolean01=true
        else
            call GroupAddUnit(loc_group01,loc_units01[loc_integer02])
            call Func0161(loc_string01,loc_units01[loc_integer02],loc_string02,2)
            call SetUnitState(loc_units01[loc_integer02],UNIT_STATE_LIFE,GetUnitState(loc_units01[loc_integer02],UNIT_STATE_LIFE)+loc_real01)
            call Func3692(loc_unit01,loc_units01[loc_integer02],loc_real01)
            call Func0171("SPLK",GetUnitX(loc_units01[loc_integer02-1]),GetUnitY(loc_units01[loc_integer02-1]),GetUnitX(loc_units01[loc_integer02]),GetUnitY(loc_units01[loc_integer02]),0.3,0.5,0.9,1,0.7)
            set loc_integer02=loc_integer02+1
        endif
    endloop
    call Func0029(loc_group01)
endfunction

// 76680 ~ 76685
function Func3696 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3689))
    call TriggerAddAction(loc_trigger01,function Func3695)
endfunction
