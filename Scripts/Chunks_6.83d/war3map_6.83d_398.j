
// 54134 ~ 54143
function Func2387 takes nothing returns nothing
    if IsUnitType(GetEnumUnit(),UNIT_TYPE_STRUCTURE)==false then
        if(LoadInteger(hashtable001,(GetHandleId(GetEnumUnit())),(836)))==integer480 or(TimerGetElapsed(timer001))>(1.1+(LoadReal(hashtable001,(GetHandleId(GetEnumUnit())),(837))))then
            call SaveInteger(hashtable001,(GetHandleId(GetEnumUnit())),(836),(integer480))
            call SaveReal(hashtable001,(GetHandleId(GetEnumUnit())),(837),(((TimerGetElapsed(timer001)))*1.0))
            call Func0115(unit303,GetEnumUnit(),1,real308)
            call IssueTargetOrder(unit304,"slow",GetEnumUnit())
        endif
    endif
endfunction

// 54145 ~ 54230
function Func2388 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local group loc_group01=Func0030()
    local real loc_real03
    local real loc_real04
    local real loc_real05
    local real loc_real06
    set integer480=loc_integer01
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,450+25,Condition(function Func0320))
    set unit303=loc_unit01
    set real308=loc_integer02*12
    set unit304=loc_unit02
    call ForGroup(loc_group01,function Func2387)
    call Func0029(loc_group01)
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(309))))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(177))))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(178))))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(179))))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(180))))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(330))))
    call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(331))))
    if GetTriggerEvalCount(loc_trigger01)==10 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_real03=0
        set loc_real04=0
        set loc_real05=loc_real01+loc_real03*Cos(loc_real04*bj_DEGTORAD)
        set loc_real06=loc_real02+loc_real03*Sin(loc_real04*bj_DEGTORAD)
        call SaveEffectHandle(hashtable001,(loc_integer01),(309),(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",loc_real05,loc_real06)))
        set loc_real03=150
        set loc_real04=45
        set loc_real05=loc_real01+loc_real03*Cos(loc_real04*bj_DEGTORAD)
        set loc_real06=loc_real02+loc_real03*Sin(loc_real04*bj_DEGTORAD)
        call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",loc_real05,loc_real06)))
        set loc_real03=275
        set loc_real04=90
        set loc_real05=loc_real01+loc_real03*Cos(loc_real04*bj_DEGTORAD)
        set loc_real06=loc_real02+loc_real03*Sin(loc_real04*bj_DEGTORAD)
        call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",loc_real05,loc_real06)))
        set loc_real03=150
        set loc_real04=135
        set loc_real05=loc_real01+loc_real03*Cos(loc_real04*bj_DEGTORAD)
        set loc_real06=loc_real02+loc_real03*Sin(loc_real04*bj_DEGTORAD)
        call SaveEffectHandle(hashtable001,(loc_integer01),(177),(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",loc_real05,loc_real06)))
        set loc_real03=275
        set loc_real04=180
        set loc_real05=loc_real01+loc_real03*Cos(loc_real04*bj_DEGTORAD)
        set loc_real06=loc_real02+loc_real03*Sin(loc_real04*bj_DEGTORAD)
        call SaveEffectHandle(hashtable001,(loc_integer01),(178),(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",loc_real05,loc_real06)))
        set loc_real03=150
        set loc_real04=225
        set loc_real05=loc_real01+loc_real03*Cos(loc_real04*bj_DEGTORAD)
        set loc_real06=loc_real02+loc_real03*Sin(loc_real04*bj_DEGTORAD)
        call SaveEffectHandle(hashtable001,(loc_integer01),(179),(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",loc_real05,loc_real06)))
        set loc_real03=275
        set loc_real04=270
        set loc_real05=loc_real01+loc_real03*Cos(loc_real04*bj_DEGTORAD)
        set loc_real06=loc_real02+loc_real03*Sin(loc_real04*bj_DEGTORAD)
        call SaveEffectHandle(hashtable001,(loc_integer01),(180),(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",loc_real05,loc_real06)))
        set loc_real03=150
        set loc_real04=305
        set loc_real05=loc_real01+loc_real03*Cos(loc_real04*bj_DEGTORAD)
        set loc_real06=loc_real02+loc_real03*Sin(loc_real04*bj_DEGTORAD)
        call SaveEffectHandle(hashtable001,(loc_integer01),(330),(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",loc_real05,loc_real06)))
        set loc_real03=275
        set loc_real04=360
        set loc_real05=loc_real01+loc_real03*Cos(loc_real04*bj_DEGTORAD)
        set loc_real06=loc_real02+loc_real03*Sin(loc_real04*bj_DEGTORAD)
        call SaveEffectHandle(hashtable001,(loc_integer01),(331),(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",loc_real05,loc_real06)))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_group01=null
    return false
endfunction

// 54232 ~ 54278
function Func2389 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2ZO')
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real01,loc_real02,0)
    local real loc_real03
    local real loc_real04
    local real loc_real05
    local real loc_real06
    local integer loc_integer03
    call Func0193(loc_unit02,'A19F')
    call SetUnitAbilityLevel(loc_unit02,'A19F',loc_integer02)
    if GetTriggerEvalCount(loc_trigger01)==1 then
        set loc_integer03=1
        loop
            exitwhen loc_integer03>10
            set loc_real05=GetRandomReal(0,450)
            set loc_real06=GetRandomReal(0,360)
            set loc_real03=loc_real01+loc_real05*Cos(loc_real06*bj_DEGTORAD)
            set loc_real04=loc_real02+loc_real05*Sin(loc_real06*bj_DEGTORAD)
            set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00J',GetUnitX(loc_unit01),GetUnitY(loc_unit01),90)
            call IssuePointOrder(loc_unit02,"attackground",loc_real03,loc_real04)
            call UnitApplyTimedLife(loc_unit02,'BTLF',0.5)
            set loc_integer03=loc_integer03+1
        endloop
    else
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
        call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
        call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
        call TriggerRegisterTimerEvent(loc_trigger01,1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2388))
        call TriggerEvaluate(loc_trigger01)
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
    return false
endfunction

// 54280 ~ 54308
function Func2390 takes nothing returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    local unit loc_unit01=GetTriggerUnit()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(829)))
    if loc_integer02>0 then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call Func0186(GetOwningPlayer(loc_unit01),9.4,loc_real01,loc_real02,360)
        call TriggerRegisterTimerEvent(loc_trigger01,0.4,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2389))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveReal(hashtable001,(loc_integer01),(6),((loc_real01)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7),((loc_real02)*1.0))
        call UnitRemoveAbility(loc_unit01,integers155[loc_integer02])
        set loc_integer02=loc_integer02-1
        call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(829),(loc_integer02))
        call Func0193(loc_unit01,integers155[loc_integer02])
    else
        call Func0120(GetOwningPlayer(GetTriggerUnit()),GetObjectName('n0NY'))
    endif
    call RemoveLocation(loc_location01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_location01=null
endfunction

// 54310 ~ 54315
function Func2391 takes nothing returns boolean
    if GetSpellAbilityId()=='A2ZR' or GetSpellAbilityId()=='A2ZQ' or GetSpellAbilityId()=='A064' or GetSpellAbilityId()=='A2ZP' then
        call Func2390()
    endif
    return false
endfunction
