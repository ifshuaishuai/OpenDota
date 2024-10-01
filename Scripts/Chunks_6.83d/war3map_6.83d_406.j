
// 54718 ~ 54740
function Func2418 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(828)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer04=3+GetUnitAbilityLevel(loc_unit01,'A0K9')
    if loc_integer02<loc_integer04 then
        set loc_integer03=loc_integer03-1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
        if loc_integer03==0 then
            call UnitRemoveAbility(loc_unit01,integers157[loc_integer02])
            set loc_integer03=35
            call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
            set loc_integer02=loc_integer02+1
            call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(828),(loc_integer02))
            call Func0193(loc_unit01,integers157[loc_integer02])
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 54742 ~ 54754
function Func2419 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(828),(4))
    call Func0193(loc_unit01,integers157[4])
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2418))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(34),(35))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 54756 ~ 54763
function Func2420 takes nothing returns boolean
    if GetLearnedSkill()=='A0K9' and IsUnitIllusion(GetTriggerUnit())==false then
        if GetUnitAbilityLevel(GetTriggerUnit(),'A0K9')==1 then
            call Func2419()
        endif
    endif
    return false
endfunction

// 54765 ~ 54783
function Func2421 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2416))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2417))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2420))
    set loc_trigger01=null
    set integers157[0]='A2YZ'
    set integers157[1]='A2YW'
    set integers157[2]='A2YV'
    set integers157[3]='A2YY'
    set integers157[4]='A2YX'
    set integers157[5]='A2Z0'
    set integers157[6]='A2ZL'
endfunction
