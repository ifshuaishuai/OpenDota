
// 62563 ~ 62585
function Func2874 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(830)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer04=GetUnitAbilityLevel(loc_unit01,'A2ZS')
    if loc_integer02<loc_integer04 then
        set loc_integer03=loc_integer03-1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
        if loc_integer03==0 then
            call UnitRemoveAbility(loc_unit01,integers163[loc_integer02])
            set loc_integer03=40
            call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
            set loc_integer02=loc_integer02+1
            call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(830),(loc_integer02))
            call Func0193(loc_unit01,integers163[loc_integer02])
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 62587 ~ 62599
function Func2875 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(830),(1))
    call Func0193(loc_unit01,integers163[1])
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2874))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(34),(40))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 62601 ~ 62608
function Func2876 takes nothing returns boolean
    if GetLearnedSkill()=='A2ZS' and IsUnitIllusion(GetTriggerUnit())==false then
        if GetUnitAbilityLevel(GetTriggerUnit(),'A2ZS')==1 then
            call Func2875()
        endif
    endif
    return false
endfunction

// 62610 ~ 62629
function Func2877 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2869))
    call TriggerAddAction(loc_trigger01,function Func2873)
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SUMMON)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2872))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2867))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2876))
    set integers163[0]='A2ZU'
    set integers163[1]='A2ZX'
    set integers163[2]='A2ZW'
    set integers163[3]='A2ZT'
    set integers163[4]='A2ZV'
endfunction
