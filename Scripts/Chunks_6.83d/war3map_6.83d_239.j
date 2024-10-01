
// 44212 ~ 44238
function Func1750 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit02,'A07A')
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit02 then
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            if((LoadInteger(hashtable001,(GetHandleId((loc_unit02))),((2487))))==1)==false then
                call Func0044(loc_unit02,2487,0.5)
                if IsUnitType(loc_unit01,UNIT_TYPE_STRUCTURE)==false and IsUnitEnemy(loc_unit01,GetOwningPlayer(loc_unit02))then
                    call Func0115(loc_unit02,loc_unit01,2,30*loc_integer02)
                    call Func0173(I2S(R2I(30*loc_integer02)),1,loc_unit02,0.027,216,0,0,216)
                endif
            endif
        endif
    else
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
    return false
endfunction

// 44240 ~ 44253
function Func1751 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetAttacker()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerRegisterTimerEvent(loc_trigger01,2,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1750))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 44255 ~ 44343
function Func1752 takes nothing returns boolean
    local integer loc_integer01
    local unit loc_unit01
    if GetTriggerEventId()==EVENT_UNIT_SPELL_CAST or GetTriggerEventId()==EVENT_UNIT_DEATH then
        set loc_unit01=(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(14)))
        set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1IQ')
        if(LoadBoolean(hashtable001,(GetHandleId(loc_unit01)),(183)))then
            set loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1IQ')
            if loc_integer01==0 then
                call UnitRemoveAbility(loc_unit01,'A1J4')
                call UnitRemoveAbility(loc_unit01,'A1J3')
                call UnitRemoveAbility(loc_unit01,'A1J5')
                call UnitRemoveAbility(loc_unit01,'A1IU')
            elseif loc_integer01==1 then
                call UnitRemoveAbility(loc_unit01,'A1J3')
                call UnitRemoveAbility(loc_unit01,'A1J5')
                call UnitRemoveAbility(loc_unit01,'A1IU')
            elseif loc_integer01==2 then
                call UnitRemoveAbility(loc_unit01,'A1J4')
                call UnitRemoveAbility(loc_unit01,'A1J5')
                call UnitRemoveAbility(loc_unit01,'A1IU')
            elseif loc_integer01==3 then
                call UnitRemoveAbility(loc_unit01,'A1J4')
                call UnitRemoveAbility(loc_unit01,'A1J3')
                call UnitRemoveAbility(loc_unit01,'A1IU')
            elseif loc_integer01==4 then
                call UnitRemoveAbility(loc_unit01,'A1J4')
                call UnitRemoveAbility(loc_unit01,'A1J3')
                call UnitRemoveAbility(loc_unit01,'A1J5')
            endif
        else
            call UnitRemoveAbility(loc_unit01,'A1J4')
            call UnitRemoveAbility(loc_unit01,'A1J3')
            call UnitRemoveAbility(loc_unit01,'A1J5')
            call UnitRemoveAbility(loc_unit01,'A1IU')
        endif
        call FlushChildHashtable(hashtable001,(GetHandleId(GetTriggeringTrigger())))
        call Func0035(GetTriggeringTrigger())
    elseif GetTriggerEventId()==EVENT_PLAYER_UNIT_ATTACKED then
        if GetAttacker()==(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(14)))then
            if((LoadInteger(hashtable001,(GetHandleId((GetAttacker()))),((2488))))==1)==false then
                call FlushChildHashtable(hashtable001,(GetHandleId(GetTriggeringTrigger())))
                call Func0035(GetTriggeringTrigger())
                call Func1751()
            endif
            if(LoadBoolean(hashtable001,(GetHandleId(GetAttacker())),(183)))then
                set loc_integer01=GetUnitAbilityLevel(GetAttacker(),'A1IQ')
                if loc_integer01==0 then
                    call UnitRemoveAbility(GetAttacker(),'A1J4')
                    call UnitRemoveAbility(GetAttacker(),'A1J3')
                    call UnitRemoveAbility(GetAttacker(),'A1J5')
                    call UnitRemoveAbility(GetAttacker(),'A1IU')
                elseif loc_integer01==1 then
                    call UnitRemoveAbility(GetAttacker(),'A1J3')
                    call UnitRemoveAbility(GetAttacker(),'A1J5')
                    call UnitRemoveAbility(GetAttacker(),'A1IU')
                elseif loc_integer01==2 then
                    call UnitRemoveAbility(GetAttacker(),'A1J4')
                    call UnitRemoveAbility(GetAttacker(),'A1J5')
                    call UnitRemoveAbility(GetAttacker(),'A1IU')
                elseif loc_integer01==3 then
                    call UnitRemoveAbility(GetAttacker(),'A1J4')
                    call UnitRemoveAbility(GetAttacker(),'A1J3')
                    call UnitRemoveAbility(GetAttacker(),'A1IU')
                elseif loc_integer01==4 then
                    call UnitRemoveAbility(GetAttacker(),'A1J4')
                    call UnitRemoveAbility(GetAttacker(),'A1J3')
                    call UnitRemoveAbility(GetAttacker(),'A1J5')
                endif
            else
                call UnitRemoveAbility(GetAttacker(),'A1J4')
                call UnitRemoveAbility(GetAttacker(),'A1J3')
                call UnitRemoveAbility(GetAttacker(),'A1J5')
                call UnitRemoveAbility(GetAttacker(),'A1IU')
            endif
        endif
    else
        set loc_unit01=(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(14)))
        if(LoadBoolean(hashtable001,(GetHandleId(loc_unit01)),(183)))==false then
            call UnitRemoveAbility(loc_unit01,'A1J4')
            call UnitRemoveAbility(loc_unit01,'A1J3')
            call UnitRemoveAbility(loc_unit01,'A1J5')
            call UnitRemoveAbility(loc_unit01,'A1IU')
        endif
        call FlushChildHashtable(hashtable001,(GetHandleId(GetTriggeringTrigger())))
        call Func0035(GetTriggeringTrigger())
    endif
    return false
endfunction

// 44345 ~ 44370
function Func1753 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=GetSpellTargetUnit()
    local unit loc_unit02=GetTriggerUnit()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit02,'A07A')
    call Func0044(loc_unit02,2488,1.25-0.25*loc_integer02-0.01)
    call TriggerRegisterTimerEvent(loc_trigger01,15+5*loc_integer02,false)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_SPELL_CAST)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1752))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit02))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
    call Func0193(loc_unit02,'A1J4')
    call Func0193(loc_unit02,'A1J3')
    call Func0193(loc_unit02,'A1J5')
    call Func0193(loc_unit02,'A1IU')
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A1J4',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A1J3',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A1J5',false)
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A1IU',false)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 44372 ~ 44377
function Func1754 takes nothing returns boolean
    if GetSpellAbilityId()=='A07A' then
        call Func1753()
    endif
    return false
endfunction

// 44379 ~ 44384
function Func1755 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func1754))
    set loc_trigger01=null
endfunction
