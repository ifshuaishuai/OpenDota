
// 54317 ~ 54339
function Func2392 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(829)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer04=3
    if loc_integer02<loc_integer04 then
        set loc_integer03=loc_integer03-1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
        if loc_integer03==0 then
            call UnitRemoveAbility(loc_unit01,integers155[loc_integer02])
            set loc_integer03=40
            call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
            set loc_integer02=loc_integer02+1
            call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(829),(loc_integer02))
            call Func0193(loc_unit01,integers155[loc_integer02])
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 54341 ~ 54353
function Func2393 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(829),(3))
    call Func0193(loc_unit01,integers155[3])
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2392))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(34),(40))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 54355 ~ 54362
function Func2394 takes nothing returns boolean
    if GetLearnedSkill()=='A2ZO' and IsUnitIllusion(GetTriggerUnit())==false then
        if GetUnitAbilityLevel(GetTriggerUnit(),'A2ZO')==1 then
            call Func2393()
        endif
    endif
    return false
endfunction

// 54364 ~ 54377
function Func2395 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2391))
    call Func0132('A19F')
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2394))
    set loc_trigger01=null
    set integers155[0]='A2ZR'
    set integers155[1]='A2ZQ'
    set integers155[2]='A064'
    set integers155[3]='A2ZP'
endfunction
