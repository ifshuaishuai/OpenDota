
// 50037 ~ 50042
function Func2131 takes nothing returns nothing
    if IsUnitInGroup(GetEnumUnit(),group002)==false then
        call GroupAddUnit(group002,GetEnumUnit())
        call SetUnitState(GetEnumUnit(),UNIT_STATE_LIFE,GetUnitState(GetEnumUnit(),UNIT_STATE_LIFE)+real009)
    endif
endfunction

// 50044 ~ 50075
function Func2132 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local group loc_group01=(LoadGroupHandle(hashtable001,(loc_integer01),(22)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(2)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(13)))
    local group loc_group02
    local real loc_real02=(LoadReal(hashtable001,(loc_integer01),(6)))
    local real loc_real03=(LoadReal(hashtable001,(loc_integer01),(7)))
    local integer loc_integer03=GetTriggerEvalCount(loc_trigger01)
    local real loc_real04=1050*0.1
    if loc_integer03>19 then
        call Func0029(loc_group01)
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    else
        set loc_real02=loc_real02+loc_integer03*loc_real04*Cos(loc_real01*bj_DEGTORAD)
        set loc_real03=loc_real03+loc_integer03*loc_real04*Sin(loc_real01*bj_DEGTORAD)
        set loc_group02=Func0030()
        set group002=loc_group01
        set unit124=loc_unit01
        set real009=(50*loc_integer02)*0.75
        call GroupEnumUnitsInRange(loc_group02,loc_real02,loc_real03,350+25,Condition(function Func0332))
        call ForGroup(loc_group02,function Func2131)
        call Func0029(loc_group02)
    endif
    set loc_trigger01=null
    set loc_group01=null
    set loc_group02=null
    return false
endfunction

// 50077 ~ 50092
function Func2133 takes unit loc_unit01,real loc_real01,real loc_real02,real loc_real03,real loc_real04,integer loc_integer01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    local group loc_group01=Func0030()
    local real loc_real05=Func0169(loc_real01,loc_real02,loc_real03,loc_real04)
    call SaveInteger(hashtable001,(loc_integer02),(5),(loc_integer01))
    call SaveGroupHandle(hashtable001,(loc_integer02),(22),(loc_group01))
    call SaveReal(hashtable001,(loc_integer02),(13),((loc_real05)*1.0))
    call SaveUnitHandle(hashtable001,(loc_integer02),(2),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer02),(6),((loc_real01)*1.0))
    call SaveReal(hashtable001,(loc_integer02),(7),((loc_real02)*1.0))
    call TriggerRegisterTimerEvent(loc_trigger01,0.1,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2132))
    set loc_trigger01=null
    set loc_group01=null
endfunction

// 50094 ~ 50120
function Func2134 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(13)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local real loc_real02=GetUnitX(loc_unit01)-50*Cos(loc_real01)
    local real loc_real03=GetUnitY(loc_unit01)-50*Sin(loc_real01)
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',loc_real02,loc_real03,0)
    local real loc_real04=GetUnitX(loc_unit02)+50*Cos(loc_real01)
    local real loc_real05=GetUnitY(loc_unit02)+50*Sin(loc_real01)
    local real loc_real06=loc_real04+(300+50*loc_integer02)*Cos(loc_real01)
    local real loc_real07=loc_real05+(300+50*loc_integer02)*Sin(loc_real01)
    local unit loc_unit03=units001[GetPlayerId(GetOwningPlayer(loc_unit02))]
    call Func0193(loc_unit02,'A087')
    call SetUnitAbilityLevel(loc_unit02,'A087',loc_integer02)
    call IssuePointOrder(loc_unit02,"breathoffire",loc_real04,loc_real05)
    call KillUnit(loc_unit01)
    call FlushChildHashtable(hashtable001,(loc_integer01))
    call Func0035(loc_trigger01)
    if loc_unit03!=null and Func0124()and Func0394(loc_unit03,integers089[integer323])!=null then
        call Func2133(loc_unit03,loc_real02,loc_real03,loc_real04,loc_real05,loc_integer02)
    endif
    set loc_unit02=null
    set loc_trigger01=null
    return false
endfunction

// 50122 ~ 50131
function Func2135 takes unit loc_unit01,integer loc_integer01,real loc_real01 returns nothing
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer02=GetHandleId(loc_trigger01)
    call TriggerRegisterTimerEvent(loc_trigger01,0,false)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2134))
    call SaveUnitHandle(hashtable001,(loc_integer02),(19),(loc_unit01))
    call SaveReal(hashtable001,(loc_integer02),(13),((loc_real01)*1.0))
    call SaveInteger(hashtable001,(loc_integer02),(34),(loc_integer01))
    set loc_trigger01=null
endfunction

// 50133 ~ 50171
function Func2136 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(34)))
    local integer loc_integer03=loc_integer02-1
    local real loc_real01=(LoadReal(hashtable001,(loc_integer01),(13)))
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(19)))
    local unit loc_unit02=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(5)))
    local integer loc_integer05=2+loc_integer04*2
    local boolean loc_boolean01=(LoadBoolean(hashtable001,(loc_integer01),(240)))
    local unit loc_unit03
    if GetTriggerEventId()!=EVENT_UNIT_SPELL_ENDCAST then
        call SaveInteger(hashtable001,(loc_integer01),(34),(loc_integer02+1))
    endif
    call SetUnitScale(loc_unit01,I2R(100+20*loc_integer03)/100,I2R(100+20*loc_integer03)/100,I2R(100+20*loc_integer03)/100)
    if(GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST and loc_boolean01==false)or(GetTriggerEventId()==EVENT_UNIT_SPELL_ENDCAST and GetSpellAbilityId()=='A121')or loc_integer03==loc_integer05 then
        if loc_boolean01 then
            set loc_unit03=(LoadUnitHandle(hashtable001,(loc_integer01),(239)))
            call ShowUnit(loc_unit03,false)
            call UnitApplyTimedLife(loc_unit03,'BTLF',1)
        endif
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
        if(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(704)))==0 or(LoadInteger(hashtable001,(GetHandleId(loc_unit02)),(704)))=='A085' then
            call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A085',true)
        endif
        call SetPlayerAbilityAvailable(GetOwningPlayer(loc_unit02),'A121',false)
        call UnitRemoveAbility(loc_unit02,'A121')
        call Func2135(loc_unit01,loc_integer03,loc_real01)
    endif
    set loc_unit01=CreateUnit(GetOwningPlayer(loc_unit01),'h06M',GetUnitX(loc_unit01)+150*(loc_integer03)*Cos(loc_real01),GetUnitY(loc_unit01)+150*(loc_integer03)*Sin(loc_real01),0)
    call UnitApplyTimedLife(loc_unit01,'BTLF',7)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
    set loc_unit03=null
    return false
endfunction
