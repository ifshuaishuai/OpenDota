
// 89299 ~ 89318
function Func4286 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(59)))
    if GetTriggerEventId()!=EVENT_UNIT_DAMAGED then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        call UnitRemoveAbility(loc_unit01,loc_integer02)
        call UnitRemoveAbility(loc_unit01,'B0FJ')
        call UnitRemoveAbility(loc_unit01,'B0FK')
    elseif GetEventDamageSource()==loc_unit01 and GetEventDamage()>0 then
        call TriggerRegisterTimerEvent(loc_trigger01,0.3,false)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 89320 ~ 89360
function Func4287 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=GetAttacker()
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A2EY')
    local integer loc_integer03
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(34)))
    if loc_unit01==GetTriggerUnit()and((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4316))))==1)==false and IsUnitAlly(loc_unit01,GetOwningPlayer(loc_unit02))==false then
        if GetRandomReal(0,100)<(loc_integer04+1)*reals032[loc_integer02]then
            call SaveInteger(hashtable001,(loc_integer01),(34),(0))
            call Func0044(loc_unit01,4316,0.9)
            if loc_integer02==1 then
                set loc_integer03='A2GD'
            elseif loc_integer02==2 then
                set loc_integer03='A2GE'
            elseif loc_integer02==3 then
                set loc_integer03='A2GF'
            elseif loc_integer02==4 then
                set loc_integer03='A2GC'
            endif
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),loc_integer03,false)
            call Func0193(loc_unit01,loc_integer03)
            set loc_trigger01=CreateTrigger()
            set loc_integer01=GetHandleId(loc_trigger01)
            call TriggerRegisterDeathEvent(loc_trigger01,loc_unit01)
            call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DAMAGED)
            call TriggerRegisterTimerEvent(loc_trigger01,1.0,false)
            call TriggerAddCondition(loc_trigger01,Condition(function Func4286))
            call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
            call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
            call SaveInteger(hashtable001,(loc_integer01),(59),(loc_integer03))
        else
            call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer04+1))
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 89362 ~ 89371
function Func4288 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterAnyUnitEventBJ(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4287))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 89373 ~ 89378
function Func4289 takes nothing returns boolean
    if GetLearnedSkill()=='A2EY' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A2EY')==1 then
        call Func4288()
    endif
    return false
endfunction

// 89380 ~ 89389
function Func4290 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4289))
    set loc_trigger01=null
    set reals032[1]=3.646
    set reals032[2]=4.562
    set reals032[3]=5.570
    set reals032[4]=6.668
endfunction
