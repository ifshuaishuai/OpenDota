
// 90292 ~ 90296
function Func4346 takes nothing returns nothing
    if Func0097(GetEnumDestructable())and IsDestructableDeadBJ(GetEnumDestructable())==false then
        set integer552=integer552+1
    endif
endfunction

// 90298 ~ 90351
function Func4347 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(13)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(12)))
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(6)))+loc_integer03*50*Cos(loc_real01*bj_DEGTORAD)
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(7)))+loc_integer03*50*Sin(loc_real01*bj_DEGTORAD)
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(15)))
    local unit loc_unit02
    local trigger loc_trigger02=(LoadTriggerHandle(hashtable001,(loc_integer01),(11)))
    local integer loc_integer04=GetHandleId(loc_trigger02)
    local integer loc_integer05='u01Q'
    local real loc_real04=250
    local rect loc_rect01
    local real loc_real05=90
    set loc_rect01=Rect(loc_real02-loc_real05,loc_real03-loc_real05,loc_real02+loc_real05,loc_real03+loc_real05)
    set integer552=0
    call EnumDestructablesInRect(loc_rect01,Condition(function Func0011),function Func4346)
    if integer552>0 or loc_integer03==loc_integer02 or loc_integer03==(loc_integer02-1)or loc_integer03==(loc_integer02-2)then
        set loc_integer05='u01P'
    endif
    set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),loc_integer05,loc_real02,loc_real03,loc_real01)
    call SaveUnitHandle(hashtable001,(loc_integer04),(700+loc_integer03),(loc_unit02))
    if integer552>0 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger02,0.5/loc_integer02,true)
        call TriggerAddCondition(loc_trigger02,Condition(function Func4345))
        call SaveInteger(hashtable001,(loc_integer04),(18),(loc_integer03))
        call SaveBoolean(hashtable001,(loc_integer04),(727),(true))
        call SaveUnitHandle(hashtable001,(loc_integer04),(14),(loc_unit01))
        call SaveGroupHandle(hashtable001,(loc_integer04),(16),(Func0030()))
        call SaveReal(hashtable001,(loc_integer04),(6),((loc_real02)*1.0))
        call SaveReal(hashtable001,(loc_integer04),(7),((loc_real03)*1.0))
        call SaveBoolean(hashtable001,(loc_integer04),(740),(false))
    elseif loc_integer03>loc_integer02 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger02,0.5/loc_integer02,true)
        call TriggerAddCondition(loc_trigger02,Condition(function Func4345))
        call SaveInteger(hashtable001,(loc_integer04),(18),(loc_integer03))
        call SaveBoolean(hashtable001,(loc_integer04),(727),(false))
        call SaveUnitHandle(hashtable001,(loc_integer04),(14),(loc_unit01))
        call SaveGroupHandle(hashtable001,(loc_integer04),(16),(Func0030()))
        call SaveBoolean(hashtable001,(loc_integer04),(740),(false))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger02=null
    return false
endfunction

// 90353 ~ 90378
function Func4348 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=Func0169(GetUnitX(loc_unit01),GetUnitY(loc_unit01),GetLocationX(loc_location01),GetLocationY(loc_location01))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2E3')
    local integer loc_integer03
    local integer loc_integer04
    local trigger loc_trigger02=CreateTrigger()
    set loc_integer03=600+200*loc_integer02
    set loc_integer04=loc_integer03/50
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real01)*1.0))
    call SaveInteger(hashtable001,(loc_integer01),(12),(loc_integer04))
    call SaveTriggerHandle(hashtable001,(loc_integer01),(11),(loc_trigger02))
    call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit01))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit01))*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.5/loc_integer04,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4347))
    call RemoveLocation(loc_location01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_location01=null
endfunction

// 90380 ~ 90385
function Func4349 takes nothing returns boolean
    if GetSpellAbilityId()=='A2E3' then
        call Func4348()
    endif
    return false
endfunction

// 90387 ~ 90392
function Func4350 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4349))
    set loc_trigger01=null
endfunction
