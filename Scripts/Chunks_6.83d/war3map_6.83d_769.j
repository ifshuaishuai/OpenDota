
// 80264 ~ 80291
function Func3891 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(449)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit02 and GetEventDamage()>1 then
            call DisableTrigger(loc_trigger01)
            if loc_integer03>0 then
                call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(449),(loc_integer03-1))
                call Func0173("+"+I2S(40+10*loc_integer02),1,loc_unit02,0.024,100,200,255,255)
                call Func0115(loc_unit02,loc_unit01,1,40+10*loc_integer02)
            endif
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
        endif
    else
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
    return false
endfunction

// 80293 ~ 80323
function Func3892 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    if GetTriggerEventId()!=EVENT_PLAYER_UNIT_ATTACKED or(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(449)))==0 then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(449),(0))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call UnitRemoveAbility(loc_unit01,'A1HN')
        call UnitRemoveAbility(loc_unit01,'B0CJ')
        call UnitRemoveAbility(loc_unit01,'A1IP')
    elseif GetAttacker()==loc_unit01 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4289))))==1)==false then
        call Func0044(loc_unit01,4289,0.4)
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_DAMAGED)
        call TriggerRegisterTimerEvent(loc_trigger01,2.0,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3891))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(GetTriggerUnit()))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
        call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 80325 ~ 80346
function Func3893 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetEnumUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1HQ')
    call Func0193(loc_unit02,'A1HN')
    call Func0193(loc_unit02,'A1IP')
    call SaveInteger(hashtable001,(GetHandleId(loc_unit02)),(449),(2+loc_integer02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget("war3mapImported\\FrostHands.mdx",loc_unit02,"right,hand")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget("war3mapImported\\FrostHands.mdx",loc_unit02,"left,hand")))
    call TriggerRegisterTimerEvent(loc_trigger01,30,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3892))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 80348 ~ 80363
function Func3894 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local group loc_group01=Func0030()
    local location loc_location01=GetSpellTargetLoc()
    local real loc_real01=GetLocationX(loc_location01)
    local real loc_real02=GetLocationY(loc_location01)
    call RemoveLocation(loc_location01)
    call DestroyEffect(AddSpecialEffect("war3mapImported\\IcyWind.mdl",loc_real01,loc_real02))
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,525+25,Condition(function Func0333))
    call GroupAddUnit(loc_group01,loc_unit01)
    call ForGroup(loc_group01,function Func3893)
    call Func0029(loc_group01)
    set loc_unit01=null
    set loc_group01=null
    set loc_location01=null
endfunction

// 80365 ~ 80370
function Func3895 takes nothing returns boolean
    if GetSpellAbilityId()=='A1HQ' then
        call Func3894()
    endif
    return false
endfunction

// 80372 ~ 80377
function Func3896 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3895))
    set loc_trigger01=null
endfunction
