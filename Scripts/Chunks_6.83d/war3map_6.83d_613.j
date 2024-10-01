
// 69295 ~ 69316
function Func3260 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0MU')
    local real loc_real01=5+15*loc_integer02
    if loc_integer02==0 then
        set loc_integer02=GetUnitAbilityLevel(loc_unit01,'A0A2')
        set loc_real01=20+20*loc_integer02
    endif
    if GetUnitAbilityLevel(loc_unit02,'BNdo')==0 and GetUnitAbilityLevel(loc_unit02,'B0HM')==0 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        call Func0115(loc_unit01,loc_unit02,7,loc_real01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 69318 ~ 69340
function Func3261 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetSpellTargetUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3260))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    if GetSpellAbilityId()=='A0A2' then
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call UnitRemoveBuffs(loc_unit02,true,false)
        call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func3259))
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        call SaveInteger(hashtable001,(loc_integer01),(34),(0))
    endif
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 69342 ~ 69349
function Func3262 takes nothing returns boolean
    if GetSpellAbilityId()=='A0MU' or GetSpellAbilityId()=='A0A2' then
        if Func0028(GetSpellTargetUnit())==false then
            call Func3261()
        endif
    endif
    return false
endfunction

// 69351 ~ 69356
function Func3263 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3262))
    set loc_trigger01=null
endfunction
