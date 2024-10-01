
// 57671 ~ 57676
function Func2592 takes nothing returns boolean
    if((LoadInteger(hashtable001,(GetHandleId((GetFilterUnit()))),((4268))))==1)and IsUnitEnemy(GetFilterUnit(),GetOwningPlayer(unit314))==true then
        call Func0115(unit314,GetFilterUnit(),1,real319)
    endif
    return false
endfunction

// 57678 ~ 57710
function Func2593 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0LL')
    local group loc_group01=Func0030()
    call Func0193(loc_unit02,'A10J')
    call SetUnitAbilityLevel(loc_unit02,'A10J',loc_integer02)
    set unit314=loc_unit01
    if loc_integer02==1 then
        set real319=25
    elseif loc_integer02==2 then
        set real319=45
    elseif loc_integer02==3 then
        set real319=65
    elseif loc_integer02==4 then
        set real319=75
    endif
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,275+24,Condition(function Func2592))
    call Func0029(loc_group01)
    if GetTriggerEvalCount(loc_trigger01)>6 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
    return false
endfunction

// 57712 ~ 57733
function Func2594 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local location loc_location01=GetSpellTargetLoc()
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0LL')
    call Func0193(loc_unit02,'A10M')
    call SetUnitAbilityLevel(loc_unit02,'A10M',loc_integer02)
    call IssuePointOrder(loc_unit02,"clusterrockets",GetLocationX(loc_location01),GetLocationY(loc_location01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.25,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2593))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetLocationX(loc_location01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetLocationY(loc_location01))*1.0))
    call TriggerEvaluate(loc_trigger01)
    call RemoveLocation(loc_location01)
    set loc_unit01=null
    set loc_location01=null
    set loc_trigger01=null
    set loc_unit02=null
endfunction

// 57735 ~ 57740
function Func2595 takes nothing returns boolean
    if GetSpellAbilityId()=='A0LL' then
        call Func2594()
    endif
    return false
endfunction

// 57742 ~ 57747
function Func2596 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2595))
    set loc_trigger01=null
endfunction
