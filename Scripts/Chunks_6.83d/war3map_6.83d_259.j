
// 45381 ~ 45385
function Func1830 takes nothing returns nothing
    if Func0096(GetEnumUnit())==false then
        call Func0115(unit274,GetEnumUnit(),1,real279)
    endif
endfunction

// 45387 ~ 45416
function Func1831 takes unit loc_unit01,real loc_real01,real loc_real02 returns nothing
    local real loc_real03
    local real loc_real04
    local group loc_group01=Func0030()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A0Z6')
    local real loc_real05=40+40*loc_integer01
    set unit124=loc_unit01
    set unit274=loc_unit01
    set real279=loc_real05
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,600,Condition(function Func0305))
    call ForGroup(loc_group01,function Func1830)
    call Func0029(loc_group01)
    set loc_real03=loc_real01
    set loc_real04=loc_real02
    call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",loc_real03,loc_real04))
    set loc_real03=loc_real01+200
    set loc_real04=loc_real02+200
    call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",loc_real03,loc_real04))
    set loc_real03=loc_real01+200
    set loc_real04=loc_real02-200
    call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",loc_real03,loc_real04))
    set loc_real03=loc_real01-200
    set loc_real04=loc_real02+200
    call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",loc_real03,loc_real04))
    set loc_real03=loc_real01-200
    set loc_real04=loc_real02-200
    call DestroyEffect(AddSpecialEffect("Abilities\\Weapons\\FlyingMachine\\FlyingMachineImpact.mdl",loc_real03,loc_real04))
    call Func0186(GetOwningPlayer(loc_unit01),10,loc_real01,loc_real02,600)
    set loc_group01=null
endfunction

// 45418 ~ 45447
function Func1832 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(45)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(47)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(48)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(13)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(189)))
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(190)))
    local real loc_real06=Func0126(loc_real04+30*Cos(loc_real03))
    local real loc_real07=Func0129(loc_real05+30*Sin(loc_real03))
    local real loc_real08
    local real loc_real09
    call SetUnitX(loc_unit02,loc_real06)
    call SetUnitY(loc_unit02,loc_real07)
    call SaveReal(hashtable001,(loc_integer01),(189),((loc_real06)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(190),((loc_real07)*1.0))
    if Func0178(loc_real01,loc_real02,loc_real06,loc_real07)<=35 then
        call KillUnit(loc_unit02)
        set loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
        call Func1831(loc_unit01,loc_real06,loc_real07)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 45449 ~ 45482
function Func1833 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=Func0126(GetUnitX(loc_unit01))
    local real loc_real02=Func0129(GetUnitY(loc_unit01))
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real03=Func0126(GetLocationX(loc_location01))
    local real loc_real04=Func0129(GetLocationY(loc_location01))
    local real loc_real05=Atan2(loc_real04-loc_real02,loc_real03-loc_real01)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'h03Y',loc_real01,loc_real02,loc_real05*bj_RADTODEG)
    call RemoveLocation(loc_location01)
    call SetUnitFacing(loc_unit02,loc_real05*bj_RADTODEG)
    call SetUnitPathing(loc_unit02,false)
    call Func0193(loc_unit02,'Aloc')
    call ShowUnit(loc_unit02,false)
    call UnitRemoveAbility(loc_unit02,'Aloc')
    call ShowUnit(loc_unit02,true)
    call SaveReal(hashtable001,(loc_integer01),(191),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(192),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(189),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(190),((loc_real02)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(47),((loc_real03)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(48),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(13),((loc_real05)*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(45),(loc_unit02))
    call TriggerRegisterTimerEvent(loc_trigger01,0.025,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1832))
    set loc_unit01=null
    set loc_location01=null
    set loc_trigger01=null
    set loc_unit02=null
endfunction

// 45484 ~ 45489
function Func1834 takes nothing returns boolean
    if GetSpellAbilityId()=='A0Z6' then
        call Func1833()
    endif
    return false
endfunction

// 45491 ~ 45496
function Func1835 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1834))
    set loc_trigger01=null
endfunction
