
// 70978 ~ 71011
function Func3354 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2KO')
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamage()>0 and IsPlayerEnemy(GetOwningPlayer(GetEventDamageSource()),GetOwningPlayer(loc_unit01))==true then
            if Func0058(GetOwningPlayer(GetEventDamageSource()))and Func0101(GetEventDamage())then
                set loc_unit02=GetEventDamageSource()
                if GetUnitAbilityLevel(loc_unit02,'A04R')>0 then
                    set loc_unit02=units001[GetPlayerId(GetOwningPlayer(loc_unit02))]
                endif
                if IsUnitInGroup(loc_unit02,loc_group01)==false then
                    call GroupAddUnit(loc_group01,loc_unit02)
                    call Func0145(loc_unit01,GetEventDamage())
                    if Func0194(loc_unit02)==false then
                        call Func0365(loc_unit01,loc_unit02,0.6*loc_integer02)
                        call Func0115(loc_unit01,loc_unit02,3,GetEventDamage())
                    endif
                endif
            endif
        endif
    else
        call UnitRemoveAbility(loc_unit01,'A2KP')
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 71013 ~ 71025
function Func3355 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,2.25,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3354))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveGroupHandle(hashtable001,(loc_integer01),(22),(Func0030()))
    call Func0193(loc_unit01,'A2KP')
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 71027 ~ 71032
function Func3356 takes nothing returns boolean
    if GetSpellAbilityId()=='A2KO' then
        call Func3355()
    endif
    return false
endfunction

// 71034 ~ 71039
function Func3357 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3356))
    set loc_trigger01=null
endfunction
