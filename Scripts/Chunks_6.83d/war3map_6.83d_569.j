
// 65875 ~ 65884
function Func3082 takes unit loc_unit01 returns nothing
    call UnitRemoveAbility(loc_unit01,'A230')
    call UnitRemoveAbility(loc_unit01,'A22Z')
    call UnitRemoveAbility(loc_unit01,'A22Y')
    call UnitRemoveAbility(loc_unit01,'A22U')
    call UnitRemoveAbility(loc_unit01,'A22V')
    call UnitRemoveAbility(loc_unit01,'A22W')
    call UnitRemoveAbility(loc_unit01,'A22X')
    call UnitRemoveAbility(loc_unit01,'B08Z')
endfunction

// 65886 ~ 65899
function Func3083 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(17)))
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit01)),(681)))
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    if GetTriggerEventId()==EVENT_WIDGET_DEATH or loc_real01<(TimerGetElapsed(timer001))then
        call Func3082(loc_unit01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 65901 ~ 65917
function Func3084 takes nothing returns nothing
    local unit loc_unit01=unit124
    local unit loc_unit02=GetEnumUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local real loc_real01=(LoadReal(hashtable001,(GetHandleId(loc_unit02)),(681)))
    if loc_real01<(TimerGetElapsed(timer001))then
        call Func0193(loc_unit02,Func3081(loc_unit01))
    endif
    call SaveReal(hashtable001,(GetHandleId(loc_unit02)),(681),(((TimerGetElapsed(timer001))+2)*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer01),(17),(loc_unit02))
    call TriggerRegisterTimerEvent(loc_trigger01,2.01,false)
    call TriggerRegisterDeathEvent(loc_trigger01,loc_unit02)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3083))
    set loc_trigger01=null
    set loc_unit01=null
endfunction

// 65919 ~ 65956
function Func3085 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(7)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(137)))
    local real loc_real04=(LoadReal(hashtable001,(loc_integer01),(57)))
    local real loc_real05
    local real loc_real06
    local integer loc_integer02=1
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    local group loc_group01
    if loc_integer03*0.1>loc_real04 then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_group01=Func0030()
        set unit124=loc_unit01
        loop
            exitwhen loc_integer02>7
            set loc_real05=loc_real01+80*loc_integer02*Cos((loc_real03+90)*bj_DEGTORAD)
            set loc_real06=loc_real02+80*loc_integer02*Sin((loc_real03+90)*bj_DEGTORAD)
            call GroupEnumUnitsInRange(loc_group01,loc_real05,loc_real06,105,Condition(function Func0313))
            call ForGroup(loc_group01,function Func3084)
            set loc_real05=loc_real01+80*loc_integer02*Cos((loc_real03-90)*bj_DEGTORAD)
            set loc_real06=loc_real02+80*loc_integer02*Sin((loc_real03-90)*bj_DEGTORAD)
            call GroupEnumUnitsInRange(loc_group01,loc_real05,loc_real06,105,Condition(function Func0313))
            call ForGroup(loc_group01,function Func3084)
            set loc_integer02=loc_integer02+1
        endloop
        call Func0029(loc_group01)
        set loc_group01=null
    endif
    set loc_trigger01=null
    set loc_unit01=null
    return false
endfunction

// 65958 ~ 66002
function Func3086 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local real loc_real01=GetUnitFacing(loc_unit01)
    local integer loc_integer01=1
    local unit loc_unit02
    local real loc_real02
    local real loc_real03
    local real loc_real04=GetUnitX(loc_unit01)+225*Cos(loc_real01*bj_DEGTORAD)
    local real loc_real05=GetUnitY(loc_unit01)+225*Sin(loc_real01*bj_DEGTORAD)
    local integer loc_integer02=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3001)))
    local integer loc_integer03=(LoadInteger(hashtable001,(GetHandleId(loc_unit01)),(3002)))
    local real loc_real06=1.5+1.5*loc_integer02
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer04=GetHandleId(loc_trigger01)
    loop
        exitwhen loc_integer01>7
        set loc_real02=loc_real04+80*loc_integer01*Cos((loc_real01+90)*bj_DEGTORAD)
        set loc_real03=loc_real05+80*loc_integer01*Sin((loc_real01+90)*bj_DEGTORAD)
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'u00O',loc_real02,loc_real03,GetRandomReal(0,360))
        call SetUnitAbilityLevel(loc_unit02,'S00H',loc_integer02)
        call SetUnitAbilityLevel(loc_unit02,'A0XN',loc_integer03)
        call SetUnitAnimation(loc_unit02,"birth")
        call QueueUnitAnimation(loc_unit02,"stand")
        call UnitApplyTimedLife(loc_unit02,'BTLF',loc_real06)
        set loc_real02=loc_real04+80*loc_integer01*Cos((loc_real01-90)*bj_DEGTORAD)
        set loc_real03=loc_real05+80*loc_integer01*Sin((loc_real01-90)*bj_DEGTORAD)
        set loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'u00O',loc_real02,loc_real03,GetRandomReal(0,360))
        call SetUnitAbilityLevel(loc_unit02,'S00H',loc_integer02)
        call SetUnitAbilityLevel(loc_unit02,'A0XN',loc_integer03)
        call SetUnitAnimation(loc_unit02,"birth")
        call QueueUnitAnimation(loc_unit02,"stand")
        call UnitApplyTimedLife(loc_unit02,'BTLF',loc_real06)
        set loc_integer01=loc_integer01+1
    endloop
    call TriggerAddCondition(loc_trigger01,Condition(function Func3085))
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call SaveReal(hashtable001,(loc_integer04),(6),((loc_real04)*1.0))
    call SaveReal(hashtable001,(loc_integer04),(7),((loc_real05)*1.0))
    call SaveReal(hashtable001,(loc_integer04),(137),((loc_real01)*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer04),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer04),(57),((loc_real06)*1.0))
    set loc_unit02=null
    set loc_unit01=null
    set loc_trigger01=null
endfunction

// 66004 ~ 66009
function Func3087 takes nothing returns boolean
    if GetSpellAbilityId()=='A0VP' then
        call Func3086()
    endif
    return false
endfunction

// 66011 ~ 66018
function Func3088 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func3087))
    call Func0134('S00H',GetRandomReal(1,25))
    call Func0134('A0XN',GetRandomReal(1,25))
    set loc_trigger01=null
endfunction
