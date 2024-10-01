
// 47372 ~ 47374
function Func1956 takes nothing returns boolean
    return GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(GetTriggerUnit()))==true and Func0194(GetFilterUnit())==false
endfunction

// 47376 ~ 47410
function Func1957 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local group loc_group01=Func0030()
    local integer loc_integer01=GetPlayerId(GetOwningPlayer(loc_unit01))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0DH')
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'o00Z',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    call UnitApplyTimedLife(loc_unit02,'BTLF',0.5)
    if loc_integer02==0 then
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1OB')
    endif
    if loc_integer02==1 then
        set real283=160
    elseif loc_integer02==2 then
        set real283=210
    elseif loc_integer02==2 then
        set real283=270
    endif
    set units021[loc_integer01]=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    set units022[loc_integer01]=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    call SetUnitScale(units021[loc_integer01],0.25,0.25,0.25)
    call Func0193(units021[loc_integer01],'A0DM')
    call Func0193(units022[loc_integer01],'A1H0')
    call SetUnitAbilityLevel(units021[loc_integer01],'A0DM',loc_integer02)
    call SetUnitAbilityLevel(units022[loc_integer01],'A1H0',loc_integer02)
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,575+25,Condition(function Func1956))
    call ForGroup(loc_group01,function Func1954)
    if GetUnitAbilityLevel(loc_unit01,'A1OB')>0 then
        call ForGroup(loc_group01,function Func1955)
    endif
    call Func0029(loc_group01)
    set loc_unit01=null
    set loc_group01=null
endfunction

// 47412 ~ 47417
function Func1958 takes nothing returns boolean
    if GetSpellAbilityId()=='A0DH' or GetSpellAbilityId()=='A1OB' then
        call Func1957()
    endif
    return false
endfunction

// 47419 ~ 47425
function Func1959 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1958))
    set loc_trigger01=null
    call Func0132('A0DM')
endfunction
