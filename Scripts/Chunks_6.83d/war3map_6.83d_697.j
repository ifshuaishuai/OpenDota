
// 74967 ~ 74981
function Func3587 takes nothing returns nothing
    local real loc_real01=Func0147(GetTriggerUnit(),GetEnumUnit())-25
    local real loc_real02=0
    if loc_real01<300 then
        set loc_real02=1
    elseif loc_real01<1000 then
        set loc_real02=(1000-loc_real01)/700
    endif
    if loc_real02>0 then
        set booleans022[GetPlayerId(GetOwningPlayer(GetEnumUnit()))]=true
        call Func0115(GetTriggerUnit(),GetEnumUnit(),3,real360*loc_real02)
        set booleans022[GetPlayerId(GetOwningPlayer(GetEnumUnit()))]=false
        call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\DeathandDecay\\DeathandDecayDamage.mdl",GetEnumUnit(),"chest"))
    endif
endfunction

// 74983 ~ 74999
function Func3588 takes nothing returns boolean
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetEventDamage()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0NA')
    local group loc_group01
    if Func0101(loc_real01)and GetUnitAbilityLevel(loc_unit01,'BNdo')==0 then
        set loc_group01=Func0030()
        set real360=loc_real01*(0.06+0.04*loc_integer01)
        call Func0145(loc_unit01,real360)
        call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),1025,Condition(function Func0298))
        call ForGroup(loc_group01,function Func3587)
        call Func0029(loc_group01)
    endif
    set loc_unit01=null
    set loc_group01=null
    return false
endfunction

// 75001 ~ 75008
function Func3589 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local unit loc_unit01=GetTriggerUnit()
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3588))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 75010 ~ 75015
function Func3590 takes nothing returns boolean
    if GetLearnedSkill()=='A0NA' and GetUnitAbilityLevel(GetTriggerUnit(),'A0NA')==1 and IsUnitIllusion(GetTriggerUnit())==false then
        call Func3589()
    endif
    return false
endfunction

// 75017 ~ 75022
function Func3591 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3590))
    set loc_trigger01=null
endfunction
