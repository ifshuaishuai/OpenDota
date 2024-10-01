
// 80629 ~ 80665
function Func3908 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(422)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(423)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(424)))
    if GetTriggerEventId()==EVENT_UNIT_DEATH then
        if(LoadBoolean(hashtable001,(loc_integer01),(276)))==false and GetTriggerUnit()==loc_unit01 then
            call SaveBoolean(hashtable001,(loc_integer01),(276),(true))
            call SetHeroAgi(loc_unit01,GetHeroAgi(loc_unit01,false)-loc_integer02-loc_integer03-loc_integer04,true)
        elseif(LoadBoolean(hashtable001,(loc_integer01),(277)))==false and GetTriggerUnit()==loc_unit02 then
            call SaveBoolean(hashtable001,(loc_integer01),(277),(true))
            call SetHeroAgi(loc_unit02,GetHeroAgi(loc_unit02,false)+loc_integer02,true)
            call SetHeroStr(loc_unit02,GetHeroStr(loc_unit02,false)+loc_integer03,true)
            call SetHeroInt(loc_unit02,GetHeroInt(loc_unit02,false)+loc_integer04,true)
        endif
    else
        if(LoadBoolean(hashtable001,(loc_integer01),(276)))==false then
            call SaveBoolean(hashtable001,(loc_integer01),(276),(true))
            call SetHeroAgi(loc_unit01,GetHeroAgi(loc_unit01,false)-loc_integer02-loc_integer03-loc_integer04,true)
        endif
        if(LoadBoolean(hashtable001,(loc_integer01),(277)))==false then
            call SaveBoolean(hashtable001,(loc_integer01),(277),(true))
            call SetHeroAgi(loc_unit02,GetHeroAgi(loc_unit02,false)+loc_integer02,true)
            call SetHeroStr(loc_unit02,GetHeroStr(loc_unit02,false)+loc_integer03,true)
            call SetHeroInt(loc_unit02,GetHeroInt(loc_unit02,false)+loc_integer04,true)
        endif
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 80667 ~ 80714
function Func3909 takes unit loc_unit01,unit loc_unit02 returns nothing
    local integer loc_integer01=GetUnitAbilityLevel(loc_unit01,'A1HR')
    local integer loc_integer02=Func0045(loc_unit02)
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer03=GetHandleId(loc_trigger01)
    local integer loc_integer04
    local integer loc_integer05
    local integer loc_integer06
    local real loc_real01
    if loc_integer02==2 then
        set loc_integer04=IMinBJ(GetHeroAgi(loc_unit02,false)-1,1)
        set loc_integer05=IMinBJ(GetHeroStr(loc_unit02,false)-1,1)
        set loc_integer06=IMinBJ(GetHeroInt(loc_unit02,false)-1,1)
    elseif loc_integer02==3 then
        set loc_integer04=IMinBJ(GetHeroAgi(loc_unit02,false)-1,1)
        set loc_integer05=IMinBJ(GetHeroStr(loc_unit02,false)-1,1)
        set loc_integer06=IMinBJ(GetHeroInt(loc_unit02,false)-1,1)
    elseif loc_integer02==1 then
        set loc_integer04=IMinBJ(GetHeroAgi(loc_unit02,false)-1,1)
        set loc_integer05=IMinBJ(GetHeroStr(loc_unit02,false)-1,1)
        set loc_integer06=IMinBJ(GetHeroInt(loc_unit02,false)-1,1)
    endif
    call SetHeroAgi(loc_unit01,GetHeroAgi(loc_unit01,false)+loc_integer04+loc_integer06+loc_integer05,true)
    call SetHeroAgi(loc_unit02,GetHeroAgi(loc_unit02,false)-loc_integer04,true)
    call SetHeroStr(loc_unit02,GetHeroStr(loc_unit02,false)-loc_integer05,true)
    call SetHeroInt(loc_unit02,GetHeroInt(loc_unit02,false)-loc_integer06,true)
    call SaveInteger(hashtable001,(loc_integer03),(422),(loc_integer04))
    call SaveInteger(hashtable001,(loc_integer03),(424),(loc_integer06))
    call SaveInteger(hashtable001,(loc_integer03),(423),(loc_integer05))
    call SaveUnitHandle(hashtable001,(loc_integer03),(2),(loc_unit01))
    call SaveUnitHandle(hashtable001,(loc_integer03),(17),(loc_unit02))
    call SaveBoolean(hashtable001,(loc_integer03),(276),(false))
    call SaveBoolean(hashtable001,(loc_integer03),(277),(false))
    if loc_integer01==1 then
        set loc_real01=15
    elseif loc_integer01==2 then
        set loc_real01=30
    elseif loc_integer01==3 then
        set loc_real01=60
    elseif loc_integer01==4 then
        set loc_real01=120
    endif
    call TriggerRegisterTimerEvent(loc_trigger01,loc_real01,false)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3908))
    set loc_trigger01=null
