
// 49468 ~ 49495
function Func2096 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local player loc_player01=(LoadPlayerHandle(hashtable001,(loc_integer01),(54)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(47)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(48)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local unit loc_unit02
    if GetTriggerEvalCount(loc_trigger01)>1 then
        call SetUnitAnimation(loc_unit01,"stand")
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call SetUnitAnimation(loc_unit01,"spell")
        set loc_unit02=CreateUnit(loc_player01,'e00E',loc_real01,loc_real02,0)
        call Func0193(loc_unit02,'A0OC')
        call SetUnitAbilityLevel(loc_unit02,'A0OC',loc_integer02)
        call IssuePointOrder(loc_unit02,"breathoffrost",loc_real03,loc_real04)
    endif
    set loc_trigger01=null
    set loc_player01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 49497 ~ 49510
function Func2097 takes unit loc_unit01,player loc_player01,integer loc_integer01,location loc_location01,real loc_real01,real loc_real02 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call SavePlayerHandle(hashtable001,(loc_integer02),(54),(loc_player01))
    call SaveReal(hashtable001,(loc_integer02),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(7),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(47),((GetLocationX(loc_location01))*1.0))
    call SaveReal(hashtable001,(loc_integer02),(48),((GetLocationY(loc_location01))*1.0))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(14),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.3,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2096))
    set loc_trigger01=null
endfunction

// 49512 ~ 49538
function Func2098 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0O7')
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local location loc_location01
    local unit loc_unit02
    local group loc_group01=Func0030()
    if GetSpellTargetUnit()==null then
        set loc_location01=GetSpellTargetLoc()
    else
        set loc_location01=GetUnitLoc(GetSpellTargetUnit())
    endif
    call Func2094(bj_RADTODEG*Atan2(GetLocationY(loc_location01)-loc_real02,GetLocationX(loc_location01)-loc_real01),loc_real01,loc_real02)
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,2000,Condition(function Func2093))
    call ForGroup(loc_group01,function Func2095)
    call Func0029(loc_group01)
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    call Func0193(loc_unit02,'A0OB')
    call SetUnitAbilityLevel(loc_unit02,'A0OB',loc_integer01)
    call IssuePointOrder(loc_unit02,"breathoffire",GetLocationX(loc_location01),GetLocationY(loc_location01))
    call Func2097(loc_unit01,GetOwningPlayer(loc_unit01),loc_integer01,loc_location01,loc_real01+50*Cos(Atan2(GetLocationY(loc_location01)-loc_real02,GetLocationX(loc_location01)-loc_real01)),loc_real02+50*Sin(Atan2(GetLocationY(loc_location01)-loc_real02,GetLocationX(loc_location01)-loc_real01)))
    call RemoveLocation(loc_location01)
    set loc_unit01=null
    set loc_location01=null
    set loc_group01=null
endfunction

// 49540 ~ 49545
function Func2099 takes nothing returns boolean
    if GetSpellAbilityId()=='A0O7' then
        call Func2098()
    endif
    return false
endfunction

// 49547 ~ 49555
function Func2100 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2099))
    call Func0132('A0OB')
    call Func0132('A0OC')
    call Func0132('A2ZE')
    set loc_trigger01=null
endfunction
