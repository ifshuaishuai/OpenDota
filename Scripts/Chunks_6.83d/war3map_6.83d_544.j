
// 63975 ~ 63977
function Func2967 takes unit loc_unit01,unit loc_unit02 returns nothing
    call Func0171("SPLK",GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetUnitX(loc_unit02),GetUnitY(loc_unit02),0.1,0.6,0.44,.9,0.6)
endfunction

// 63979 ~ 63986
function Func2968 takes nothing returns nothing
    local integer loc_integer01=14+4*GetUnitAbilityLevel(unit335,'A0R5')
    call SetUnitState(unit336,UNIT_STATE_LIFE,GetUnitState(unit336,UNIT_STATE_LIFE)+loc_integer01)
    if GetUnitTypeId(GetEnumUnit())!='n0F5' then
        call Func0236(GetEnumUnit(),loc_integer01)
    endif
    call Func2967(GetEnumUnit(),unit336)
endfunction

// 63988 ~ 63995
function Func2969 takes nothing returns nothing
    local integer loc_integer01=14+4*GetUnitAbilityLevel(unit335,'A0R5')
    call Func0115(unit335,unit336,1,loc_integer01)
    if GetUnitTypeId(GetEnumUnit())!='n0F5' then
        call Func0236(GetEnumUnit(),loc_integer01)
    endif
    call Func2967(GetEnumUnit(),unit336)
endfunction

// 63997 ~ 64021
function Func2970 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0R5')*2+8
    set group020=Func0030()
    set integer507=0
    set integer508=loc_integer01
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),1300+25,Condition(function Func0360))
    call GroupRemoveUnit(loc_group01,loc_unit01)
    call GroupRemoveUnit(loc_group01,GetSpellTargetUnit())
    call ForGroup(loc_group01,function Func2966)
    call Func0029(loc_group01)
    set loc_group01=group020
    set unit336=GetSpellTargetUnit()
    set unit335=loc_unit01
    if IsUnitAlly(unit336,GetOwningPlayer(loc_unit01))then
        call ForGroup(loc_group01,function Func2968)
    else
        call ForGroup(loc_group01,function Func2969)
    endif
    call Func0029(loc_group01)
    set loc_unit01=null
    set loc_group01=null
endfunction

// 64023 ~ 64028
function Func2971 takes nothing returns boolean
    if GetSpellAbilityId()=='A0R5' and(IsUnitType(GetSpellTargetUnit(),UNIT_TYPE_STRUCTURE)==false or GetOwningPlayer(GetSpellTargetUnit())==GetOwningPlayer(GetTriggerUnit()))then
        call Func2970()
    endif
    return false
endfunction

// 64030 ~ 64035
function Func2972 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2971))
    set loc_trigger01=null
endfunction
