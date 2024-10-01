
// 50745 ~ 50752
function Func2173 takes nothing returns boolean
    if(GetUnitTypeId((GetFilterUnit()))=='u009')or(Func0098(GetFilterUnit())==false and IsUnitVisible(GetFilterUnit(),GetOwningPlayer(unit124))and IsUnitEnemy(unit124,GetOwningPlayer(GetFilterUnit()))and(GetUnitAbilityLevel(GetFilterUnit(),'A04R')==0 and IsUnitType(GetFilterUnit(),UNIT_TYPE_STRUCTURE)==false and Func0194(GetFilterUnit())==false)and(IsUnitType(GetFilterUnit(),UNIT_TYPE_ANCIENT)==false or Func0286(GetFilterUnit())))then
        if(LoadInteger(hashtable001,(integer478),(GetHandleId(GetFilterUnit()))))<integer022 then
            return true
        endif
    endif
    return false
endfunction

// 50754 ~ 50795
function Func2174 takes nothing returns boolean
    local trigger loc_trigger01=GetTriggeringTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local unit loc_unit01=(LoadUnitHandle(hashtable001,(loc_integer01),(14)))
    local integer loc_integer02=(LoadInteger(hashtable001,(loc_integer01),(217)))
    local integer loc_integer03=(LoadInteger(hashtable001,(loc_integer01),(216)))
    local integer loc_integer04=(LoadInteger(hashtable001,(loc_integer01),(218)))
    local group loc_group01=Func0030()
    local real loc_real01=GetUnitX(loc_unit01)
    local real loc_real02=GetUnitY(loc_unit01)
    local unit loc_unit02
    local real loc_real03=GetRandomInt(200,350)
    local real loc_real04=GetRandomInt(200,350)
    if GetRandomInt(1,2)==1 then
        set loc_real03=-1*loc_real03
        set loc_real04=-1*loc_real04
    endif
    set unit124=loc_unit01
    set integer022=loc_integer04
    set integer478=GetHandleId(loc_trigger01)
    call GroupEnumUnitsInRange(loc_group01,loc_real01,loc_real02,700,Condition(function Func2173))
    set loc_unit02=GroupPickRandomUnit(loc_group01)
    call Func0029(loc_group01)
    if Func0194(loc_unit01)==false and loc_unit02!=null and(GetUnitTypeId((loc_unit02))=='u009')==false then
        call SaveInteger(hashtable001,(integer478),(GetHandleId(loc_unit02)),((LoadInteger(hashtable001,(integer478),(GetHandleId(loc_unit02))))+1))
        call Func0161("effects\\Eclipse.mdx",loc_unit02,"origin",3)
        call Func0115(loc_unit01,loc_unit02,1,loc_integer02*75)
    elseif Func0194(loc_unit01)==false then
        set loc_real01=loc_real01+GetRandomInt(-350,350)
        set loc_real02=loc_real02+GetRandomInt(-350,350)
        call Func0163("effects\\Eclipse.mdx",loc_real01,loc_real02,1.5)
    endif
    if(GetTriggerEvalCount(loc_trigger01)+1)==loc_integer03 or Func0194(loc_unit01)==true then
        call FlushChildHashtable(hashtable001,(loc_integer01))
        call Func0035(loc_trigger01)
    endif
    set loc_trigger01=null
    set loc_unit01=null
    set loc_group01=null
    set loc_unit02=null
    return false
endfunction

// 50797 ~ 50827
function Func2175 takes nothing returns nothing
    local unit loc_unit01=GetTriggerUnit()
    local trigger loc_trigger01=CreateTrigger()
    local integer loc_integer01=GetHandleId(loc_trigger01)
    local integer loc_integer02
    local integer loc_integer03=GetUnitAbilityLevel(loc_unit01,'A042')
    local integer loc_integer04
    local unit loc_unit02=CreateUnit(GetOwningPlayer(loc_unit01),'e00E',GetUnitX(loc_unit01),GetUnitY(loc_unit01),0)
    if loc_integer03==0 and GetUnitTypeId(loc_unit01)!='E005' then
        set loc_integer03=4
    endif
    call Func0193(loc_unit02,'A1T6')
    if GetSpellAbilityId()=='A054' then
        set loc_integer02=2+3*GetUnitAbilityLevel(loc_unit01,'A054')
        set loc_integer04=4
    else
        set loc_integer02=2+4*GetUnitAbilityLevel(loc_unit01,'A00U')
        set loc_integer04=60
    endif
    call SaveInteger(hashtable001,(loc_integer01),(217),(loc_integer03))
    call SaveInteger(hashtable001,(loc_integer01),(216),(loc_integer02))
    call SaveInteger(hashtable001,(loc_integer01),(218),(loc_integer04))
    call SaveUnitHandle(hashtable001,(loc_integer01),(14),(loc_unit01))
    call TriggerRegisterTimerEvent(loc_trigger01,0.6,true)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2174))
    call TriggerEvaluate(loc_trigger01)
    call IssueImmediateOrderById(loc_unit02,852621)
    set loc_trigger01=null
    set loc_unit01=null
    set loc_unit02=null
endfunction

// 50829 ~ 50834
function Func2176 takes nothing returns boolean
    if GetSpellAbilityId()=='A054' or GetSpellAbilityId()=='A00U' then
        call Func2175()
    endif
    return false
endfunction

// 50836 ~ 50841
function Func2177 takes nothing returns nothing
    local trigger loc_trigger01=CreateTrigger()
    call Func0176(loc_trigger01,EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(loc_trigger01,Condition(function Func2176))
    set loc_trigger01=null
endfunction
