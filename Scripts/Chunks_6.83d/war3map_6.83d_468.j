
// 59361 ~ 59379
function Func2705 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(247)))
    call DestroyEffect(AddSpecialEffect("effects\\Tornado.mdx",GetUnitX(loc_unit01),GetUnitY(loc_unit01)))
    if GetTriggerEvalCount(loc_trigger01)>10*(2+1*loc_integer02)or GetTriggerEventId()==EVENT_UNIT_DEATH then
        call UnitRemoveAbility(loc_unit01,loc_integer03)
        call UnitRemoveAbility(loc_unit01,'B09W')
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(175))))
        call DestroyEffect((LoadEffectHandle(hashtable001,(loc_integer01),(176))))
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 59381 ~ 59408
function Func2706 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A14I')
    local integer loc_integer03
    if loc_integer02==1 then
        set loc_integer03='A135'
    elseif loc_integer02==2 then
        set loc_integer03='A12O'
    elseif loc_integer02==3 then
        set loc_integer03='A134'
    elseif loc_integer02==4 then
        set loc_integer03='A139'
    endif
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),loc_integer03,false)
    call Func0243(loc_unit01,loc_integer03,1,2+loc_integer02)
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2705))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(5),(loc_integer02))
    call SaveInteger(hashtable001,(loc_integer01),(247),(loc_integer03))
    call SaveEffectHandle(hashtable001,(loc_integer01),(175),(AddSpecialEffectTarget("effects\\Tornado.mdx",loc_unit01,"hand,left")))
    call SaveEffectHandle(hashtable001,(loc_integer01),(176),(AddSpecialEffectTarget("effects\\Tornado.mdx",loc_unit01,"hand,right")))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 59410 ~ 59415
function Func2707 takes nothing returns boolean
    if GetSpellAbilityId()=='A14I' then
        call Func2706()
    endif
    return false
endfunction

// 59417 ~ 59422
function Func2708 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2707))
    set loc_trigger01=null
endfunction
