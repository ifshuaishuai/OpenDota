
// 89625 ~ 89651
function Func4302 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer04=5
    if loc_unit01==loc_unit02 then
        set loc_integer04=5
    endif
    set loc_integer03=loc_integer03+1
    call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or loc_integer03>loc_integer04 then
        call UnitRemoveAbility(loc_unit02,integers179[loc_integer02])
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call SetUnitState(loc_unit02,UNIT_STATE_LIFE,GetUnitState(loc_unit02,UNIT_STATE_LIFE)+20+10*loc_integer02)
        call Func0161("Abilities\\Spells\\Orc\\SpiritLink\\SpiritLinkZapTarget.mdl",loc_unit02,"chest",1.9)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 89653 ~ 89675
function Func4303 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A2J2')
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call Func0373(loc_unit02)
    call Func0371(loc_unit02,0,0)
    call Func0193(loc_unit02,integers179[loc_integer01])
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),integers179[loc_integer01],false)
    call SaveEffectHandle(hashtable001,(loc_integer02),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Human\\InnerFire\\InnerFireTarget.mdl",loc_unit02,"overhead")))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveInteger(hashtable001,(loc_integer02),(34),(0))
    call TriggerAddCondition(loc_trigger01,Condition(function Func4302))
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerEvaluate(loc_trigger01)
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 89677 ~ 89682
function Func4304 takes nothing returns boolean
    if GetSpellAbilityId()=='A2J2' then
        call Func4303()
    endif
    return false
endfunction

// 89684 ~ 89693
function Func4305 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4304))
    set integers179[1]='A2J9'
    set integers179[2]='A2JA'
    set integers179[3]='A2J8'
    set integers179[4]='A2J7'
    set loc_trigger01=null
endfunction
