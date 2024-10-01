
// 58629 ~ 58652
function Func2650 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(64)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(66)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(65)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(67)))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\DeathPact\\DeathPactTarget.mdl",loc_unit01,"origin"))
    call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Undead\\DeathPact\\DeathPactTarget.mdl",loc_unit02,"origin"))
    call SetUnitPosition(loc_unit01,loc_real02,loc_real04)
    call Func0044(loc_unit02,4407,1)
    call SetUnitPosition(loc_unit02,loc_real01,loc_real03)
    if IsUnitInRegion(region007,loc_unit02)then
        call Func0259(loc_unit02)
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 58654 ~ 58681
function Func2651 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local real loc_real03=GetUnitX(loc_unit02)
    local real loc_real04=GetUnitY(loc_unit02)
    local trigger loc_trigger01
    local integer loc_integer01
    if IsUnitAlly(loc_unit01,GetOwningPlayer(loc_unit02))==true or Func0028(GetSpellTargetUnit())==false then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        call SaveReal(hashtable001,(loc_integer01),(64),((loc_real01)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(66),((loc_real03)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(65),((loc_real02)*1.0))
        call SaveReal(hashtable001,(loc_integer01),(67),((loc_real04)*1.0))
        call TriggerRegisterTimerEvent(loc_trigger01,0,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func2650))
        call Func0171("SPLK",loc_real01,loc_real02,loc_real03,loc_real04,0.5,0,1,1,0.3)
        call Func0180(loc_real01,loc_real02,300)
        call Func0180(loc_real03,loc_real04,300)
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 58683 ~ 58688
function Func2652 takes nothing returns boolean
    if GetSpellAbilityId()=='A0IN' or GetSpellAbilityId()=='A1AW' then
        call Func2651()
    endif
    return false
endfunction
