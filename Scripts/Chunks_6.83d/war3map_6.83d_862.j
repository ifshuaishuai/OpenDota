
// 89550 ~ 89587
function Func4298 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local real loc_real01
    local unit loc_unit03
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        set loc_real01=GetEventDamage()
        if Func0101(loc_real01)and loc_real01>50 then
            set loc_integer03=loc_integer03+1
            call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
            set loc_unit03=GetEventDamageSource()
            if IsUnitType(loc_unit03,UNIT_TYPE_HERO)==false and GetUnitAbilityLevel(loc_unit03,'A04R')!=0 then
                set loc_unit03=units001[GetPlayerId(GetOwningPlayer(loc_unit03))]
            endif
            call Func0145(loc_unit01,loc_real01)
            set loc_real01=loc_real01*(0.4+0.2*loc_integer02)
            if IsUnitAlly(loc_unit02,GetOwningPlayer(loc_unit01))==true then
                call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_LIFE)+loc_real01)
            else
                call Func0115(loc_unit01,loc_unit02,3,loc_real01)
            endif
        endif
    endif
    if GetTriggerEventId()!=EVENT_UNIT_DAMAGED or loc_integer03==3 then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 89589 ~ 89609
function Func4299 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2IQ')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call Func0161("Abilities\\Spells\\Orc\\SpiritLink\\SpiritLinkZapTarget.mdl",loc_unit01,"chest",1.9)
    call Func0161("Abilities\\Spells\\Orc\\SpiritLink\\SpiritLinkZapTarget.mdl",loc_unit02,"chest",1.9)
    call SaveEffectHandle(hashtable001,(loc_integer02),(175),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\SpiritLink\\SpiritLinkTarget.mdl",loc_unit01,"chest")))
    call SaveEffectHandle(hashtable001,(loc_integer02),(176),(AddSpecialEffectTarget("Abilities\\Spells\\Orc\\SpiritLink\\SpiritLinkTarget.mdl",loc_unit02,"chest")))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveInteger(hashtable001,(loc_integer02),(34),(0))
    call TriggerAddCondition(loc_trigger01,Condition(function Func4298))
    call TriggerRegisterTimerEvent(loc_trigger01,10,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 89611 ~ 89616
function Func4300 takes nothing returns boolean
    if GetSpellAbilityId()=='A2IQ' then
        call Func4299()
    endif
    return false
endfunction

// 89618 ~ 89623
function Func4301 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4300))
    set loc_trigger01=null
endfunction
