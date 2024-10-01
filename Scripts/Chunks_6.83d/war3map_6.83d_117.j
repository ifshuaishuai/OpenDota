
// 23091 ~ 23105
function Func0939 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if(GetTriggerEventId()==EVENT_WIDGET_DEATH or GetTriggerEvalCount(loc_trigger01)>=loc_integer02 or Func0098(loc_unit01)==true)then
        call Func0282(loc_unit01)
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(32))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 23107 ~ 23129
function Func0940 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local unit loc_unit03=CreateUnit(GetOwningPlayer(loc_unit02),'e00E',GetUnitX(loc_unit02),GetUnitY(loc_unit02),0)
    local integer loc_integer01=2
    local real loc_real01=4.5
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    if IsUnitType(loc_unit02,UNIT_TYPE_MELEE_ATTACKER)==true then
        set loc_integer01=1
        set loc_real01=3
    endif
    call Func0281(loc_unit02)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerAddCondition(loc_trigger01,Condition(function Func0939))
    call SaveUnitHandle(hashtable001,(loc_integer02),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer02),(34),(R2I(loc_real01*10)))
    call SaveEffectHandle(hashtable001,(loc_integer02),(32),(AddSpecialEffectTarget("Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl",loc_unit02,"overhead")))
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
endfunction

// 23131 ~ 23135
function Func0941 takes nothing returns nothing
    if GetSpellAbilityId()=='A2K4' and Func0028(GetSpellTargetUnit())==false then
        call Func0940()
    endif
endfunction
