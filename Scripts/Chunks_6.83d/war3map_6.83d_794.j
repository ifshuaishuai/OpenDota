
// 83436 ~ 83453
function Func4012 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A1SB')
    if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetEventDamage()>5 then
        call DisableTrigger(loc_trigger01)
        call Func0115(GetEventDamageSource(),GetTriggerUnit(),3,(0.1+0.1*loc_integer02)*GetEventDamage())
        call EnableTrigger(loc_trigger01)
    endif
    set loc_unit01=null
    set loc_trigger01=null
    return false
endfunction

// 83455 ~ 83488
function Func4013 takes nothing returns nothing
    local real loc_real01=GetSpellTargetX()
    local real loc_real02=GetSpellTargetY()
    local group loc_group01=Func0030()
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1SB')
    local unit loc_unit02
    local trigger loc_trigger01
    local integer loc_integer02
    set unit124=loc_unit01
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,475,Condition(function Func0313))
    set loc_unit02=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(673)))
    if loc_unit02!=null then
        if Func0149(GetUnitX(loc_unit02),GetUnitY(loc_unit02),loc_real01,loc_real02)<475 and IsUnitEnemy(loc_unit02,GetOwningPlayer(loc_unit01))==true then
            call GroupAddUnit(loc_group01,loc_unit02)
        endif
    endif
    set loc_unit02=GroupPickRandomUnit(loc_group01)
    call Func0029(loc_group01)
    call DestroyEffect(AddSpecialEffect("war3mapImported\\Desecrate.mdx",loc_real01,loc_real02))
    if loc_unit02!=null then
        set loc_trigger01=CreateTrigger()
        set loc_integer02=GetHandleId(loc_trigger01)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
        call TriggerRegisterTimerEvent(loc_trigger01,12,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4012))
        call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
        call SaveEffectHandle(hashtable001,(loc_integer02),(32),(AddSpecialEffectTarget("war3mapImported\\void.mdx",loc_unit02,"chest")))
    endif
    set loc_group01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 83490 ~ 83495
function Func4014 takes nothing returns boolean
    if GetSpellAbilityId()=='A1SB' then
        call Func4013()
    endif
    return false
endfunction

// 83497 ~ 83502
function Func4015 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4014))
    set loc_trigger01=null
endfunction
