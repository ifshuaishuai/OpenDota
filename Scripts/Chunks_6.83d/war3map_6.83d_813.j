
// 84964 ~ 84978
function Func4080 takes unit loc_unit01 returns nothing
    local trigger loc_trigger01
    call UnitRemoveAbility(loc_unit01,'A1TS')
    call UnitRemoveAbility(loc_unit01,'A1TR')
    call UnitRemoveAbility(loc_unit01,'A1TT')
    call UnitRemoveAbility(loc_unit01,'A1TP')
    if(LoadBoolean(hashtable001,(GetHandleId(loc_unit01)),(708)))then
        call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(708),(false))
        set loc_trigger01=(LoadTriggerHandle(hashtable001,(GetHandleId(loc_unit01)),(709)))
        call FlushChildHashtable(hashtable001,(GetHandleId(loc_trigger01)))
        call Func0035(loc_trigger01)
        call RemoveSavedHandle(hashtable001,(GetHandleId(loc_unit01)),(709))
        set loc_trigger01=null
    endif
endfunction

// 84980 ~ 84988
function Func4081 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    call Func4080(loc_unit01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    return false
endfunction

// 84990 ~ 85020
function Func4082 takes unit loc_unit01,integer loc_integer01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4081))
    if loc_integer01==1 then
        call Func0193(loc_unit01,'A1TS')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1TS',false)
    elseif loc_integer01==2 then
        call Func0193(loc_unit01,'A1TR')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1TR',false)
    elseif loc_integer01==3 then
        call Func0193(loc_unit01,'A1TT')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1TT',false)
    elseif loc_integer01==4 then
        call Func0193(loc_unit01,'A1TP')
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A1TP',false)
    endif
    if(LoadBoolean(hashtable001,(GetHandleId(loc_unit01)),(708)))==false then
        call SaveBoolean(hashtable001,(GetHandleId(loc_unit01)),(708),(true))
        set loc_trigger01=CreateTrigger()
        set loc_integer02=GetHandleId(loc_trigger01)
        call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
        call TriggerAddCondition(loc_trigger01,Condition(function Func4079))
        call SaveTriggerHandle(hashtable001,(GetHandleId(loc_unit01)),(709),(loc_trigger01))
        call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(2),(loc_unit01))
        call SaveInteger(hashtable001,(GetHandleId(loc_trigger01)),(5),(loc_integer01))
    endif
    set loc_trigger01=null
endfunction

// 85022 ~ 85082
function Func4083 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A28Q')
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local unit loc_unit03=(LoadUnitHandle(hashtable001,(GetHandleId(loc_unit01)),(652)))
    local boolean loc_boolean01=false
    local real loc_real01=0.2*(GetUnitState(loc_unit01,UNIT_STATE_LIFE)*0.045)
    local real loc_real02=0.2*(GetUnitState(loc_unit01,UNIT_STATE_MANA)*0.045)
    if GetTriggerEventId()==EVENT_UNIT_ISSUED_ORDER then
        if GetIssuedOrderId()==String2OrderIdBJ("manashieldon")then
            call Func4082(loc_unit01,loc_integer03)
        elseif GetIssuedOrderId()==String2OrderIdBJ("manashieldoff")then
            call Func4080(loc_unit01)
        endif
    endif
    if GetUnitAbilityLevel(loc_unit01,'A1TS')>0 or GetUnitAbilityLevel(loc_unit01,'A1TR')>0 or GetUnitAbilityLevel(loc_unit01,'A1TT')>0 or GetUnitAbilityLevel(loc_unit01,'A1TP')>0 then
        set loc_boolean01=true
        call SetUnitState(loc_unit01,UNIT_STATE_LIFE,RMaxBJ(GetUnitState(loc_unit01,UNIT_STATE_LIFE)-loc_real01,1))
        call SetUnitState(loc_unit01,UNIT_STATE_MANA,RMaxBJ(GetUnitState(loc_unit01,UNIT_STATE_MANA)-loc_real02,1))
    endif
    if loc_unit03==null then
        if loc_unit02!=null then
            call Func4080(loc_unit02)
            set loc_unit02=null
            call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
        endif
    else
        if loc_unit02==null then
            set loc_unit02=loc_unit03
            if loc_boolean01 then
                call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
                call Func4082(loc_unit02,loc_integer03)
            else
                call Func4080(loc_unit02)
            endif
        elseif loc_unit02!=loc_unit03 then
            call Func4080(loc_unit02)
            if loc_boolean01 then
                set loc_unit02=loc_unit03
                call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
                call Func4082(loc_unit02,loc_integer03)
            endif
        elseif loc_boolean01==false then
            call Func4080(loc_unit02)
        elseif loc_unit02==loc_unit03 then
            if loc_boolean01 then
                set loc_unit02=loc_unit03
                call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
                call Func4082(loc_unit02,loc_integer03)
            endif
        endif
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction

// 85084 ~ 85096
function Func4084 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=GetUnitAbilityLevel(loc_unit01,'A28Q')
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(null))
    call TriggerRegisterTimerEvent(loc_trigger01,0.2,true)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_ISSUED_ORDER)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4083))
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 85098 ~ 85103
function Func4085 takes nothing returns boolean
    if GetLearnedSkill()=='A28Q' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A28Q')==1 then
        call Func4084()
    endif
    return false
endfunction

// 85105 ~ 85110
function Func4086 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func4085))
    set loc_trigger01=null
endfunction
