
// 69945 ~ 69973
function Func3287 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1AT')
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        call DisableTrigger(loc_trigger01)
        call Func0115(GetEventDamageSource(),loc_unit02,7,GetEventDamage()*(0.2+0.1*loc_integer02))
        call EnableTrigger(loc_trigger01)
        if Func0194(loc_unit02)==true then
            call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call UnitRemoveAbility(loc_unit02,'A2S1')
            call UnitRemoveAbility(loc_unit02,'A2TL')
        endif
    else
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call UnitRemoveAbility(loc_unit02,'A2S1')
        call UnitRemoveAbility(loc_unit02,'A2TL')
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 69975 ~ 69999
function Func3288 takes unit loc_unit01,unit loc_unit02 returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    local unit loc_unit03
    if IsUnitIllusion(loc_unit02)==true then
        call KillUnit(loc_unit02)
        return
    endif
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    set loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    call UnitAddAbility(loc_unit03,'A2S4')
    call IssueTargetOrder(loc_unit03,"thunderbolt",loc_unit02)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerRegisterTimerEvent(loc_trigger01,3,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3287))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\EtherealForm\\SpiritWalkerChange.mdl",loc_unit02,"chest")))
    call Func0193(loc_unit02,'A2S1')
    call Func0193(loc_unit02,'A2TL')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A2S1',false)
    set loc_trigger01=null
endfunction

// 70001 ~ 70013
function Func3289 takes nothing returns nothing
    local unit loc_unit01=GetEnumUnit()
    call SaveReal(hashtable001,(GetHandleId(loc_unit01)),(799),(((LoadReal(hashtable001,(GetHandleId(loc_unit01)),(799)))+0.02)*1.0))
    if GetUnitAbilityLevel(loc_unit01,'A2S3')==0 then
        call Func0193(loc_unit01,'A2S3')
        call Func0193(loc_unit01,'A2TM')
        call SetUnitTurnSpeed(loc_unit01,GetUnitDefaultTurnSpeed(loc_unit01)*0.5)
    endif
    if(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(799)))==2.0 then
        call Func3288(unit348,loc_unit01)
    endif
    set loc_unit01=null
endfunction
