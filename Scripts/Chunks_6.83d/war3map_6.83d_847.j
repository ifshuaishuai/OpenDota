
// 88435 ~ 88456
function Func4236 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(747)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if loc_integer02<3 then
        set loc_integer03=loc_integer03-1
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
        if loc_integer03==0 then
            call UnitRemoveAbility(loc_unit01,integers177[loc_integer02])
            set loc_integer03=35
            call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer03))
            set loc_integer02=loc_integer02+1
            call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(747),(loc_integer02))
            call Func0193(loc_unit01,integers177[loc_integer02])
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 88458 ~ 88470
function Func4237 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(747),(3))
    call Func0193(loc_unit01,integers177[3])
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4236))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(34),(30))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 88472 ~ 88482
function Func4238 takes nothing returns boolean
    if GetLearnedSkill()=='A2JK' and IsUnitIllusion(GetTriggerUnit())==false then
        call Func0193(GetTriggerUnit(),'A2JL')
        call SetUnitAbilityLevel(GetTriggerUnit(),'A2JL',GetUnitAbilityLevel(GetTriggerUnit(),'A2JK'))
        if GetUnitAbilityLevel(GetTriggerUnit(),'A2JK')==1 then
            call Func4237()
            call Func4220()
        endif
    endif
    return false
endfunction

// 88484 ~ 88496
function Func4239 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4235))
    set loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4238))
    set loc_trigger01=null
    set integers177[0]='A2JO'
    set integers177[1]='A2JQ'
    set integers177[2]='A2JP'
    set integers177[3]='A2JR'
endfunction