endfunction

// 80716 ~ 80730
function Func3910 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    if GetTriggerEventId()!=EVENT_UNIT_DEATH then
        call Func3909(loc_unit01,loc_unit02)
    endif
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    return false
endfunction

// 80732 ~ 80762
function Func3911 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(30)))
    local unit loc_unit01=Func0022(loc_integer02)
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    if GetTriggerEventId()==EVENT_UNIT_DAMAGED then
        if GetEventDamageSource()==loc_unit02 then
            call DisableTrigger(loc_trigger01)
            call Func0021(loc_integer02)
            call FlushChildHashtable(hashtable001,(loc_integer01))
            call Func0035(loc_trigger01)
            set loc_trigger01=CreateTrigger()
            set loc_integer01=GetHandleId(loc_trigger01)
            call TriggerRegisterTimerEvent(loc_trigger01,0.01,false)
            call TriggerAddCondition(loc_trigger01,Condition(function Func3910))
            call TriggerRegisterUnitEvent(loc_trigger01,loc_unit02,EVENT_UNIT_DEATH)
            call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DEATH)
            call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
            call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit01))
        endif
    else
        call Func0021(loc_integer02)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit02=null
    set loc_unit01=null
    return false
endfunction

// 80764 ~ 80777
function Func3912 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local unit loc_unit01=GetTriggerUnit()
    local unit loc_unit02=GetAttacker()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    call TriggerRegisterUnitEvent(loc_trigger01,loc_unit01,EVENT_UNIT_DAMAGED)
    call TriggerRegisterTimerEvent(loc_trigger01,1,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3911))
    call SaveInteger(hashtable001,(loc_integer01),(30),(Func0024(loc_unit01)))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(loc_unit02))
    set loc_unit01=null
    set loc_unit02=null
    set loc_trigger01=null
endfunction

// 80779 ~ 80785
function Func3913 takes nothing returns nothing
    local unit loc_unit01=GetAttacker()
    if((LoadInteger(hashtable001,(GetHandleId((loc_unit01))),((4274))))==1)==false then
        call Func0044(loc_unit01,4274,0.45-GetUnitAbilityLevel(GetAttacker(),'A1HR')*0.05)
        call Func3912()
    endif
endfunction

// 80787 ~ 80792
function Func3914 takes nothing returns boolean
    if GetUnitAbilityLevel(GetAttacker(),'A1HR')>0 and IsUnitType(GetTriggerUnit(),UNIT_TYPE_HERO)==true and IsUnitType(GetTriggerUnit(),UNIT_TYPE_STRUCTURE)==false and GetAttacker()==(LoadUnitHandle(hashtable001,(GetHandleId(GetTriggeringTrigger())),(14)))and GetUnitTypeId(GetTriggerUnit())!='n00L' and IsUnitEnemy(GetTriggerUnit(),GetOwningPlayer(GetAttacker()))then
        call Func3913()
    endif
    return false
endfunction

// 80794 ~ 80806
function Func3915 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_ATTACKED)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3914))
    call SaveUnitHandle(hashtable001,(GetHandleId(loc_trigger01)),(14),(GetTriggerUnit()))
    set loc_trigger01=CreateTrigger()
    set loc_integer01=GetHandleId(loc_trigger01)
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_DEATH)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3907))
    call SaveUnitHandle(hashtable001,(loc_integer01),(2),(GetTriggerUnit()))
    set loc_trigger01=null
endfunction

// 80808 ~ 80813
function Func3916 takes nothing returns boolean
    if GetLearnedSkill()=='A1HR' and IsUnitIllusion(GetTriggerUnit())==false and GetUnitAbilityLevel(GetTriggerUnit(),'A1HR')==1 then
        call Func3915()
    endif
    return false
endfunction

// 80815 ~ 80820
function Func3917 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_HERO_SKILL)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3916))
    set loc_trigger01=null
endfunction
