
// 21374 ~ 21399
function Func0829 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit02=Func0022(loc_integer02)
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(20)))
    if GetTriggerEventId()!=EVENT_UNIT_DAMAGED or GetUnitAbilityLevel(GetTriggerUnit(),'B031')==0 then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        set boolean156=true
        call Func0115(loc_unit01,loc_unit02,1,loc_real01)
        set boolean156=false
        if loc_real01>0 then
            call Func0173("+"+I2S(R2I(loc_real01)),1,loc_unit02,0.023,255,0,0,216)
        endif
    elseif GetEventDamage()>1 then
        call SaveReal(hashtable001,(loc_integer01),(20),((loc_real01+GetEventDamage()*0.3)*1.0))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 21401 ~ 21419
function Func0830 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit02)))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Other\\Silence\\SilenceTarget.mdl",loc_unit02,"overhead")))
    call SaveReal(hashtable001,(loc_integer01),(20),((0)*1.0))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerRegisterTimerEvent(loc_trigger01,5,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0829))
    set loc_trigger01=null
    return false
endfunction

// 21421 ~ 21429
function Func0831 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0830))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(GetSpellTargetUnit()))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(GetTriggerUnit()))
    set loc_trigger01=null
endfunction

// 21431 ~ 21435
function Func0832 takes nothing returns nothing
    if GetSpellAbilityId()=='A0FD' and Func0028(GetSpellTargetUnit())==false then
        call Func0831()
    endif
endfunction
