
// 70706 ~ 70719
function Func3334 takes nothing returns nothing
    local integer loc_integer01=GetHandleId(GetTriggeringTrigger())
    local unit loc_unit01=unit124
    local unit loc_unit02=unit125
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(20)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(21)))
    if IsUnitAlly(loc_unit02,GetOwningPlayer(loc_unit01))then
        call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_LIFE)+loc_real02)
    else
        call Func0115(loc_unit01,loc_unit02,1,loc_real01)
    endif
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 70721 ~ 70727
function Func3335 takes nothing returns nothing
    local trigger loc_trigger01=Func0196(unit124,GetEnumUnit(),'h00W',"Func3334",400,false)
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveReal(hashtable001,(loc_integer01),(20),((real009)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(21),((real010)*1.0))
    set loc_trigger01=null
endfunction

// 70729 ~ 70731
function Func3336 takes nothing returns nothing
    call Func3335()
endfunction

// 70733 ~ 70767
function Func3337 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,integer519)
    local real loc_real01
    local real loc_real02
    local real loc_real03
    if loc_integer01==1 then
        set loc_real02=75
        set loc_real03=70
        set loc_real01=500
    elseif loc_integer01==2 then
        set loc_real02=125
        set loc_real03=90
        set loc_real01=500
    elseif loc_integer01==3 then
        set loc_real02=200
        set loc_real03=110
        set loc_real01=500
    elseif loc_integer01==4 then
        set loc_real02=275
        set loc_real03=130
        set loc_real01=500
    endif
    set unit124=loc_unit01
    set real009=loc_real02
    set real010=loc_real03
    call GroupEnumUnitsInRange(loc_group01,GetUnitX(loc_unit01),GetUnitY(loc_unit01),loc_real01,Condition(function Func0348))
    call GroupRemoveUnit(loc_group01,loc_unit01)
    call ForGroup(loc_group01,function Func3336)
    call Func0029(loc_group01)
    call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+loc_real03)
    set loc_unit01=null
    set loc_group01=null
endfunction

// 70769 ~ 70774
function Func3338 takes nothing returns boolean
    if GetSpellAbilityId()==integer519 then
        call Func3337()
    endif
    return false
endfunction

// 70776 ~ 70781
function Func3339 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3338))
    set loc_trigger01=null
endfunction
