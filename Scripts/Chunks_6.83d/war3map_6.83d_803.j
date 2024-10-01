
// 84002 ~ 84019
function Func4041 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if Func0111(loc_unit01)==false then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call UnitRemoveAbility(loc_unit01,'A237')
        call UnitAddAbility(loc_unit01,'A22B')
        call UnitRemoveAbility(loc_unit01,'A22B')
        if(Func0394((loc_unit01),integers089[integer371])!=null)then
            call UnitAddAbility(loc_unit01,'A237')
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 84021 ~ 84039
function Func4042 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01
    local integer loc_integer01
    if Func0111(loc_unit01)==false then
        call UnitRemoveAbility(loc_unit01,'A237')
        call UnitAddAbility(loc_unit01,'A22B')
        call UnitRemoveAbility(loc_unit01,'A22B')
        if(Func0394((loc_unit01),integers089[integer371])!=null)then
            call UnitAddAbility(loc_unit01,'A237')
        endif
    else
        set loc_trigger01=CreateTrigger()
        set loc_integer01=GetHandleId(loc_trigger01)
        call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
        call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4041))
        set loc_trigger01=null
    endif
endfunction

// 84041 ~ 84081
function Func4043 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A229')
    local integer loc_integer04=loc_integer01
    if GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
        if IsUnitIllusion(GetAttacker())==true and GetUnitAbilityLevel(GetAttacker(),'A1TW')>0 then
            call Func4042(GetAttacker())
            call UnitRemoveAbility(GetAttacker(),'A1TW')
        endif
        if GetAttacker()==loc_unit01 then
            set loc_integer02=loc_integer02+1
            if loc_integer02>3+loc_integer03 then
                call UnitRemoveAbility(loc_unit01,'A1TW')
                call UnitRemoveAbility(loc_unit01,'B0DJ')
                call Func4042(loc_unit01)
                call FlushChildHashtable(hashtable001,(loc_integer01))
                call Func0035(loc_trigger01)
            else
                set loc_trigger01=CreateTrigger()
                set loc_integer01=GetHandleId(loc_trigger01)
                call TriggerRegisterUnitEvent(loc_trigger01,GetTriggerUnit(),EVENT_UNIT_DAMAGED)
                call TriggerRegisterTimerEvent(loc_trigger01,2,false)
                call TriggerAddCondition(loc_trigger01,Condition(function Func4040))
                call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
                call SaveInteger(hashtable001,(loc_integer01),(375),(loc_integer04))
            endif
        endif
    else
        call UnitRemoveAbility(loc_unit01,'A1TW')
        call UnitRemoveAbility(loc_unit01,'B0DJ')
        call Func4042(loc_unit01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 84083 ~ 84101
function Func4044 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetTriggerUnit()
    call TriggerRegisterTimerEvent(loc_trigger01,15,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4043))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(34),(1))
    call UnitRemoveAbility(loc_unit01,'A237')
    call UnitAddAbility(loc_unit01,'A22A')
    call UnitRemoveAbility(loc_unit01,'A22A')
    if(Func0394((loc_unit01),integers089[integer371])!=null)then
        call UnitAddAbility(loc_unit01,'A237')
    endif
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 84103 ~ 84108
function Func4045 takes nothing returns boolean
    if IsUnitIllusion(GetTriggerUnit())==true and GetUnitTypeId(GetTriggerUnit())=='E02O' then
        call Func4042(GetTriggerUnit())
    endif
    return false
endfunction

// 84110 ~ 84115
function Func4046 takes nothing returns boolean
    if GetSpellAbilityId()=='A229' and GetUnitTypeId(GetTriggerUnit())=='E02N' then
        call Func4044()
    endif
    return false
endfunction

// 84117 ~ 84125
function Func4047 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4046))
    set loc_trigger01=CreateTrigger()
    call TriggerRegisterEnterRectSimple(loc_trigger01,GetWorldBounds())
    call TriggerAddCondition(loc_trigger01,Condition(function Func4045))
    set loc_trigger01=null
endfunction
