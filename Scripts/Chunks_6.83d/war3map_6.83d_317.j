
// 49055 ~ 49080
function Func2072 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(137)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(7)))
    local integer loc_integer03=GetPlayerId(GetOwningPlayer(loc_unit01))
    local integer loc_integer04=GetTriggerEvalCount(loc_trigger01)
    local real loc_real04=loc_real02+150*loc_integer04*Cos(loc_real01)
    local real loc_real05=loc_real03+150*loc_integer04*Sin(loc_real01)
    local integer loc_integer05=6
    if GetUnitAbilityLevel(loc_unit01,'A0O5')==0 then
        set loc_integer05=11
    endif
    call IssuePointOrder(units024[loc_integer03],"flamestrike",loc_real04,loc_real05)
    if loc_integer04==(loc_integer05)then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call SetUnitAnimation(loc_unit01,"stand")
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 49082 ~ 49115
function Func2073 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local real loc_real03=Atan2(loc_real02-GetUnitY(loc_unit01),loc_real01-GetUnitX(loc_unit01))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0O5')
    local integer loc_integer03='A0OE'
    if loc_integer02==0 then
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1B1')
        set loc_integer03='A1B2'
    endif
    call RemoveLocation(loc_location01)
    call SetUnitAnimation(loc_unit01,"spell")
    set units024[GetPlayerId(GetOwningPlayer(loc_unit01))]=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    call Func0193(units024[GetPlayerId(GetOwningPlayer(loc_unit01))],loc_integer03)
    call SetUnitAbilityLevel(units024[GetPlayerId(GetOwningPlayer(loc_unit01))],loc_integer03,loc_integer02)
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(137),((loc_real03)*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    if loc_integer03=='A0OE' then
        call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    else
        call TriggerRegisterTimerEvent(loc_trigger01,0.05,true)
    endif
    call TriggerAddCondition(loc_trigger01,Condition(function Func2072))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_location01=null
endfunction

// 49117 ~ 49122
function Func2074 takes nothing returns boolean
    if GetSpellAbilityId()=='A0O5' or GetSpellAbilityId()=='A1B1' then
        call Func2073()
    endif
    return false
endfunction

// 49124 ~ 49130
function Func2075 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2074))
    call Func0132('A0OE')
    set loc_trigger01=null
endfunction
