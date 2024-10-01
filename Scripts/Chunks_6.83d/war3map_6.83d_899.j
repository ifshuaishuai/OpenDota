
// 92143 ~ 92164
function Func4452 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        call DisableTrigger(loc_trigger01)
        call Func0115(GetEventDamageSource(),loc_unit01,3,0.5*GetEventDamage())
        call EnableTrigger(loc_trigger01)
    endif
    if GetTriggerEventId()!=EVENT_UNIT_DAMAGED or Func0194(loc_unit01)then
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call Func0282(loc_unit01)
        call UnitRemoveAbility(loc_unit01,'A2T4')
        set trigger072=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 92166 ~ 92186
function Func4453 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2T5')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    set trigger072=loc_trigger01
    call Func0281(loc_unit02)
    call Func0193(loc_unit02,'A2T4')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A2T4',false)
    call TriggerRegisterTimerEvent(loc_trigger01,2+loc_integer01,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4452))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call SaveEffectHandle(hashtable001,(loc_integer02),(175),(AddSpecialEffectTarget("war3mapImported\\FatesEdict.mdx",loc_unit02,"origin")))
    call SaveEffectHandle(hashtable001,(loc_integer02),(176),(AddSpecialEffectTarget("Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl",loc_unit02,"overhead")))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 92188 ~ 92195
function Func4454 takes nothing returns boolean
    if GetSpellAbilityId()=='A2T5' then
        if IsUnitEnemy(GetSpellTargetUnit(),GetOwningPlayer(GetTriggerUnit()))==false or Func0028(GetSpellTargetUnit())==false then
            call Func4453()
        endif
    endif
    return false
endfunction

// 92197 ~ 92202
function Func4455 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4454))
    set loc_trigger01=null
endfunction
