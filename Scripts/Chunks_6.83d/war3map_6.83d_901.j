
// 92276 ~ 92350
function Func4460 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(25)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer05=0
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(697)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(811)))
    local real loc_real03=GetUnitState(loc_unit02,UNIT_STATE_LIFE)
    local real loc_real04=GetUnitState(loc_unit02,UNIT_STATE_MAX_LIFE)
    local real loc_real05=(LoadReal(hashtable001,(loc_integer01),(808)))
    local real loc_real06
    local real loc_real07
    if loc_integer03>(loc_integer04+6)*50 or GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call DisableTrigger(loc_trigger01)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call UnitRemoveAbility(loc_unit02,'A2T0')
        call UnitRemoveAbility(loc_unit02,'A2SZ')
        if GetTriggerEventId()!=EVENT_WIDGET_DEATH then
            set loc_real05=loc_real05*2
            loop
                exitwhen loc_integer05>loc_integer02
                set loc_integer05=loc_integer05+1
                set loc_real03=GetUnitState(loc_unit02,UNIT_STATE_LIFE)
                set loc_real06=RMinBJ(loc_real04-loc_real03,loc_real05)
                call SetUnitState(loc_unit02,UNIT_STATE_LIFE,loc_real03+loc_real06)
                set loc_real05=loc_real05-loc_real06
                set loc_real07=(LoadReal(hashtable001,(loc_integer01),(20000+loc_integer05)))
                if(LoadUnitHandle(hashtable001,(loc_integer01),(22000+loc_integer05)))==loc_unit01 or((LoadInteger(hashtable001,(GetHandleId((loc_unit02))),((2485))))==1)then
                    if GetUnitState(loc_unit02,UNIT_STATE_LIFE)<=loc_real07+2 then
                        set loc_real07=GetUnitState(loc_unit02,UNIT_STATE_LIFE)-2
                    endif
                endif
                call Func0115((LoadUnitHandle(hashtable001,(loc_integer01),(22000+loc_integer05))),loc_unit02,6,loc_real07)
            endloop
            set loc_real03=GetUnitState(loc_unit02,UNIT_STATE_LIFE)
            set loc_real06=RMinBJ(loc_real04-loc_real03,loc_real05)
            call SetUnitState(loc_unit02,UNIT_STATE_LIFE,loc_real03+loc_real06)
            set loc_real05=loc_real05-loc_real06
        endif
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEventId()==EVENT_UNIT_DAMAGED and Func0101(GetEventDamage())then
        set loc_integer02=loc_integer02+1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02))
        call SaveUnitHandle(hashtable001,(loc_integer01),(22000+loc_integer02),(GetEventDamageSource()))
        call SaveReal(hashtable001,(loc_integer01),(20000+loc_integer02),((GetEventDamage())*1.0))
        call Func0145(loc_unit02,GetEventDamage())
    elseif GetTriggerEventId()!=EVENT_UNIT_DAMAGED and GetTriggerEventId()!=EVENT_WIDGET_DEATH then
        set loc_integer03=loc_integer03+1
        call SaveInteger(hashtable001,(loc_integer01),(25),(loc_integer03))
        if loc_real04!=loc_real02 then
            set loc_real02=loc_real04
            set loc_real01=loc_real03
            call SaveReal(hashtable001,(loc_integer01),(697),((loc_real01)*1.0))
            call SaveReal(hashtable001,(loc_integer01),(811),((loc_real02)*1.0))
        endif
        if loc_real03>loc_real01 then
            if((LoadInteger(hashtable001,(GetHandleId((loc_unit02))),((4298))))==1)==false then
                set loc_real05=loc_real05+loc_real03-loc_real01
                call SaveReal(hashtable001,(loc_integer01),(808),((loc_real05)*1.0))
            else
                call SetUnitState(loc_unit02,UNIT_STATE_LIFE,loc_real03)
            endif
        endif
        call SetUnitState(loc_unit02,UNIT_STATE_LIFE,loc_real01)
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
    return false
endfunction

// 92352 ~ 92379
function Func4461 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2TF')
    call UnitRemoveAbility(loc_unit02,'B09Y')
    call Func0193(loc_unit02,'A2T0')
    call Func0193(loc_unit02,'A2SZ')
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4460))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer01),(34),(0))
    call SaveInteger(hashtable001,(loc_integer01),(25),(0))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveReal(hashtable001,(loc_integer01),(808),((0)*1.0))
    call SaveReal(hashtable001,(loc_integer01),(697),((GetUnitState(loc_unit02,UNIT_STATE_LIFE))*1.0))
    call SaveReal(hashtable001,(loc_integer01),(811),((GetUnitState(loc_unit02,UNIT_STATE_MAX_LIFE))*1.0))
    call SaveEffectHandle(hashtable001,(loc_integer01),(32),(AddSpecialEffectTarget("war3mapImported\\FalsePromise.mdx",loc_unit02,"chest")))
    call Func0373(loc_unit02)
    call Func0371(loc_unit02,0,0)
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 92381 ~ 92386
function Func4462 takes nothing returns boolean
    if GetSpellAbilityId()=='A2TF' then
        call Func4461()
    endif
    return false
endfunction

// 92388 ~ 92393
function Func4463 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4462))
    set loc_trigger01=null
endfunction
