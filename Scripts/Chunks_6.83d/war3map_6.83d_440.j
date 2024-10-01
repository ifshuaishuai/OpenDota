
// 57154 ~ 57164
function Func2562 takes nothing returns nothing
    local unit loc_unit01=unit124
    local unit loc_unit02=unit125
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A05E')
    if loc_integer01==0 then
        set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2WA')
    endif
    call Func0115(loc_unit01,loc_unit02,1,50+75*loc_integer01)
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 57166 ~ 57189
function Func2563 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=null
    local group loc_group01=Func0030()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local integer loc_integer01=2
    if GetUnitAbilityLevel(loc_unit01,'A05E')==0 then
        set loc_integer01=4
    endif
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,2500+25,Condition(function Func2561))
    loop
        exitwhen FirstOfGroup(loc_group01)==null or loc_integer01==0
        set loc_unit02=Func0253(loc_group01,loc_real01,loc_real02)
        set loc_integer01=loc_integer01-1
        call GroupRemoveUnit(loc_group01,loc_unit02)
        call Func0196(loc_unit01,loc_unit02,'h0ET',"Func2562",1000,false)
    endloop
    call Func0029(loc_group01)
    set loc_group01=null
    set loc_unit02=null
    set loc_unit01=null
endfunction

// 57191 ~ 57196
function Func2564 takes nothing returns boolean
    if GetSpellAbilityId()=='A05E' or GetSpellAbilityId()=='A2WA' then
        call Func2563()
    endif
    return false
endfunction

// 57198 ~ 57203
function Func2565 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2564))
    set loc_trigger01=null
endfunction
