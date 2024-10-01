
// 88371 ~ 88381
function Func4233 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call SetUnitState(loc_unit01,UNIT_STATE_MANA,GetUnitState(loc_unit01,UNIT_STATE_MANA)+150)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 88383 ~ 88424
function Func4234 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(746)))
    local unit loc_unit02
    if loc_integer02>0 and((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4319))))==1)==false then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SetUnitVertexColor(loc_unit01,255,0,0,75)
        call SetUnitTimeScale(loc_unit01,2)
        call SetUnitAnimationByIndex(loc_unit01,0)
        call SetUnitPathing(loc_unit01,false)
        call SetUnitInvulnerable(loc_unit01,true)
        call Func0193(loc_unit01,'A04R')
        call SaveInteger(hashtable001,(GetHandleId((loc_unit01))),((4319)),(1))
        call TriggerRegisterTimerEvent(loc_trigger01,0.02,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4232))
        call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
        call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget("war3mapImported\\Phoenix_Missile_smaller.mdx",loc_unit01,"hand right alternate")))
        call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget("war3mapImported\\Phoenix_Missile_smaller.mdx",loc_unit01,"hand left alternate")))
        call SaveEffectHandle(hashtable001,(loc_integer01),(177),(AddSpecialEffectTarget("war3mapImported\\FlameDash_Ground.mdx",loc_unit01,"origin")))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveReal(hashtable001,(loc_integer01),(47),((GetSpellTargetX())*1.0))
        call SaveReal(hashtable001,(loc_integer01),(48),((GetSpellTargetY())*1.0))
        set loc_unit02=Func4229(loc_unit01,GetSpellTargetX(),GetSpellTargetY())
        call SaveUnitHandle(hashtable001,(loc_integer01),(19),(loc_unit02))
        call SaveReal(hashtable001,(loc_integer01),(44),((Func4231(loc_unit01,loc_unit02))*1.0))
        call SaveReal(hashtable001,(loc_integer01),(6),((GetUnitX(loc_unit02))*1.0))
        call SaveReal(hashtable001,(loc_integer01),(7),((GetUnitY(loc_unit02))*1.0))
        call SaveInteger(hashtable001,(loc_integer01),(34),(1))
    else
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call TriggerRegisterTimerEvent(loc_trigger01,0.0,false)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4233))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 88426 ~ 88433
function Func4235 takes nothing returns boolean
    if GetSpellAbilityId()==integers177[0]or GetSpellAbilityId()==integers177[1]or GetSpellAbilityId()==integers177[2]or GetSpellAbilityId()==integers177[3]then
        call Func4226()
    elseif GetSpellAbilityId()=='A2JL' then
        call Func4234()
    endif
    return false
endfunction
