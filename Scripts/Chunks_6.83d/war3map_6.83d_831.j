
// 86865 ~ 86882
function Func4165 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(704)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(713)))
    if loc_integer02==(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(704)))then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    elseif GetTriggerEvalCount(loc_trigger01)>(15-loc_integer03)and Func0194(loc_unit01)==false then
        call UnitRemoveAbility(loc_unit01,loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 86884 ~ 86894
function Func4166 takes unit loc_unit01,integer loc_integer01,real loc_real01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4165))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer02),(704),(loc_integer01))
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(704),(-1))
    call SaveInteger(hashtable001,(loc_integer02),(713),(R2I((TimerGetElapsed(timer001))-loc_real01)))
    set loc_trigger01=null
endfunction

// 86896 ~ 86938
function Func4167 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(704)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer04=GetUnitAbilityLevel(loc_unit01,'A27H')
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(411)))
    if loc_integer04==0 then
        set loc_integer04=GetUnitAbilityLevel(loc_unit01,'A2V9')
    endif
    if GetTriggerEventId()!=EVENT_UNIT_SPELL_EFFECT and GetTriggerEventId()!=EVENT_WIDGET_DEATH then
        if loc_integer03==0 then
            call SaveInteger(hashtable001,(loc_integer01),(34),(1))
            call DisplayTimedTextToPlayer(GetOwningPlayer(loc_unit01),0,0,10,"|c00ff0303"+GetObjectName('n0LW')+"|r")
        else
            call Func4164(loc_unit01)
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),loc_integer02,false)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call Func4166(loc_unit01,loc_integer02,loc_real01)
        endif
    elseif GetTriggerEventId()==EVENT_UNIT_SPELL_EFFECT then
        if GetSpellAbilityId()=='A27H' or GetSpellAbilityId()=='A2V9' then
            call Func4164(loc_unit01)
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),loc_integer02,false)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            call Func4166(loc_unit01,loc_integer02,loc_real01)
        elseif GetSpellAbilityId()==loc_integer02 then
            call SaveReal(hashtable001,(loc_integer01),(411),(((TimerGetElapsed(timer001)))*1.0))
        endif
    elseif GetTriggerEventId()==EVENT_WIDGET_DEATH then
        call Func4164(loc_unit01)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),loc_integer02,false)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call Func4166(loc_unit01,loc_integer02,loc_real01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 86940 ~ 86982
function Func4168 takes nothing returns nothing
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(704)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01=60*(2+GetUnitAbilityLevel(loc_unit01,'A27H'))
    if GetUnitAbilityLevel(loc_unit01,'A27H')==0 then
        set loc_real01=60*(2+GetUnitAbilityLevel(loc_unit01,'A2V9'))
    endif
    if(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(3000)))>0 then
        call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(3000),((LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(3000)))))
    endif
    if(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(3001)))>0 then
        call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(3001),((LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(3001)))))
    endif
    if(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(3002)))>0 then
        call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(3002),((LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(3002)))))
    endif
    if(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(710)))>0 then
        call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(710),((LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(710)))))
    endif
    call Func0184(sound070,GetUnitX(loc_unit01),GetUnitY(loc_unit01))
    call Func0173(GetObjectName(loc_integer02),3.5,loc_unit01,0.024,170,0,255,216)
    call SaveInteger(hashtable001,(GetHandleId(loc_unit01)),(704),(loc_integer02))
    call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),loc_integer02,true)
    call Func0193(loc_unit01,loc_integer02)
    call SetUnitAbilityLevel(loc_unit01,loc_integer02,loc_integer03)
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveInteger(hashtable001,(loc_integer01),(34),(0))
    call SaveInteger(hashtable001,(loc_integer01),(704),(loc_integer02))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_SPELL_EFFECT)
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01-20,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4167))
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 86984 ~ 86994
function Func4169 takes unit loc_unit01,unit loc_unit02,integer loc_integer01,integer loc_integer02 returns nothing
    local trigger loc_trigger01=Func0196(loc_unit02,loc_unit01,'h0DB',"Func4168",900,false)
    local integer loc_integer03=GetHandleId(loc_trigger01)
    call Func0184(sound069,GetUnitX(loc_unit02),GetUnitY(loc_unit02))
    call Func0173(GetObjectName(loc_integer01),3.75,loc_unit02,0.024,170,0,255,216)
    call SaveUnitHandle(hashtable001,(loc_integer03),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer03),(17),(loc_unit02))
    call SaveInteger(hashtable001,(loc_integer03),(704),(loc_integer01))
    call SaveInteger(hashtable001,(loc_integer03),(5),(loc_integer02))
    set loc_trigger01=null
endfunction
