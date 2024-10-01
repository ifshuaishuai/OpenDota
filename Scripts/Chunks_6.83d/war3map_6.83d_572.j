
// 66164 ~ 66175
function Func3099 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetHandleId(loc_unit01)
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(3003)))
    local trigger loc_trigger01
    if loc_boolean01 then
        call SaveBoolean(hashtable001,(loc_integer01),(3003),(false))
        set loc_trigger01=(LoadTriggerHandle(hashtable001,(loc_integer01),(3006)))
        call FlushChildHashtable(hashtable001,(GetHandleId(loc_trigger01)))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
endfunction

// 66177 ~ 66184
function Func3100 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    call SetUnitState(loc_unit01,UNIT_STATE_LIFE,GetUnitState(loc_unit01,UNIT_STATE_LIFE)+loc_integer02*1)
    return false
endfunction

// 66186 ~ 66196
function Func3101 takes unit loc_unit01,integer loc_integer01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_unit01)
    call SaveBoolean(hashtable001,(loc_integer02),(3003),(true))
    call SaveTriggerHandle(hashtable001,(loc_integer02),(3006),(loc_trigger01))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(loc_unit01))
    call SaveInteger(hashtable001,(GetHandleId(loc_trigger01)),(5),(loc_integer01))
    call TriggerRegisterTimerEvent(loc_trigger01,1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3100))
    set loc_trigger01=null
endfunction

// 66198 ~ 66252
function Func3102 takes nothing returns nothing
    local integer loc_integer01=0
    local unit loc_unit01=GetTriggerUnit()
    local integer loc_integer02=GetHandleId(loc_unit01)
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer02),(3013)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer02),(3014)))
    local integer loc_integer05=(LoadInteger(hashtable001,(loc_integer02),(3015)))
    local integer loc_integer06=(LoadInteger(hashtable001,(loc_integer02),(3016)))
    local integer loc_integer07=(LoadInteger(hashtable001,(loc_integer02),(3017)))
    if loc_integer03==3 and loc_integer04==0 and loc_integer05==0 then
        set loc_integer01=1
    elseif loc_integer03==2 and loc_integer04==1 and loc_integer05==0 then
        set loc_integer01=2
    elseif loc_integer03==2 and loc_integer04==0 and loc_integer05==1 then
        set loc_integer01=3
    elseif loc_integer03==1 and loc_integer04==2 and loc_integer05==0 then
        set loc_integer01=4
    elseif loc_integer03==1 and loc_integer04==1 and loc_integer05==1 then
        set loc_integer01=5
    elseif loc_integer03==1 and loc_integer04==0 and loc_integer05==2 then
        set loc_integer01=6
    elseif loc_integer03==0 and loc_integer04==1 and loc_integer05==2 then
        set loc_integer01=7
    elseif loc_integer03==0 and loc_integer04==2 and loc_integer05==1 then
        set loc_integer01=8
    elseif loc_integer03==0 and loc_integer04==0 and loc_integer05==3 then
        set loc_integer01=9
    elseif loc_integer03==0 and loc_integer04==3 and loc_integer05==0 then
        set loc_integer01=10
    endif
    if integers165[loc_integer01]==loc_integer07 then
        return
    endif
    if loc_integer06!=0 and loc_integer07!=0 then
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),loc_integer06,false)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),loc_integer07,false)
        set loc_integer06=loc_integer07
        set loc_integer07=integers165[loc_integer01]
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),loc_integer06,true)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),loc_integer07,true)
    elseif loc_integer06==0 and loc_integer07!=0 then
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),loc_integer07,false)
        set loc_integer06=loc_integer07
        set loc_integer07=integers165[loc_integer01]
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),loc_integer06,true)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),loc_integer07,true)
    else
        set loc_integer07=integers165[loc_integer01]
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),loc_integer07,true)
    endif
    call SaveInteger(hashtable001,(loc_integer02),(3016),(loc_integer06))
    call SaveInteger(hashtable001,(loc_integer02),(3017),(loc_integer07))
    call Func3049(loc_unit01)
    set loc_unit01=null
endfunction

// 66254 ~ 66280
function Func3103 takes unit loc_unit01 returns nothing
    local integer loc_integer01=GetHandleId(loc_unit01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(3013)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(3014)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(3015)))
    local integer loc_integer05=GetUnitAbilityLevel(loc_unit01,'A21X')
    local integer loc_integer06=GetUnitAbilityLevel(loc_unit01,'A21W')
    local integer loc_integer07=GetUnitAbilityLevel(loc_unit01,'A21V')
    call UnitRemoveAbility(loc_unit01,'A0WD')
    call UnitRemoveAbility(loc_unit01,'A0VE')
    call Func3099(loc_unit01)
    call UnitRemoveAbility(loc_unit01,'A0V7')
    if loc_integer02>0 then
        call Func0193(loc_unit01,'A0WD')
        call Func0193(loc_unit01,'A0VE')
        call SetUnitAbilityLevel(loc_unit01,'A0WD',loc_integer02*loc_integer05)
        call SetUnitAbilityLevel(loc_unit01,'A0VE',loc_integer02*loc_integer05)
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit01),'A0WD',false)
    endif
    if loc_integer03>0 then
        call Func3101(loc_unit01,loc_integer03*loc_integer06)
    endif
    if loc_integer04>0 then
        call Func0193(loc_unit01,'A0V7')
        call SetUnitAbilityLevel(loc_unit01,'A0V7',loc_integer04*loc_integer07)
    endif
endfunction
