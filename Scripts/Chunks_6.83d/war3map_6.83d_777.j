
// 81063 ~ 81071
function Func3928 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=unit124
    local unit loc_unit02=unit125
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(20)))
    call Func0115(loc_unit01,loc_unit02,1,loc_real01)
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 81073 ~ 81093
function Func3929 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetEnumUnit()
    local trigger loc_trigger01=Func0196(loc_unit01,loc_unit02,'h0BP',"Func3928",700,false)
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A04A')
    local real loc_real01
    if loc_integer02==1 then
        set loc_real01=85
    elseif loc_integer02==2 then
        set loc_real01=165
    elseif loc_integer02==3 then
        set loc_real01=225
    elseif loc_integer02==4 then
        set loc_real01=300
    endif
    call SaveReal(hashtable001,(loc_integer01),(20),((loc_real01)*1.0))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 81095 ~ 81104
function Func3930 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A04A')
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),500,Condition(function Func0298))
    call ForGroup(loc_group01,function Func3929)
    call Func0029(loc_group01)
    call PlaySoundOnUnitBJ(sound055,100,loc_unit01)
    set loc_unit01=null
endfunction

// 81106 ~ 81111
function Func3931 takes nothing returns boolean
    if GetSpellAbilityId()=='A04A' then
        call Func3930()
    endif
    return false
endfunction

// 81113 ~ 81118
function Func3932 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3931))
    set loc_trigger01=null
endfunction
