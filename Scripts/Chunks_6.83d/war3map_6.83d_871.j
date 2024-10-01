
// 90087 ~ 90102
function Func4334 takes unit loc_unit01,group loc_group01 returns unit
    local unit loc_unit02=null
    local real loc_real01=99999
    local unit loc_unit03=FirstOfGroup(loc_group01)
    call GroupRemoveUnit(loc_group01,loc_unit03)
    loop
        exitwhen loc_unit03==null
        if Func0147(loc_unit01,loc_unit03)<loc_real01 then
            set loc_real01=Func0147(loc_unit01,loc_unit03)
            set loc_unit02=loc_unit03
        endif
        set loc_unit03=FirstOfGroup(loc_group01)
        call GroupRemoveUnit(loc_group01,loc_unit03)
    endloop
    return loc_unit02
endfunction

// 90104 ~ 90117
function Func4335 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=null
    local group loc_group01=Func0030()
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),1600+25,Condition(function Func0341))
    set loc_unit02=Func4334(loc_unit01,loc_group01)
    call Func0029(loc_group01)
    if loc_unit02!=null then
        call Func0196(loc_unit01,loc_unit02,'h0E6',"Func4333",800,false)
    endif
    set loc_group01=null
    set loc_unit02=null
    set loc_unit01=null
endfunction

// 90119 ~ 90124
function Func4336 takes nothing returns boolean
    if GetSpellAbilityId()=='A2IT' then
        call Func4335()
    endif
    return false
endfunction

// 90126 ~ 90131
function Func4337 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4336))
    set loc_trigger01=null
endfunction
